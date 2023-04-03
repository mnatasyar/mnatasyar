import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_m05/main.dart';

import 'main.dart';

void main() {
  runApp(const MyApp());
}

class TodosDetailPage extends StatelessWidget {
  final String kegiatan;
  final String keterangan;
  final String tglMulai;
  final String tglSelesai;
  final String routine;
  const TodosDetailPage(
      {super.key,
      required this.kegiatan,
      required this.keterangan,
      required this.tglMulai,
      required this.tglSelesai,
      required this.routine});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todos'),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    child: Text("1"),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        kegiatan,
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Text(keterangan),
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(color: Colors.blue),
                    child: Text(
                      routine,
                      style: TextStyle(color: Colors.white),
                    ),
                    margin: EdgeInsets.only(left: 40),
                  ),
                  Text(tglMulai),
                  Text(tglSelesai)
                ],
              )
            ],
          ),
        ]),
      ),
    );
  }
}
