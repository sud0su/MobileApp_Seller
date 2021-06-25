import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:seller_app/data/model/product_form_model.dart';
import 'package:seller_app/screens/widgets/bottomsheet_widget.dart';
import 'package:seller_app/screens/widgets/textfield_widget.dart';
import 'package:seller_app/utils/validator.dart';

typedef OnDelete();

class AddProductForm extends StatefulWidget {
  final ProductFormModel product;
  final OnDelete onDelete;
  final state = _AddProductFormState();

  AddProductForm({Key? key, required this.product, required this.onDelete})
      : super(key: key);
  @override
  _AddProductFormState createState() => state;

  bool isValid() => state.validate();
}

class _AddProductFormState extends State<AddProductForm> {
  final form = GlobalKey<FormState>();
  double upHarga = 0.0;
  File _image = File('');

  @override
  Widget build(BuildContext context) {
    return _buildForm();
  }

  @override
  void initState() {
    super.initState();
  }

  Widget _buildForm() {
    return Container(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 0.0, top: 0.0),
      child: Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Container(
                child: Form(
                  key: form,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildColumnThumbnail(),
                      SizedBox(
                        width: 8.0,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconTextField(
                              initialValue: widget.product.nameBarang,
                              iconPrefix: Icons.label_important,
                              labelText: "Nama Barang",
                              keyboardType: TextInputType.text,
                              validator: Validator().required,
                              // onSaved: (val) =>
                              //     widget.product.copyWith(nameBarang: val!),
                              onSaved: (val) =>
                                  widget.product.nameBarang = val!,
                            ),
                            SizedBox(height: 2),
                            IconTextField(
                              iconPrefix: Icons.money,
                              labelText: "Harga Barang",
                              keyboardType: TextInputType.number,
                              validator: Validator().required,
                              onSaved: (val) =>
                                  widget.product.hargaBarang = val!,
                              onChanged: (val) {
                                if (val != '') {
                                  var get10persen = 10 * int.parse(val) / 100;
                                  setState(() {
                                    this.upHarga = int.parse(val) + get10persen;
                                  });
                                }
                              },
                            ),
                            SizedBox(height: 2),
                            Text(
                              upHarga == 0.0
                                  ? 'Harga yang ditampilkan = 0'
                                  : upHarga.toString().length > 3
                                      ? 'Harga yang ditampilkan = ' +
                                          upHarga.toStringAsFixed(0)
                                      : 'Harga yang ditampilkan = 0',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 12.0,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            SizedBox(height: 5),
                            IconTextField(
                              initialValue: widget.product.beratBarang,
                              iconPrefix: Icons.shopping_basket,
                              labelText: "Berat",
                              keyboardType: TextInputType.number,
                              validator: Validator().required,
                              onSaved: (val) =>
                                  widget.product.beratBarang = val!,
                            ),
                            SizedBox(height: 2),
                            Text(
                              "Berat dalam hitungan gram",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 12.0,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildColumnThumbnail() {
    return Column(
      children: [
        InkWell(
          onTap: () {
            showWidgetBottomSheet(
              context: context,
              isScrollControlled: true,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.2,
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 4,
                  vertical: 20.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(Icons.camera),
                          iconSize: 60.0,
                          onPressed: () {
                            getImage(ImageSource.camera).then((image) {
                              setState(() {
                                _image = image;
                              });
                              widget.product.thumbnail = this._image.path;
                            });
                            Navigator.pop(context, true);
                          },
                          color: Theme.of(context).primaryColor,
                        ),
                        Text(
                          "From Camera",
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(Icons.photo_album),
                          iconSize: 60.0,
                          onPressed: () {
                            getImage(ImageSource.gallery).then((image) {
                              setState(() {
                                _image = image;
                              });
                              widget.product.thumbnail = this._image.path;
                            });
                            Navigator.pop(context, true);
                          },
                          color: Theme.of(context).primaryColor,
                        ),
                        Text(
                          "From Gallery",
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          },
          child: SizedBox(
            height: 80,
            width: 100,
            child: Card(
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(3),
                  child: _image.path == ''
                      ? Center(
                          child: Text(
                            "Pilih Thumbnail",
                            style: TextStyle(color: Colors.grey),
                            textAlign: TextAlign.center,
                          ),
                        )
                      : Image.file(
                          _image,
                          fit: BoxFit.cover,
                        ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 25.0,
        ),
        ElevatedButton(
          onPressed: widget.onDelete,
          child: Column(
            children: [
              Icon(Icons.delete_forever),
              Text("Hapus"),
            ],
          ),
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            padding: EdgeInsets.all(15),
            primary: Colors.red,
          ),
        ),
      ],
    );
  }

  Future getImage(ImageSource imageSource) async {
    final pickedFile = await ImagePicker().getImage(source: imageSource);
    if (pickedFile != null) {
      final cropped = await ImageCropper.cropImage(
        sourcePath: pickedFile.path,
        aspectRatio: CropAspectRatio(ratioX: 16, ratioY: 9),
        compressQuality: 100,
        maxHeight: 250,
        maxWidth: 350,
        compressFormat: ImageCompressFormat.jpg,
        androidUiSettings: AndroidUiSettings(
          toolbarColor: Colors.deepOrange,
          toolbarTitle: "Crop Image",
          statusBarColor: Colors.deepOrange.shade900,
          backgroundColor: Colors.white,
        ),
        iosUiSettings: IOSUiSettings(
          minimumAspectRatio: 1.0,
        ),
      );
      if (cropped != null) {
        return File(cropped.path);
      } else {
        return null;
      }
    } else {
      return null;
    }
  }

// form validator
  bool validate() {
    var valid = form.currentState!.validate();
    if (valid) form.currentState!.save();
    return valid;
  }
}
