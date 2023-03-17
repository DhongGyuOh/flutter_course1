import 'package:flutter/material.dart';
import 'package:flutter_webtoon/widgets/button.dart';
import 'package:flutter_webtoon/widgets/cards.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: const TextTheme(
              titleLarge: TextStyle(fontWeight: FontWeight.bold))),
      home: const MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.red.shade200,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'Hello, Oh',
                          style: TextStyle(color: Colors.white, fontSize: 40),
                        ),
                        Text('Wellcome Back',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .fontWeight)),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Total Balance',
                        style: TextStyle(color: Colors.white60, fontSize: 22)),
                    Text(
                      '\$10,000,000',
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Button(
                            text: 'Request',
                            txtColor: Colors.black,
                            bgColor: Colors.amber),
                        SizedBox(
                          width: 40,
                        ),
                        Button(
                            text: 'Transfer',
                            txtColor: Colors.black,
                            bgColor: Colors.red),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                StackCard(
                  cardIcon: Icons.attachment_rounded,
                  iconColor: Colors.grey,
                  cardColor: Colors.amber.shade100,
                  text: 'Clip',
                  x: -10,
                  y: 0,
                ),
                StackCard(
                    text: 'Snow',
                    cardIcon: Icons.snowing,
                    iconColor: Colors.white,
                    cardColor: Colors.amber.shade200,
                    x: 10,
                    y: -40),
                StackCard(
                    text: 'Piano',
                    cardIcon: Icons.piano,
                    iconColor: Colors.blue,
                    cardColor: Colors.amber.shade300,
                    x: 30,
                    y: -80),
                StackCard(
                    text: 'User',
                    cardIcon: Icons.verified_user,
                    iconColor: Colors.green,
                    cardColor: Colors.amber.shade400,
                    x: 50,
                    y: -120)
              ]),
            ),
          )),
    );
  }
}

class SApp extends StatefulWidget {
  const SApp({super.key});
  @override
  State<SApp> createState() => SAppState();
}

class SAppState extends State<SApp> {
  int count = 0;
  List<int> nums = [];
  void onClicked() => setState(() {
        count++;
        nums.add(count);
      });

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Click Me',
                    style:
                        TextStyle(color: Colors.amber.shade900, fontSize: 40),
                  ),
                  IconButton(
                    onPressed: onClicked,
                    icon: const Icon(Icons.bolt_sharp),
                    iconSize: 100,
                    color: Colors.amber.shade600,
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Text('nums 구성 item: $nums')
            ]),
          ],
        )),
      ),
    );
  }
}
