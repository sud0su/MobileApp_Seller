import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        Container(
          child: Column(
            children: [
              ListTile(
                horizontalTitleGap: 0,
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  // radius: 14,
                  child: Icon(
                    CupertinoIcons.square_list,
                    // size: 18,
                    color: Colors.blue,
                  ),
                ),
                title: Text(
                  "Status Barang",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text("pada 04 April, 2021"),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'Pembayaran : ',
                        style: DefaultTextStyle.of(context).style,
                        children: const <TextSpan>[
                          TextSpan(
                              text: 'Selesai',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Total : ',
                        style: DefaultTextStyle.of(context).style,
                        children: const <TextSpan>[
                          TextSpan(
                              text: 'Rp. 20.000',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ExpansionTile(
                title: Text(
                  "Detail Pesanan",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Lihat detail pesanan",
                  style: TextStyle(fontSize: 13, color: Colors.grey),
                ),
                children: [
                  Text("Detail Pesanan"),
                  // ListView.builder(
                  //   shrinkWrap: true,
                  //   physics: NeverScrollableScrollPhysics(),
                  //   itemBuilder: (context, index) {
                  //     return Text("asd");
                  //   },
                  // )
                ],
              ),
              Divider(
                height: 3,
                color: Colors.grey,
              ),
              Container(
                color: Colors.grey[200],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            showCupertinoDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return buildCupertinoAlertDialog(context);
                                });
                          },
                          child: Text("Terima"),
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.blueGrey,
                            primary: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            showCupertinoDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return buildCupertinoAlertDialog(context);
                                });
                          },
                          child: Text("Tolak"),
                          style: TextButton.styleFrom(
                              primary: Colors.white,
                              backgroundColor: Colors.red),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                height: 3,
                color: Colors.grey,
              ),
            ],
          ),
        )
      ],
    );
  }

  CupertinoAlertDialog buildCupertinoAlertDialog(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text("Nama Barang"),
      content: Text("Apakah anda yakin ?"),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context, true);
          },
          child: Text("Ya"),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context, true);
          },
          child: Text("Tidak"),
        ),
      ],
    );
  }
}
