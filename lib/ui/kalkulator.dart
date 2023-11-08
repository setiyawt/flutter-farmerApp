import 'package:flutter/material.dart';

class Kalkulator extends StatefulWidget {
  const Kalkulator({super.key});

  @override
  State<Kalkulator> createState() => _KalkulatorState();
}

class _KalkulatorState extends State<Kalkulator> {
  TextEditingController angka1 = TextEditingController();
  TextEditingController angka2 = TextEditingController();
  TextEditingController hasil = TextEditingController();

  double dataAngka1 = 0;
  double dataAngka2 = 0;
  double dataHasil = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(12, 192, 223, 1),
        elevation: 0,
      ),
      body: ListView(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 30, bottom: 30, left: 20, right: 20),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 177, 234, 244)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: angka1,
                  keyboardType: TextInputType.number,
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 0, bottom: 0, left: 20, right: 20),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 177, 234, 244)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: angka2,
                  keyboardType: TextInputType.number,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 177, 234, 244)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: hasil,
                  keyboardType: TextInputType.number,
                  readOnly: true, //biar ga bisa diubah nilainya
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 2,
            child: Column(children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    parsing();
                    dataHasil = dataAngka1 + dataAngka2;
                    hasil.text = dataHasil.toString();
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(12, 192, 223, 1),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 15, bottom: 15, left: 20, right: 20),
                    child: Text(
                      "Tambah",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    parsing();
                    dataHasil = dataAngka1 - dataAngka2;
                    hasil.text = dataHasil.toString();
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(12, 192, 223, 1),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 15, bottom: 15, left: 20, right: 20),
                    child: Text(
                      "Kurang",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    parsing();
                    dataHasil = dataAngka1 * dataAngka2;
                    hasil.text = dataHasil.toString();
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(12, 192, 223, 1),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 15, bottom: 15, left: 30, right: 30),
                    child: Text(
                      "Kali",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  parsing();
                  dataHasil = dataAngka1 / dataAngka2;
                  hasil.text = dataHasil.toString();
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(12, 192, 223, 1),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 15, bottom: 15, left: 30, right: 30),
                    child: Text(
                      "Bagi",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }

  void parsing() {
    dataAngka1 = double.parse(angka1
        .text); //mengambil angka1 yang bertipe integer lalu dibuah ke double
    dataAngka2 = double.parse(angka2.text);
  }
}
