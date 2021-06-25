import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:seller_app/common/localizations.dart';
import 'package:seller_app/common/path.dart';
import 'package:seller_app/data/model/product_model.dart';
import 'package:seller_app/logic/bloc/product/filter/filteredproduct_bloc.dart';
import 'package:seller_app/logic/bloc/product/product_bloc.dart';
import 'package:seller_app/logic/cubit/authentication/authentication_cubit.dart';
import 'package:seller_app/screens/widgets/noimageload_widget.dart';
import 'package:seller_app/screens/widgets/shimmer/produk_list_shimmer.dart';
import 'package:shimmer/shimmer.dart';

class ProductListScreen extends StatelessWidget {
  final String view;
  const ProductListScreen({Key? key, required this.view}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _ProductListScreen(view: view);
  }
}

class _ProductListScreen extends StatelessWidget {
  final String view;
  const _ProductListScreen({Key? key, required this.view}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String uid = context.select((AuthenticationCubit authCubit) =>
        authCubit.state.maybeWhen(orElse: () => "", isLoggedIn: (a) => a.uid));
    return BlocBuilder<FilteredproductBloc, FilteredproductState>(
      builder: (context, state) {
        return Container(
          child: state.maybeMap(
            orElse: () => Center(child: Text("Error loading data")),
            isLoading: (e) => _ProductShimmer(),
            isLoaded: (e) => e.filteredProduct.length == 0
                ? SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 100.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            '${FilePath.iconAssets}nodata.png',
                            scale: 3,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "Tidak ada data",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                : _ProductList(
                    uid: uid,
                    productstate: e.filteredProduct,
                    view: view,
                  ),
          ),
        );
      },
    );
  }

  Widget _ProductShimmer() {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Shimmer.fromColors(
            child: ProdukListShimmer(),
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.white,
            period: Duration(milliseconds: 1500),
          );
        },
        childCount: 8,
      ),
    );
  }
}

class _ProductList extends StatefulWidget {
  final String uid;

  final String view;
  final List<ProductModel> productstate;

  _ProductList({
    Key? key,
    required this.uid,
    required this.productstate,
    required this.view,
  }) : super(key: key);

  @override
  __ProductListState createState() => __ProductListState();
}

class __ProductListState extends State<_ProductList> {
  final _formatCurrency = new NumberFormat.currency(
      locale: 'id_ID', symbol: 'Rp ', decimalDigits: 0);

  List _selectedList = [];
  // List _selectedListNameCat = [];

  @override
  Widget build(BuildContext context) {
    return widget.view == 'list'
        ? _ListProductView(
            formatCurrency: _formatCurrency,
            prodstate: widget.productstate,
            uid: widget.uid,
            selectedList: _selectedList,
          )
        : _ColumnProductView(
            formatCurrency: _formatCurrency,
            prodstate: widget.productstate,
            uid: widget.uid,
          );
  }
}

class _ListProductView extends StatelessWidget {
  const _ListProductView({
    Key? key,
    required NumberFormat formatCurrency,
    required this.prodstate,
    required this.uid,
    required this.selectedList,
  })   : _formatCurrency = formatCurrency,
        super(key: key);

  final NumberFormat _formatCurrency;
  final List<ProductModel> prodstate;
  final List selectedList;
  final String uid;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return ListTile(
            leading: CachedNetworkImage(
              imageUrl: prodstate[index].thumbnail,
              imageBuilder: (context, imageProvider) => Container(
                width: 60.0,
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              placeholder: (context, url) => CupertinoActivityIndicator(),
              errorWidget: (context, url, error) => Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5.0),
                      topRight: Radius.circular(5.0)),
                ),
                child: SmallNoImage(),
              ),
            ),
            title: Text(
              prodstate[index].nameBarang,
              maxLines: 2,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
              overflow: TextOverflow.fade,
            ),
            subtitle: RichText(
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: [
                  TextSpan(
                    text:
                        '${_formatCurrency.format(prodstate[index].hargaBarang)}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: '\nBerat ' +
                        prodstate[index].beratBarang.toString() +
                        ' gram',
                  ),
                ],
              ),
            ),
            trailing:
                buildPopupMenuButton(this.prodstate, index, context, this.uid),
            isThreeLine: true,
          );
        },
        childCount: prodstate.length,
      ),
    );
  }

  PopupMenuButton<String> buildPopupMenuButton(List<ProductModel> prodstate,
      int index, BuildContext context, String uid) {
    return PopupMenuButton(
      icon: Icon(
        Icons.more_vert,
        size: 30,
      ),
      itemBuilder: (_) {
        return <PopupMenuItem<String>>[
          new PopupMenuItem(
            child: Text('Edit'),
            value: 'edit',
          ),
          new PopupMenuItem(
            child: Text('Hapus'),
            value: 'delete',
          )
        ];
      },
      onSelected: (selectedItem) async {
        if (selectedItem == 'edit') {
          // showDialog(
          //   context: context,
          //   builder: (_) => Dialog(
          //     shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(5.0)),
          //     child: MultiBlocProvider(
          //       providers: [
          //         BlocProvider.value(
          //             value: BlocProvider.of<CatselectBloc>(context)),
          //         BlocProvider.value(
          //             value: BlocProvider.of<CategoryBloc>(context)),
          //       ],
          //       child: ProductFormEdit(prodstate[index], selectedList),
          //     ),
          //   ),
          // );
        } else if (selectedItem == 'delete') {
          context
              .read<ProductBloc>()
              .add(ProductEvent.eDelProduct(prodstate[index].uid));
        }
      },
    );
  }
}

class _ColumnProductView extends StatelessWidget {
  const _ColumnProductView({
    Key? key,
    required NumberFormat formatCurrency,
    required this.prodstate,
    required this.uid,
  })   : _formatCurrency = formatCurrency,
        super(key: key);

  final NumberFormat _formatCurrency;
  final List<ProductModel> prodstate;
  final String uid;

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CachedNetworkImage(
                  imageUrl: prodstate[index].thumbnail,
                  imageBuilder: (context, imageProvider) => Container(
                    width: double.infinity,
                    height: 80.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  placeholder: (context, url) => CupertinoActivityIndicator(),
                  errorWidget: (context, url, error) => Container(
                    width: double.infinity,
                    height: 80.0,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5.0),
                          topRight: Radius.circular(5.0)),
                    ),
                    child: SmallNoImage(),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5.0),
                  child: Column(
                    children: [
                      Text(
                        prodstate[index].nameBarang,
                        maxLines: 2,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                        overflow: TextOverflow.fade,
                      ),
                      Divider(
                        indent: 5,
                        endIndent: 5,
                      ),
                      RichText(
                        text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: [
                            TextSpan(
                              text:
                                  '${_formatCurrency.format(prodstate[index].hargaBarang)}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: '\nBerat ' +
                                  prodstate[index].beratBarang.toString() +
                                  ' gram',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
        childCount: prodstate.length,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 2 / 3,
      ),
    );
  }
}
