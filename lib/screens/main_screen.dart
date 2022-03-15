import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/screens/sub_screens/sign_in.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _buildHeader(context),
            _homeText(context),
            _buildSignUpButton(context),
            _buildLoginButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Stack(alignment: AlignmentDirectional.center, children: [
      SizedBox(
        height: 360,
        width: MediaQuery
            .of(context)
            .size
            .width,
        child: SvgPicture.asset(
          'assets/images/Home_background.svg',
          color: const Color(0xFFFAF8F5),
          fit: BoxFit.fill,
        ),
      ),
      SvgPicture.asset('assets/images/Group.svg'),
      Positioned(
        top: 30,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
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
    ]);
  }

  Widget _homeText(BuildContext context) {
    return Column(
      children: const [
        Padding(
          padding: EdgeInsets.only(top: 35, bottom: 30),
          child: Center(
            child: Text(
              'We are what we do',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 30,
              ),
            ),
          ),
        ),
        Center(
            child: Text(
              'Thousand of people are using silent moon \n for smalls meditation',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xFFA1A4B2),
                  fontWeight: FontWeight.w300,
                  fontSize: 18),
            )),
      ],
    );
  }

  Widget _buildSignUpButton(BuildContext context) {
    return Container(
      height: 60,
      width: 350,
      margin: const EdgeInsets.only(top: 60),
      decoration: BoxDecoration(
        color: const Color(0xFF8E97FD),
        borderRadius: BorderRadius.circular(30),
      ),
      child: const Center(
          child: Text(
            'SIGN UP',
            style: TextStyle(color: Colors.white),
          )),
    );
  }

  Widget _buildLoginButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('ALREADY HAVE AN ACCOUNT? ',
              style: TextStyle(color: Color(0xFFA1A4B2))),
          GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_) => const SignInScreen()));
              },
              child: const Text(
                  'LOG IN', style: TextStyle(color: Color(0xFF8E97FD))))
        ],
      ),
    );
  }
}
