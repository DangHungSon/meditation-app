import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/screens/sign_up_and_sign_in/sign_up.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: AlignmentDirectional.center,
            children: [
              SvgPicture.asset('assets/images/Auth_bgr.svg'),
              _backButton(context),
              const Text(
                'Welcome Back!',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 28),
              ),
              _fbLoginButton(context),
              _ggLoginButton(context),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 60, bottom: 40),
            child: Text(
              'OR LOG IN WITH EMAIL',
              style: TextStyle(
                  color: Color(0xFFA1A4B2),
                  fontWeight: FontWeight.w700,
                  fontSize: 15),
            ),
          ),
          _emailLogin(context),
          _passwordLogin(context),
          _loginButton(context),
          _forgotPassword(context),
          _moveToSignUp(context),
        ],
      ),
    );
  }

  Widget _fbLoginButton(BuildContext context) {
    return Container(
      height: 60,
      width: 350,
      margin: const EdgeInsets.only(top: 150),
      decoration: BoxDecoration(
        color: const Color(0xFF8E97FD),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset('assets/images/FB_icon.svg'),
          const Padding(
            padding: EdgeInsets.only(right: 50),
            child: Text(
              'CONTINUE WITH FACEBOOK',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ),
    );
  }

  Widget _ggLoginButton(BuildContext context) {
    return Positioned(
      bottom: -20,
      child: Container(
        height: 60,
        width: 350,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: const Color(0xFFEBEAEC)),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SvgPicture.asset('assets/images/GG_icon.svg'),
            const Padding(
              padding: EdgeInsets.only(right: 70),
              child: Text(
                'CONTINUE WITH GOOGLE',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
              ),
            ),
          ],
        )),
      ),
    );
  }

  Widget _emailLogin(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xFFF2F3F7),
          hintText: 'Email address',
          hintStyle: const TextStyle(color: Color(0xFFA1A4B2)),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(20)),
        ),
      ),
    );
  }

  Widget _passwordLogin(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xFFF2F3F7),
          hintStyle: const TextStyle(color: Color(0xFFA1A4B2)),
          hintText: 'Password',
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(20)),
        ),
      ),
    );
  }

  Widget _loginButton(BuildContext context) {
    return Container(
      height: 60,
      width: 350,
      margin: const EdgeInsets.only(top: 5),
      decoration: BoxDecoration(
        color: const Color(0xFF8E97FD),
        borderRadius: BorderRadius.circular(30),
      ),
      child: const Center(
          child: Text(
        'LOG IN',
        style: TextStyle(color: Colors.white),
      )),
    );
  }

  Widget _forgotPassword(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 20),
      child: Text(
        'Forgot Password?',
        style: TextStyle(
            fontWeight: FontWeight.w400,
            color: Color(0xFF3F414E),
            shadows: [
              Shadow(blurRadius: 10, color: Colors.grey, offset: Offset(5, 5))
            ]),
      ),
    );
  }

  Widget _moveToSignUp(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("YOU DON'T HAVE AN ACCOUNT? ",
              style: TextStyle(color: Color(0xFFA1A4B2))),
          GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => const SignUpScreen()));
              },
              child: const Text('SIGN UP',
                  style: TextStyle(color: Color(0xFF8E97FD))))
        ],
      ),
    );
  }

  Widget _backButton(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.topStart,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, bottom: 120),
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(color: const Color(0xFFEBEAEC)),
              borderRadius: const BorderRadius.all(Radius.circular(30))),
          child: Center(
              child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.arrow_back_sharp))),
        ),
      ),
    );
  }
}
