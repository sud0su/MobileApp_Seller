import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seller_app/logic/bloc/category/category_bloc.dart';
import 'package:seller_app/logic/bloc/category/catselect/catselect_bloc.dart';
import 'package:seller_app/logic/bloc/product/filter/filteredproduct_bloc.dart';
import 'package:seller_app/logic/cubit/authentication/authentication_cubit.dart';
import 'package:seller_app/screens/widgets/bottomsheet_widget.dart';
import 'package:seller_app/screens/widgets/dialog_widget.dart';

class FilterTabFloading extends StatefulWidget {
  final Function() listView;
  final Function() columnView;
  final String view;
  FilterTabFloading({
    Key? key,
    required this.listView,
    required this.columnView,
    required this.view,
  }) : super(key: key);

  @override
  _FilterTabFloadingState createState() => _FilterTabFloadingState();
}

class _FilterTabFloadingState extends State<FilterTabFloading> {
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
                    buildCheckBoxList(uid),
                    buildRowSubmit(context),
                  ],
                ),
              ),
            );
          },
        );
      },
      child: buildRowTopFilter(context, uid),
    );
  }

  Widget buildRowTopFilter(BuildContext context, String uid) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    context
                        .read<CategoryBloc>()
                        .add(CategoryEvent.isOpenBottomSheet(uid));
                  },
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                    width: MediaQuery.of(context).size.width * 0.75,
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 1, color: Colors.grey.withOpacity(0.5)),
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        BlocBuilder<CatselectBloc, CatselectState>(
                          builder: (context, state) {
                            return SizedBox(
                              width: MediaQuery.of(context).size.width * 0.55,
                              child: Text(
                                state.maybeMap(
                                  orElse: () => "Kategori Barang",
                                  isSuccess: (e) =>
                                      e.selectedCatName.length == 0
                                          ? "Kategori Barang"
                                          : e.selectedCatName
                                              .toString()
                                              .replaceAll('[', '')
                                              .replaceAll(']', ''),
                                ),
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0,
                                ),
                                overflow: TextOverflow.fade,
                              ),
                            );
                          },
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Theme.of(context).primaryColor,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: widget.columnView,
            child: Icon(
              Icons.view_module_rounded,
              size: 35.0,
              color: widget.view == 'column' ? Colors.white : Colors.grey,
            ),
          ),
          GestureDetector(
            onTap: widget.listView,
            child: Icon(
              Icons.view_list_rounded,
              size: 35.0,
              color: widget.view == 'list' ? Colors.white : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  BlocBuilder<CategoryBloc, CategoryState> buildCheckBoxList(String uid) {
    return BlocBuilder<CategoryBloc, CategoryState>(
      builder: (context, state) {
        return StatefulBuilder(
          builder: (_, StateSetter stateSetter) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: state.maybeMap(
                    orElse: () {},
                    isSuccess: (e) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Filter Data",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextButton.icon(
                            onPressed: () {
                              _selectedList.length != e.categoryModel.length
                                  ? _selectedList.length != 0
                                      ? e.categoryModel.forEach((c) {
                                          if (_selectedList.contains(c.uid)) {
                                            stateSetter(() {
                                              _selectedList.remove(c.uid);
                                              _selectedListNameCat
                                                  .remove(c.category);
                                            });
                                          }
                                          stateSetter(() {
                                            _selectedList.add(c.uid);
                                            _selectedListNameCat
                                                .add(c.category);
                                          });
                                        })
                                      : e.categoryModel.forEach((c) {
                                          stateSetter(() {
                                            _selectedList.add(c.uid);
                                            _selectedListNameCat
                                                .add(c.category);
                                          });
                                        })
                                  : stateSetter(() {
                                      _selectedList.clear();
                                      _selectedListNameCat.clear();
                                    });
                            },
                            icon: _selectedList.length == e.categoryModel.length
                                ? Icon(Icons.check_box)
                                : Icon(Icons.check_box_outline_blank),
                            label: Text("Pilih Semua"),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                Divider(
                  indent: 5,
                  endIndent: 5,
                  height: 5.0,
                ),
                state.maybeMap(
                    orElse: () => Center(
                          child: CircularProgressIndicator(),
                        ),
                    isSuccess: (e) {
                      return Container(
                        height: MediaQuery.of(context).size.height * 0.4,
                        child: ListView.builder(
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
                                    _selectedListNameCat.remove(
                                        e.categoryModel[index].category);
                                  });
                                } else {
                                  stateSetter(() {
                                    _selectedList
                                        .add(e.categoryModel[index].uid);
                                    _selectedListNameCat
                                        .add(e.categoryModel[index].category);
                                  });
                                }
                              },
                              value: _selectedList
                                  .contains(e.categoryModel[index].uid),
                              controlAffinity: ListTileControlAffinity.leading,
                            );
                          },
                        ),
                      );
                    }),
              ],
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

            context
                .read<FilteredproductBloc>()
                .add(FilteredproductEvent.eUpdateFilter(_selectedList));
            Navigator.pop(context, true);
          },
          icon: Icon(Icons.check_box_outlined),
          label: Text("Pilih dan Tutup"),
        ),
      ],
    );
  }
}
