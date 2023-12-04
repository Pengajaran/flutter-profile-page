import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Profile Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Profile Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.4,
              padding: const EdgeInsets.only(top: 60.0),
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50.0),
                  bottomRight: Radius.circular(50.0),
                ),
              ),
              child: const Column(
                children: [
                  CircleAvatar(
                    radius: 70.0,
                    backgroundImage: AssetImage("profile.jpg"),
                  ),
                  SizedBox(height: 16.0),
                  SelectableText(
                    'Kadek Darmaastawan',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  SelectableText(
                    'PROGRAMMER',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  )
                ],
              ),
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.only(left: 50.0, right: 50.0),
                child: Column(
                  children: [
                    const SizedBox(height: 55.0),
                    const Text(
                      'About Me',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    const SelectableText(
                      'An experienced programmer excels in web development, adept in multiple languages and frameworks. Skilled in leading teams, problem-solving, and Agile methodologies. Committed to innovation through new technologies, with strong communication skills and a focus on exceeding client expectations.',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(height: 15.0),
                    Container(
                      margin: const EdgeInsets.only(left: 75.0, right: 75.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    const Text(
                      'Top Skills',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Text('4'),
                                Icon(
                                  Icons.star,
                                  size: 16.0,
                                  color: Colors.amber,
                                ),
                              ],
                            ),
                            SizedBox(height: 8.0),
                            Text("Angular"),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text('4'),
                                Icon(
                                  Icons.star,
                                  size: 16.0,
                                  color: Colors.amber,
                                ),
                              ],
                            ),
                            SizedBox(height: 8.0),
                            Text("Firebase"),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text('3'),
                                Icon(
                                  Icons.star,
                                  size: 16.0,
                                  color: Colors.amber,
                                ),
                              ],
                            ),
                            SizedBox(height: 8.0),
                            Text("Golang"),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    Container(
                      margin: const EdgeInsets.only(left: 75.0, right: 75.0),
                      decoration: BoxDecoration(
                          border: Border.all(
                        color: Colors.grey,
                        width: 1.0,
                      )),
                    ),
                    const SizedBox(height: 16.0),
                    const Text(
                      'Get In Touch',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.facebook,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        Icon(
                          Icons.telegram,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        Icon(
                          FontAwesomeIcons.whatsapp,
                          color: Colors.blue,
                        ),
                      ],
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
