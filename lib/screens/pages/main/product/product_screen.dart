import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seller_app/config/routes.dart';
import 'package:seller_app/logic/bloc/category/category_bloc.dart';
import 'package:seller_app/logic/bloc/category/catselect/catselect_bloc.dart';
import 'package:seller_app/logic/bloc/product/filter/filteredproduct_bloc.dart';
import 'package:seller_app/logic/bloc/product/product_bloc.dart';
import 'package:seller_app/logic/cubit/authentication/authentication_cubit.dart';

import 'component/filter_tab_component.dart';
import 'component/product_list_screen.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String uid = context.select((AuthenticationCubit authCubit) =>
        authCubit.state.maybeWhen(orElse: () => "", isLoggedIn: (a) => a.uid));
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CategoryBloc(),
        ),
        BlocProvider(
          create: (context) => CatselectBloc(),
        ),
        BlocProvider(
          create: (context) =>
              ProductBloc()..add(ProductEvent.eLoadProduct(uid)),
        ),
        BlocProvider(
            create: (context) =>
                FilteredproductBloc(productBloc: context.read<ProductBloc>())),
      ],
      child: _ProductScreen(),
    );
  }
}

class _ProductScreen extends StatefulWidget {
  const _ProductScreen({Key? key}) : super(key: key);

  @override
  __ProductScreenState createState() => __ProductScreenState();
}

class __ProductScreenState extends State<_ProductScreen> {
  String _view = 'list';

  @override
  Widget build(BuildContext context) {
    int _totalproduk = context.select(
      (FilteredproductBloc prod) => prod.state.maybeMap(
        orElse: () => 0,
        isLoaded: (e) => e.filteredProduct.length,
      ),
    );

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text(
              "${_totalproduk.toString()} Produk",
              style: TextStyle(
                fontSize: 17.0,
              ),
            ),
            centerTitle: true,
            actions: [
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  Navigator.pushNamed(context, NavigationKey.ProductForm);
                },
              ),
            ],
            leading: Icon(
              CupertinoIcons.cube_box,
              color: Colors.white,
            ),
            pinned: true,
            floating: true,
            bottom: new PreferredSize(
              preferredSize: new Size(MediaQuery.of(context).size.width, 55.0),
              child: FilterTabFloading(
                columnView: () {
                  setState(() {
                    _view = "column";
                  });
                },
                listView: () {
                  setState(() {
                    _view = "list";
                  });
                },
                view: _view,
              ),
            ),
          ),
          ProductListScreen(
            view: _view,
          ),
        ],
      ),
    );
  }
}
