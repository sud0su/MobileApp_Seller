import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seller_app/data/model/category_model.dart';
import 'package:seller_app/logic/bloc/category/category_bloc.dart';
import 'package:seller_app/logic/bloc/category/catselect/catselect_bloc.dart';
import 'package:seller_app/logic/cubit/authentication/authentication_cubit.dart';
import 'package:seller_app/screens/widgets/bottomsheet_widget.dart';
import 'package:seller_app/screens/widgets/dialog_widget.dart';
import 'package:seller_app/screens/widgets/textfield_widget.dart';
import 'package:seller_app/utils/validator.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: BlocProvider.of<CategoryBloc>(context),
        ),
        BlocProvider.value(
          value: BlocProvider.of<CatselectBloc>(context),
        ),
      ],
      child: CategoryWidget(),
    );
  }
}

class CategoryWidget extends StatefulWidget {
  @override
  _CategoryWidgetState createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  final TextEditingController _category = TextEditingController();

  List _selectedList = [];
  List _selectedListNameCat = [];

  @override
  Widget build(BuildContext context) {
    String uid = context.select((AuthenticationCubit authCubit) =>
        authCubit.state.maybeWhen(orElse: () => "", isLoggedIn: (a) => a.uid));

    return BlocListener<CategoryBloc, CategoryState>(
      listener: (context, state) {
        state.maybeMap(
          orElse: () {},
          isLoading: (_) => showCustomDialog(context, "Loading ...", "loading"),
          isError: (e) {
            Navigator.pop(context, 'load');
            showCustomDialog(context, e.errorMessage, "error");
          },
          isOpenSheet: (e) {
            showWidgetBottomSheet(
              context: context,
              isScrollControlled: true,
              child: BlocProvider.value(
                value: BlocProvider.of<CategoryBloc>(context),
                child: Column(
                  children: [
                    buildRowAddCategory(context, uid),
                    SizedBox(
                      height: 10.0,
                    ),
                    buildCheckBoxList(uid),
                    buildRowSubmit(context),
                  ],
                ),
              ),
            );
          },
        );
      },
      child: buildPaddingContentCategory(context, uid),
    );
  }

  Padding buildPaddingContentCategory(BuildContext context, String uid) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
      child: GestureDetector(
        onTap: () {
          context
              .read<CategoryBloc>()
              .add(CategoryEvent.isOpenBottomSheet(uid));
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.grey.withOpacity(0.5)),
            borderRadius: BorderRadius.circular(8.0),
            color: Colors.white,
          ),
          child: BlocBuilder<CatselectBloc, CatselectState>(
            builder: (context, state) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  state.maybeMap(
                    orElse: () {
                      return Text(
                        "Kategori Barang",
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                        ),
                      );
                    },
                    isLoading: (e) {
                      return CircularProgressIndicator();
                    },
                    isSuccess: (e) {
                      if (e.selectedCatName.length == 0) {
                        return Text(
                          "Kategori Barang",
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                          ),
                        );
                      } else {
                        return SizedBox(
                          width: MediaQuery.of(context).size.width * 0.75,
                          child: Text(
                            e.selectedCatName
                                .toString()
                                .replaceAll('[', '')
                                .replaceAll(']', ''),
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        );
                      }
                    },
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  BlocBuilder<CategoryBloc, CategoryState> buildCheckBoxList(String uid) {
    return BlocBuilder<CategoryBloc, CategoryState>(
      builder: (context, state) {
        return StatefulBuilder(
          builder: (_, StateSetter stateSetter) {
            return Container(
              height: MediaQuery.of(context).size.height * 0.4,
              child: state.maybeMap(
                orElse: () {},
                isLoading: (e) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                },
                isSuccess: (e) {
                  if (e.categoryModel.length == 0) {
                    return Center(
                      child: Text(
                        "Tidak ada data.",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  } else {
                    return ListView.builder(
                      itemCount: e.categoryModel.length,
                      itemBuilder: (_, index) {
                        return CheckboxListTile(
                          title: new Text(e.categoryModel[index].category),
                          onChanged: (bool? value) {
                            if (_selectedList
                                .contains(e.categoryModel[index].uid)) {
                              stateSetter(() {
                                _selectedList
                                    .remove(e.categoryModel[index].uid);
                                _selectedListNameCat
                                    .remove(e.categoryModel[index].category);
                              });
                            } else {
                              stateSetter(() {
                                _selectedList.add(e.categoryModel[index].uid);
                                _selectedListNameCat
                                    .add(e.categoryModel[index].category);
                              });
                            }
                          },
                          value: _selectedList
                              .contains(e.categoryModel[index].uid),
                          secondary: buildPopupMenuButton(
                              e.categoryModel, index, context, uid),
                          controlAffinity: ListTileControlAffinity.leading,
                        );
                      },
                    );
                  }
                },
              ),
            );
          },
        );
      },
    );
  }

  Row buildRowSubmit(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextButton.icon(
          onPressed: () {
            context.read<CatselectBloc>().add(CatselectEvent.eCatSelected(
                _selectedListNameCat, _selectedList));
            Navigator.pop(context, true);
          },
          icon: Icon(Icons.check_box_outlined),
          label: Text("Pilih dan Tutup"),
        ),
      ],
    );
  }

  Row buildRowAddCategory(BuildContext context, String uid) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          "Kategori Produk",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
        ElevatedButton.icon(
          onPressed: () {
            showDialog(
              context: context,
              builder: (_) => AlertDialog(
                title: Text('Tambah Kategori'),
                content: IconTextField(
                  autoFocus: true,
                  controller: _category,
                  iconPrefix: Icons.library_books_outlined,
                  labelText: "Nama Kategori",
                  keyboardType: TextInputType.text,
                  validator: Validator().required,
                ),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      _category.clear();
                      Navigator.pop(context, 'Cancel');
                    },
                    child: Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () {
                      context
                          .read<CategoryBloc>()
                          .add(CategoryEvent.addCategory(uid, _category.text));
                      _category.clear();
                      Navigator.pop(context, 'Simpan');
                    },
                    child: Text('Simpan'),
                  ),
                ],
              ),
            );
          },
          icon: Icon(Icons.add),
          label: Text("Tambah Kategori"),
        ),
      ],
    );
  }

  PopupMenuButton<String> buildPopupMenuButton(List<CategoryModel> _getList,
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
          _category.text = _getList[index].category;
          showDialog<String>(
            context: context,
            builder: (_) => AlertDialog(
              title: Text('Edit Kategori'),
              content: IconTextField(
                autoFocus: true,
                controller: _category,
                iconPrefix: Icons.library_books_outlined,
                labelText: "Nama Kategori",
                keyboardType: TextInputType.text,
                validator: Validator().required,
              ),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    _category.clear();
                    Navigator.pop(context, 'Cancel');
                  },
                  child: Text('Cancel'),
                ),
                TextButton(
                  onPressed: () async {
                    context.read<CategoryBloc>().add(CategoryEvent.upCategory(
                        uid, _getList[index].uid, _category.text));
                    _category.clear();
                    Navigator.pop(context, 'Update');
                  },
                  child: Text('Update'),
                ),
              ],
            ),
          );
        } else if (selectedItem == 'delete') {
          context
              .read<CategoryBloc>()
              .add(CategoryEvent.delCategory(uid, _getList[index].uid));
        }
      },
    );
  }
}
