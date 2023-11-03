import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Datatablee(),
    );
  }));
}

class Datatablee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Datatable"),
      ),
      body: Container(color: Colors.green,
        child: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: DataTable(
            columns: [
              DataColumn(
                  label: Text(
                "Name",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
              )),
              DataColumn(
                  label: Text(
                "Age",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
              )),
              DataColumn(
                  label: Text(
                "Role",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
              )),
              DataColumn(
                  label: Text(
                "Salary",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
              )),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text("abc")),
                DataCell(Text("34")),
                DataCell(Text("aaaa")),
                DataCell(Text("333333")),
              ]),
              DataRow(cells: [
                DataCell(Text("abc")),
                DataCell(Text("34")),
                DataCell(Text("aaaa")),
                DataCell(Text("333333")),
              ]),
              DataRow(cells: [
                DataCell(Text("abc")),
                DataCell(Text("34")),
                DataCell(Text("aaaa")),
                DataCell(Text("333333")),
              ]),
              DataRow(cells: [
                DataCell(Text("abc")),
                DataCell(Text("34")),
                DataCell(Text("aaaa")),
                DataCell(Text("333333")),
              ]),
              DataRow(cells: [
                DataCell(Text("abc")),
                DataCell(Text("34")),
                DataCell(Text("aaaa")),
                DataCell(Text("333333")),
              ]),
              DataRow(cells: [
                DataCell(Text("abc")),
                DataCell(Text("34")),
                DataCell(Text("aaaa")),
                DataCell(Text("333333")),
              ]),
              DataRow(cells: [
                DataCell(Text("abc")),
                DataCell(Text("34")),
                DataCell(Text("aaaa")),
                DataCell(Text("333333")),
              ]),
              DataRow(cells: [
                DataCell(Text("abc")),
                DataCell(Text("34")),
                DataCell(Text("aaaa")),
                DataCell(Text("333333")),
              ]),
              DataRow(cells: [
                DataCell(Text("abc")),
                DataCell(Text("34")),
                DataCell(Text("aaaa")),
                DataCell(Text("333333")),
              ]),
              DataRow(cells: [
                DataCell(Text("abc")),
                DataCell(Text("34")),
                DataCell(Text("aaaa")),
                DataCell(Text("333333")),
              ]),
              DataRow(cells: [
                DataCell(Text("abc")),
                DataCell(Text("34")),
                DataCell(Text("aaaa")),
                DataCell(Text("333333")),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
