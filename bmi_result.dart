import 'package:flutter/material.dart';
import 'dart:math';


class BMIResult extends StatelessWidget {

  BMIResult({@required this.nama, @required this.jenis_kelamin, @required this.tahun, @required this.tinggi_badan, @required this.berat_badan});

  final String nama;
  final String jenis_kelamin;
  final int tahun;
  final int tinggi_badan;
  final int berat_badan;
  int umur = 2020;

  @override
  Widget build(BuildContext context) {
    double bmi = berat_badan/pow(tinggi_badan/100,2);
    String cBMI;
    if (bmi>=28) cBMI="Obesitas";
    else if (bmi>=23) cBMI="Kegemukan";
    else if (bmi>=17.5) cBMI="Normal";
    else cBMI="Kurus";
    umur -= tahun;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('RESULT'),
        backgroundColor: Colors.red,
      ),
      resizeToAvoidBottomPadding: false,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    "Nama: ${nama}",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  Text(
                    "Jenis Kelamin: ${jenis_kelamin}",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  Text(
                    "Umur: ${umur}",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 70),
              child: Column(
                children: [
                  Text(
                    cBMI,
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    bmi.toStringAsFixed(2),
                    style: TextStyle(
                      fontSize: 100,
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Normal BMI Range',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '17,5 -  22.9 ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        width: double.infinity,
        height: 80,
        child: RaisedButton(

          color: Colors.green,
          child: Text('BACK',
            style: TextStyle(
              color: Colors.white,
                fontSize: 30
            ),

          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}