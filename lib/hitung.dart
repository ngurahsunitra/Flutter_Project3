// Nama : I Gede Ngurah Sunitra
// NIM  : 1915051028
// Kelas: PTI 4A

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenghitungNilaiMahasiswa extends StatefulWidget {
  @override
  MenghitungNilaiMahasiswaState createState() => MenghitungNilaiMahasiswaState();
}
class MenghitungNilaiMahasiswaState extends State<MenghitungNilaiMahasiswa> {
  double nilaimhs1 = 0;
  double nilaimhs2 = 0;
  double nilaimhs3 = 0;
  double nilaimhs4 = 0;
  double nilaimhs5 = 0;
  double rata = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text('Hitung Nilai Mahasiswa'),
        backgroundColor: Colors.cyan[900],
        leading: new IconButton(icon: new Icon(Icons.home, color: Colors.white)),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.add, color: Colors.white)),
        ],
      ),

      body: Form(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(''),
              TextFormField(
                decoration: new InputDecoration(
                  labelText: "Nama Mahasiswa",
                  icon: Icon(
                    Icons.people,
                    color: Colors.cyan[900],
                  ),
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                ),
              ),

              Text(''),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: new InputDecoration(
                  labelText: "Nilai 1",
                  icon: Icon(
                    Icons.book,
                    color: Colors.cyan[900],
                  ),
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                ),
                onChanged: (txt){
                  setState(() {
                    nilaimhs1= double.parse(txt);
                  });
                },
              ),

              Text(''),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: new InputDecoration(
                  labelText: "Nilai 2",
                  icon: Icon(
                    Icons.book,
                    color: Colors.cyan[900],
                  ),
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                ),
                onChanged: (txt){
                  setState(() {
                    nilaimhs2= double.parse(txt);
                  });
                },
              ),

              Text(''),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: new InputDecoration(
                  labelText: "Nilai 3",
                  icon: Icon(
                    Icons.book,
                    color: Colors.cyan[900],
                  ),
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                ),
                onChanged: (txt){
                  setState(() {
                    nilaimhs3= double.parse(txt);
                  });
                },
              ),

              Text(''),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: new InputDecoration(
                  labelText: "Nilai 4",
                  icon: Icon(
                    Icons.book,
                    color: Colors.cyan[900],
                  ),
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                ),
                onChanged: (txt){
                  setState(() {
                    nilaimhs4= double.parse(txt);
                  });
                },
              ),

              Text(''),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: new InputDecoration(
                  labelText: "Nilai 5",
                  icon: Icon(
                    Icons.book,
                    color: Colors.cyan[900],
                  ),
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                ),
                onChanged: (txt){
                  setState(() {
                    nilaimhs5= double.parse(txt);
                  });
                },
              ),

              Text(''),
              Text(''),
              RaisedButton(
                child: Text("Hitung",
                  style: TextStyle(color: Colors.white,
                  fontSize: 18.0),
                ),
                color: Colors.cyan[900],
                shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0)),
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 35.0),
                onPressed: (){
                  setState(() {
                    rata =  (nilaimhs1+nilaimhs2+nilaimhs3+nilaimhs4+nilaimhs5) /5;
                  });
                },
              ),
              Text(""),
              Text("Nilai Rata-Ratanya Adalah :"),
              Text(""),
              Text("$rata",
                style: TextStyle(fontSize: 30.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}