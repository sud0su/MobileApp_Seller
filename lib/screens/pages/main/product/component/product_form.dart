import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seller_app/data/model/product_form_model.dart';
import 'package:seller_app/logic/bloc/category/category_bloc.dart';
import 'package:seller_app/logic/bloc/category/catselect/catselect_bloc.dart';
import 'package:seller_app/logic/bloc/product/product_bloc.dart';
import 'package:seller_app/logic/cubit/authentication/authentication_cubit.dart';
import 'package:seller_app/screens/widgets/dialog_widget.dart';

import 'add_form_screen.dart';
import 'category_screen.dart';

class ProductForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CatselectBloc(),
        ),
        BlocProvider(
          create: (context) => CategoryBloc(),
        ),
        BlocProvider(
          create: (context) => ProductBloc(),
        )
      ],
      child: _ProductForm(),
    );
  }
}

class _ProductForm extends StatefulWidget {
  @override
  __ProductFormState createState() => __ProductFormState();
}

class __ProductFormState extends State<_ProductForm> {
  List<AddProductForm> _productform = [];

  @override
  Widget build(BuildContext context) {
    List _selectedList = context.select<CatselectBloc, List>(
      (catselet) => catselet.state.maybeMap(
        orElse: () => [],
        isSuccess: (e) => e.selectedCatId,
      ),
    );

    String uid = context.select((AuthenticationCubit authCubit) =>
        authCubit.state.maybeWhen(orElse: () => "", isLoggedIn: (a) => a.uid));

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Tambah Produk"),
      ),
      floatingActionButton:
          buildFloatinActionButton(context, _selectedList, uid),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: BlocListener<ProductBloc, ProductState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () {},
            isSaving: (_) =>
                showCustomDialog(context, "Loading ...", "loading"),
            isSaved: (_) {
              Future.delayed(
                const Duration(milliseconds: 500),
                () {
                  Navigator.pop(context, 'load');
                  Navigator.pop(context, true);
                },
              );
            },
          );
        },
        child: SafeArea(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: MultiBlocProvider(
                  providers: [
                    BlocProvider.value(
                      value: BlocProvider.of<CatselectBloc>(context),
                    ),
                    BlocProvider.value(
                      value: BlocProvider.of<CategoryBloc>(context),
                    ),
                  ],
                  child: CategoryScreen(),
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(
                      top: 10.0, bottom: 30.0, left: 5.0, right: 5.0),
                  child: _productform.length <= 0
                      ? buildCenterNoFormAppend()
                      : SingleChildScrollView(
                          child: ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            addAutomaticKeepAlives: true,
                            itemCount: _productform.length,
                            itemBuilder: (_, i) => _productform[i],
                          ),
                        ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Center buildCenterNoFormAppend() {
    return Center(
      child: Text(
        "Silahkan memilih kategori terlebih dahulu, \n kemudian klik (+ Tambah Form) \n untuk menampilkan form input produk",
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.grey.shade700),
      ),
    );
  }

  SizedBox buildFloatinActionButton(
      BuildContext context, List selectedList, String uid) {
    return SizedBox(
      height: 50.0,
      width: MediaQuery.of(context).size.width * 0.7,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        color: Theme.of(context).primaryColor,
        elevation: 1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: 5.0,
            ),
            TextButton.icon(
              onPressed: () {
                onAddForm(selectedList);
              },
              icon: Icon(
                Icons.add,
                color: Colors.white,
              ),
              label: Text(
                "Tambah Form",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            VerticalDivider(
              color: Colors.white,
              thickness: 1,
            ),
            TextButton.icon(
              onPressed: () {
                onSave(uid, selectedList, context);
              },
              icon: Icon(
                Icons.save,
                color: Colors.white,
              ),
              label: Text(
                "Simpan",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
          ],
        ),
      ),
    );
  }

  void onAddForm(List selectedList) {
    if (selectedList.length <= 0) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text("Pemberitahuan !!"),
            content:
                new Text("Anda harus memilih kategori barang terlebih dahulu."),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: new Text("OK"),
              ),
            ],
          );
        },
      );
    } else {
      final GlobalKey _globalKey = GlobalKey();
      setState(() {
        var _prodform = ProductFormModel();
        _productform.add(AddProductForm(
          key: _globalKey,
          product: _prodform,
          onDelete: () => onDelete(_globalKey),
        ));
      });
    }
  }

  void onDelete(GlobalKey _globalKey) {
    setState(() {
      _productform.removeWhere((it) => it.key == _globalKey);
    });
  }

  void onSave(String uid, List selectedList, BuildContext context) {
    if (_productform.length > 0) {
      List allValid = [];

      _productform.forEach((form) {
        allValid.add(form.isValid());
      });

      if (!allValid.contains(false)) {
        context.read<ProductBloc>().add(ProductEvent.eIsSaving());
        _productform.forEach((dt) async {
          Map<String, dynamic> values = {
            'merchant_id': uid,
            'thumbnail': dt.product.thumbnail,
            'nameBarang': dt.product.nameBarang,
            'beratBarang': dt.product.beratBarang,
            'hargaBarang': dt.product.hargaBarang,
            'category': selectedList,
          };
          context.read<ProductBloc>().add(ProductEvent.eAddProduct(values));
        });
        context.read<ProductBloc>().add(ProductEvent.eIsSaved());
      }
    }
  }
}
