import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI Calculator',
      initialRoute: '/',
      routes: {
        '/': (context) => BmiCalculator(),
      },
    );
  }
}

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({super.key});

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  int weight = 56, height = 162, age = 29;
  String selectedGender = 'Male';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xff000002),
        foregroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_active,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'BMI Calculator',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Gender',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 5),
            Row(
              children: [
                // Male Container
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        selectedGender = 'Male';
                      });
                    },
                    child: Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 15, right: 5),
                          width: double.infinity,
                          height: 140,
                          decoration: BoxDecoration(
                            color: selectedGender == 'Male'
                                ? Color(0xFF06C46C)
                                : Color(0xFF333335),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.male,
                                size: 80,
                                color: Colors.white,
                              ),
                              Text(
                                'Male',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            ],
                          ),
                        ),
                        if (selectedGender == 'Male')
                          Positioned(
                            top: 05,
                            right: 15,
                            child: CircleAvatar(
                              radius: 10,
                              backgroundColor: Colors.white,
                              child: Icon(Icons.check, color: Colors.green),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),

                // Female container
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        selectedGender = 'Female';
                      });
                    },
                    child: Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 15, left: 5),
                          width: double.infinity,
                          height: 140,
                          decoration: BoxDecoration(
                            color: selectedGender == 'Female'
                                ? Color(0xff06C46C)
                                : Color(0xff333335),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.female,
                                size: 80,
                                color: Colors.white,
                              ),
                              Text(
                                'Female',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              )
                            ],
                          ),
                        ),
                        if (selectedGender == 'Female')
                          Positioned(
                              top: 5,
                              right: 25,
                              child: CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.white,
                                child: Icon(Icons.check, color: Colors.green),
                              )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                'Weight',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 5),
            // gender section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  // male section
                  Expanded(
                    flex: 7,
                    child: Container(
                      margin: EdgeInsets.only(right: 10),
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.black,
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  if (weight > 0) {
                                    weight--;
                                  }
                                });
                              },
                              icon: Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Text(
                            "$weight",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.black,
                            child: IconButton(
                              onPressed: () {
                                setState(
                                  () {
                                    if (weight >= 0) {
                                      weight++;
                                    }
                                  },
                                );
                              },
                              icon: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // female section
                  Expanded(
                    flex: 3,
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [Text('Kg'), Icon(Icons.arrow_drop_down)],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Height section
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                'Height',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    flex: 7,
                    child: Container(
                      margin: EdgeInsets.only(right: 10),
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.black,
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  if (height > 0) {
                                    height--;
                                  }
                                });
                              },
                              icon: Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Text(
                            "$height",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.black,
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  if (height >= 0) {
                                    height++;
                                  }
                                });
                              },
                              icon: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('cm'),
                          Icon(
                            Icons.arrow_drop_down,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            // Age section
            Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 5),
              child: Text(
                'Age',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          if (age > 0) {
                            age--;
                          }
                        });
                      },
                      icon: Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    "$age",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          if (age >= 0) {
                            age++;
                          }
                        });
                      },
                      icon: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: InkWell(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xff06C46C),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Align(
                    child: Text(
                      'Calculate',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
