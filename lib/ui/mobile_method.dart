// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class NewMobileMoney extends StatefulWidget {
  const NewMobileMoney({Key? key}) : super(key: key);

  @override
  State<NewMobileMoney> createState() => _NewMobileMoneyState();
}

class _NewMobileMoneyState extends State<NewMobileMoney> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Color.fromARGB(255, 216, 216, 216),
                child: Icon(
                  Icons.close,
                  color: Color.fromARGB(255, 5, 124, 194),
                  size: 15,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 60,
              ),
              child: Text(
                'New mobile money',
                style: TextStyle(
                  fontSize: 28,
                  color: Color.fromARGB(255, 6, 28, 151),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Choose the mobile operator',
              style: TextStyle(
                color: Color.fromARGB(144, 21, 53, 197),
                fontWeight: FontWeight.normal,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Colors.black26,
                ),
              ),
              child: Row(
                children: [
                  Text(
                    'Orange Money',
                    style: TextStyle(
                      color: Color.fromARGB(255, 6, 28, 151),
                      fontSize: 15,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_drop_down_outlined,
                    color: Color.fromARGB(144, 21, 53, 197),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Phone number',
              style: TextStyle(
                color: Color.fromARGB(144, 21, 53, 197),
                fontWeight: FontWeight.normal,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Colors.black26,
                ),
              ),
              child: Row(
                children: [
                  Text(
                    '6 94 94 89 09',
                    style: TextStyle(
                      color: Color.fromARGB(255, 6, 28, 151),
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Full name',
              style: TextStyle(
                color: Color.fromARGB(144, 21, 53, 197),
                fontWeight: FontWeight.normal,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Colors.black26,
                ),
              ),
              child: Row(
                children: [
                  Text(
                    'King',
                    style: TextStyle(
                      color: Color.fromARGB(255, 6, 28, 151),
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Switch(
                    activeColor: Colors.white,
                    activeTrackColor: Colors.blue,
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                      });
                    }),
                SizedBox(
                  width: 8,
                ),
                Text('Save as payment method')
              ],
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromARGB(255, 13, 44, 123)),
              child: Center(
                child: Text(
                  'Continue',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
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
