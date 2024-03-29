import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/screens/sub_screens/welcome_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _agree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: AlignmentDirectional.center,
              children: [
                SvgPicture.asset('assets/images/Auth_bgr.svg'),
                _backButton(context),
                const Text(
                  'Create Your Account',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 28),
                ),
                _fbRegisterButton(context),
                _ggRegisterButton(context),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 50, bottom: 30),
              child: Text(
                'OR LOG IN WITH EMAIL',
                style: TextStyle(
                    color: Color(0xFFA1A4B2),
                    fontWeight: FontWeight.w700,
                    fontSize: 15),
              ),
            ),
            _userName(context),
            _userEmail(context),
            _userPassword(context),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 5),
              child: Row(
                children: [
                  const Text('I have read the '),
                  const Text(
                    'Private Policy',
                    style: TextStyle(color: Color(0xFF8E97FD)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 130),
                    child: Checkbox(
                        value: _agree,
                        onChanged: (value) {
                          setState(() {
                            _agree = value ?? false;
                          });
                        }),
                  )
                ],
              ),
            ),
            _getStartedButton(context),
          ],
        ),
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

  Widget _fbRegisterButton(BuildContext context) {
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

  Widget _ggRegisterButton(BuildContext context) {
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

  Widget _userName(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xFFF2F3F7),
          hintText: 'Name',
          hintStyle: const TextStyle(color: Color(0xFFA1A4B2)),
          suffixIcon: const Icon(Icons.check_sharp),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(20)),
        ),
      ),
    );
  }

  Widget _userEmail(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xFFF2F3F7),
          hintText: 'Email address',
          hintStyle: const TextStyle(color: Color(0xFFA1A4B2)),
          suffixIcon: const Icon(Icons.check_sharp),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(20)),
        ),
      ),
    );
  }

  Widget _userPassword(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xFFF2F3F7),
          hintText: 'Password',
          hintStyle: const TextStyle(color: Color(0xFFA1A4B2)),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(20)),
        ),
      ),
    );
  }

  Widget _getStartedButton(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (_) => const WelcomeScreen()));
      } ,
      child: Container(
        height: 60,
        width: 350,
        margin: const EdgeInsets.only(top: 5, bottom: 20),
        decoration: BoxDecoration(
          color: const Color(0xFF8E97FD),
          borderRadius: BorderRadius.circular(30),
        ),
        child: const Center(
            child: Text(
          'GET STARTED',
          style: TextStyle(color: Colors.white),
        )),
      ),
    );
  }

  void _getStartedFunc(){

  }
}
