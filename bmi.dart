import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'bmi_result.dart';

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class InputBMI extends StatefulWidget {
  @override
  _InputBMIState createState() => _InputBMIState();
}

class _InputBMIState extends State<InputBMI> {
  TextEditingController nama =  TextEditingController();

  int tinggi = 0;
  int berat = 0;
  int tahun = 0;
  String _jk="";

  void _selectJk(String value){
    setState(() {
      _jk = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          //backgroundColor: Colors.blue[900],
          centerTitle: true,
          leading: Icon(
            Icons.menu,
            size: 30,
          ),
          backgroundColor: Colors.red,
          actions: <Widget> [
            IconButton(
              icon: Icon(Icons.account_box, size: 30,),
              onPressed: (){
                Navigator.pushNamed(context, '/profile');
              },
            )
          ],
          title: Text('MENGHITUNG BMI'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                child:
                Image.asset('assets/bmi.jpg',
                  fit: BoxFit.fitWidth,
                ),
              ),

              Container(
                margin: EdgeInsets.only(top:20),
                padding: EdgeInsets.all(10),
                child: Column(
                  children: <Widget> [
                    TextField(
                      controller: nama,
                      decoration: InputDecoration(
                        labelText: 'Nama',
                        hintText: 'Masukkan Nama',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(top:20),
                padding: EdgeInsets.all(10),
                child: Column(
                  children: <Widget> [
                    TextField(
                      onChanged: (txt) {
                        setState(() {
                          tahun = int.parse(txt);
                        });
                      },
                      keyboardType: TextInputType.number,
                      maxLength: 4,
                      decoration: InputDecoration(
                        labelText: 'Tahun Lahir',
                        hintText: 'Masukkan Tahun',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text ("Jenis Kelamin", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    RadioListTile(
                        value: "Laki - Laki",
                        title: Text("Laki - Laki"),
                        groupValue: _jk,
                        onChanged: (String value){
                          _selectJk(value);
                        }
                    ),
                    RadioListTile(
                        value: "Perempuan",
                        title: Text("Perempuan"),
                        groupValue: _jk,
                        onChanged: (String value){
                          _selectJk(value);
                        }
                    ),
                  ],
                ),
              ),

              Container(
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.all(10),
                  // color: Colors.blue[700],
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          onChanged: (txt) {
                            setState(() {
                              tinggi = int.parse(txt);
                            });
                          },
                          keyboardType: TextInputType.number,
                          maxLength: 3,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                          decoration: InputDecoration(
                              suffix: Text('cm'),

                              filled: true,
                              hintText: 'Tinggi'),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextField(
                          onChanged: (txt) {
                            setState(() {
                              berat = int.parse(txt);
                            });
                          },
                          keyboardType: TextInputType.number,
                          maxLength: 3,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                          decoration: InputDecoration(
                              suffix: Text('kg'),
                              filled: true,
                              hintText: 'Berat'),
                        ),
                      ),
                    ],
                  ),
                ),

              Container(
                margin: EdgeInsets.only(left: 10,right: 10,bottom: 20),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BMIResult(nama: nama.text, tahun: tahun, jenis_kelamin: _jk, tinggi_badan: tinggi, berat_badan: berat)),
                    );
                  },
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  color: Colors.green,
                  // textColor: Colors.white,
                  child: Text(
                    'HITUNG BMI',
                    style:
                    TextStyle(fontSize: 30, fontWeight: FontWeight.w500, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }
}