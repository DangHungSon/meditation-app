import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Silent',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3,
                    ),
                  ),
                  const SizedBox(width: 5),
                  SvgPicture.asset(
                    'assets/images/Logo.svg',
                    height: 30,
                    width: 30,
                  ),
                  const SizedBox(width: 5),
                  const Text(
                    'Moon',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3,
                    ),
                  )
                ],
              ),
            ),
            const Text('Good Morning, Son We ')
          ],
        ),
    );
  }
}
