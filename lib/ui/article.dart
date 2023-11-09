import 'package:flutter/material.dart';
import 'package:flutter_3d_choice_chip/flutter_3d_choice_chip.dart';

class Article extends StatefulWidget {
  const Article({Key? key}) : super(key: key);

  @override
  _ArticleState createState() => _ArticleState();
}

class _ArticleState extends State<Article> {
  int _gender = 0;
  double _height = 0.0;
  double _weight = 0.0;
  double _bmi = 0.0;

  final ChoiceChip3DStyle selectedStyle = ChoiceChip3DStyle(
      topColor: Colors.grey[200]!,
      backColor: Colors.grey,
      borderRadius: BorderRadius.circular(20));

  final ChoiceChip3DStyle unselectedStyle = ChoiceChip3DStyle(
      topColor: Colors.white,
      backColor: Colors.grey[300]!,
      borderRadius: BorderRadius.circular(20));

  void calculateBMI(int gender, double height, double weight) {
    if (gender == 1) {
      _bmi = (weight / (height / 100 * height / 100));
    } else if (gender == 2) {
      _bmi = (weight / (height / 100 * height / 100));
    } else {
      _bmi = 0.0;
    }
  }

  String getBmiCategory(double bmi) {
    if (_bmi == 0.0) {
      return "Unknown";
    } else if (_bmi < 18.5) {
      return "Underweight";
    } else if (_bmi >= 18.5 && _bmi < 24.9) {
      return "Normal";
    } else if (_bmi >= 25.0 && _bmi < 29.9) {
      return "Overweight";
    } else {
      return "Obese";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Calculator BMI"),
          centerTitle: true,
          backgroundColor: const Color(0xFF0CC0DF),
          elevation: 0,
          automaticallyImplyLeading: false),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 0, bottom: 0, left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ChoiceChip3D(
                    border: Border.all(color: Colors.grey),
                    style: _gender == 1 ? selectedStyle : unselectedStyle,
                    onSelected: () {
                      setState(() {
                        _gender = 1;
                      });
                      calculateBMI(_gender, _height, _weight);
                    },
                    onUnSelected: () {},
                    selected: _gender == 1,
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/man.png",
                          width: 50,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text("Male")
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  ChoiceChip3D(
                    border: Border.all(color: Colors.grey),
                    style: _gender == 2 ? selectedStyle : unselectedStyle,
                    onSelected: () {
                      setState(() {
                        _gender = 2;
                      });
                      calculateBMI(_gender, _height, _weight);
                    },
                    onUnSelected: () {},
                    selected: _gender == 2,
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/woman.png",
                          width: 50,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text("Female")
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text("Enter your height (cm):"),
              const SizedBox(height: 10),
              TextField(
                onChanged: (value) {
                  _height = double.parse(value);
                  calculateBMI(_gender, _height, _weight);
                },
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),
              Text("Enter your weight (kg):"),
              const SizedBox(height: 10),
              TextField(
                onChanged: (value) {
                  _weight = double.parse(value);
                  calculateBMI(_gender, _height, _weight);
                },
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),
              Text("Your BMI: ${_bmi.toStringAsFixed(1)}"),
              Text("Category: ${getBmiCategory(_bmi)}"),
            ],
          ),
        ),
      ),
    );
  }
}
