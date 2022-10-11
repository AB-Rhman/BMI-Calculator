import 'dart:math';

import 'package:bmi_app/result_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double height = 100;
  int age = 18;
  double weight = 50;
  bool isMale = false;
  Color mainColor = Color(0xFF252c4a);
  Color secondColor = Color(0xFF117eeb);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
          title: Text(
            'BMI Calculator',
            style: TextStyle(color: secondColor, fontSize: 22),
          ),
          backgroundColor: Colors.black),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 7, top: 10),
                    child: Container(
                        height: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: isMale ? Colors.black : Colors.pinkAccent,
                              width: 10),
                          color: Colors.white,
                          borderRadius: BorderRadiusDirectional.only(
                            topEnd: Radius.circular(50),
                            bottomStart: Radius.circular(50),
                          ),
                        ),
                        child: InkWell(
                            onTap: () {
                              isMale = false;
                              setState(() {});
                            },
                            child: const Icon(
                              Icons.female,
                              size: 100,
                            ))),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 7, top: 10),
                    child: Container(
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              color: isMale ? secondColor : Colors.black,
                              width: 10),
                          borderRadius: BorderRadiusDirectional.only(
                            topStart: Radius.circular(50),
                            bottomEnd: Radius.circular(50),
                          ),
                        ),
                        child: InkWell(
                            onTap: () {
                              isMale = true;
                              setState(() {});
                            },
                            child: const Icon(
                              Icons.male,
                              size: 100,
                            ))),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                    color: secondColor,
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'HEIGHT',
                      style: TextStyle(color: Colors.white60, fontSize: 20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${height.toInt()}',
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          ' cm',
                          style: TextStyle(color: Colors.white60, fontSize: 20),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Slider(
                        value: height,
                        onChanged: (value) {
                          height = value;
                          setState(() {});
                        },
                        min: 100,
                        max: 200,
                        activeColor: Colors.deepOrange,
                        inactiveColor: Colors.white60,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: secondColor,
                        borderRadius: BorderRadiusDirectional.only(
                          topStart: Radius.circular(50),
                          bottomEnd: Radius.circular(50),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '${weight.round()}',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                  icon: Icon(
                                    Icons.arrow_back_ios,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  onPressed: () {
                                    if (weight > 50) {
                                      weight--;
                                    }
                                    setState(() {});
                                  }),
                              IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  onPressed: () {
                                    if (weight < 250) {
                                      weight++;
                                    }
                                    setState(() {});
                                  }),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: secondColor,
                        borderRadius: BorderRadiusDirectional.only(
                          topEnd: Radius.circular(50),
                          bottomStart: Radius.circular(50),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '${age.round()}',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                  icon: Icon(
                                    Icons.arrow_back_ios,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  onPressed: () {
                                    if (age > 19) {
                                      age--;
                                    }
                                    setState(() {});
                                  }),
                              IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  onPressed: () {
                                    if (age < 100) {
                                      age++;
                                    }
                                    setState(() {});
                                  }),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                  onPressed: () {
                    double result = weight / pow(height / 100, 2);
                    print(result.round());

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ResultScreen(
                        height: height,
                        weight: weight,
                        result: result,
                        age: age,
                        gender: isMale == true ? 'male' : 'female',
                      );
                    }));
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            side: const BorderSide(color: Colors.red))),
                  ),
                  child: Text(
                    'CALCULATE',
                    style: TextStyle(
                      fontSize: 22,
                      letterSpacing: 3,
                      color: mainColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
