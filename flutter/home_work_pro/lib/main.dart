import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(height: 150, color: Color(0xffE4F2FD)),

            const SizedBox(height: 16),

            Row(
              children: [
                Container(width: 30, height: 30, color: Color(0xffE0E0E0)),
                const SizedBox(width: 8),
                Column(
                  children: [
                    Container(height: 3),
                    Container(width: 340, height: 24, color: Color(0xffE0E0E0)),
                    Container(height: 3),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 8),
            Container(
              color: Color(0xffE0E0E0),
              width: double.infinity,
              height: 2,
            ),
            const SizedBox(height: 8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Container(width: 200, height: 45, color: Colors.green[200]),
                    Container(height: 8, color: Color(0xffE0E0E0)),
                    Container(width: 200, height: 45, color: Colors.green[200]),
                  ],
                ),
                const SizedBox(width: 15),

                Row(
                  children: [
                    Container(width: 78, height: 98, color: Colors.orange[200]),
                    Container(width: 8, color: Color(0xffFEF3DD)),
                    Container(width: 78, height: 98, color: Colors.orange[200]),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 16),

            Container(
              color: Color(0xffF3E5F6),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(width: 90, height: 90, color: Colors.purple[100]),
                  const SizedBox(width: 8),

                  Column(
                    children: [
                      Container(
                        width: 90,
                        height: 40,
                        color: Colors.purple[300],
                      ),
                      const SizedBox(height: 10),
                      Container(
                        width: 90,
                        height: 40,
                        color: Colors.purple[300],
                      ),
                    ],
                  ),
                  const SizedBox(width: 8),

                  Container(width: 90, height: 90, color: Colors.purple[100]),
                  const SizedBox(width: 6),

                  Container(width: 80, height: 90, color: Colors.purple[50]),
                ],
              ),
            ),

            const SizedBox(height: 16),

            Row(
              children: [
                Container(width: 180, height: 65, color: Color(0xffB2DFDC)),
                const SizedBox(width: 18),
                Container(width: 180, height: 65, color: Color(0xff80CBC4)),
              ],
            ),

            const SizedBox(height: 16),

            Container(
              width: double.infinity,
              height: 45,
              color: Color(0xffE0E0E0),
            ),
          ],
        ),
      ),
    );
  }
}
