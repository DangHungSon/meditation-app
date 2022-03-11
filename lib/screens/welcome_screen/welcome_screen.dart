import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF8E97FD),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
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
                'assets/images/Welcome_logo.svg',
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
          Column(
            children: [
              Center(
                  child: Column(
                children: const [
                  Text(
                    'Hi Son, Welcome',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color: Colors.white),
                  ),
                  Text(
                    'to Silent Moon',
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 35,
                        color: Colors.white),
                  )
                ],
              )),

            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                SvgPicture.asset('assets/images/Welcome_eclipse_4.svg'),
                SvgPicture.asset('assets/images/Welcome_eclipse_3.svg'),
                SvgPicture.asset('assets/images/Welcome_eclipse_2.svg'),
                SvgPicture.asset('assets/images/Welcome_eclipse_1.svg'),
                Positioned(
                    top: 30,
                    child: SvgPicture.asset('assets/images/Welcome_image.svg')),
                Positioned(
                    bottom: -35,
                    child: Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          SvgPicture.asset(
                              'assets/images/Welcome_rectangle.svg'),
                          _getStartedButton(context),
                        ]))
              ],
            ),
          ),
          // _getStartedButton(context)
        ],
      ),
    );
  }

  Widget _getStartedButton(BuildContext context) {
    return Container(
      height: 60,
      width: 350,
      margin: const EdgeInsets.only(bottom: 50),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: const Center(
          child: Text(
        'GET STARTED',
        style: TextStyle(color: Colors.black),
      )),
    );
  }
}
