import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meditation_app/screens/home_screen.dart';

class ReminderScreen extends StatefulWidget {
  const ReminderScreen({Key? key}) : super(key: key);

  @override
  _ReminderScreenState createState() => _ReminderScreenState();
}

class _ReminderScreenState extends State<ReminderScreen> {
  final List<String> _date = ['SU', 'M', 'T', 'W', 'TH', 'F', 'SAT'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 60, left: 10),
            child: Text(
              'What time would you \nlike to meditate?',
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              'Anytime you can choose. But we recommend \nfirst thing in the morning.',
              style: TextStyle(color: Color(0xFFA1A4B2)),
            ),
          ),
          _buildSetTimer(context),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              'Which day would you \nlike to meditate?',
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              'Everyday is best, but we recommend picking \nat least five',
              style: TextStyle(color: Color(0xFFA1A4B2)),
            ),
          ),
          _buildSelectDay(context),
          _saveButton(context),
          const Center(
            child: Text('No thanks',style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14
            ),),
          )
        ],
      ),
    );
  }

  Widget _buildSetTimer(BuildContext context) {
    return SizedBox(
        height: 200,
        child: CupertinoDatePicker(
          mode: CupertinoDatePickerMode.date,
          onDateTimeChanged: (DateTime value) {},
        ));
  }

  Widget _buildSelectDay(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Center(
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: _date.length,
          itemBuilder: (BuildContext context, int index) {
            return Row(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                  child: Center(
                    child: Text(
                      _date[index],
                      style: const TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _saveButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => const HomeScreen()));
      },
      child: Center(
        child: Container(
          height: 60,
          width: 350,
          margin: const EdgeInsets.only(top: 5, bottom: 10),
          decoration: BoxDecoration(
            color: const Color(0xFF8E97FD),
            borderRadius: BorderRadius.circular(30),
          ),
          child: const Center(
              child: Text(
            'SAVE',
            style: TextStyle(color: Colors.white),
          )),
        ),
      ),
    );
  }
}
