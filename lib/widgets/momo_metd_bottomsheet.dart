// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class MobileMoneyMethod extends StatelessWidget {
  const MobileMoneyMethod({Key? key, required this.momoMetd}) : super(key: key);
  final Infos momoMetd;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color.fromARGB(255, 248, 240, 240),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Radio(
                activeColor: Color.fromARGB(255, 138, 147, 195),
                groupValue: false,
                value: true,
                onChanged: (value) {
                  value = true;
                },
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    momoMetd.mobileOpe,
                    style: TextStyle(
                      color: Color.fromARGB(255, 6, 28, 151),
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    momoMetd.phoneNum,
                    style: TextStyle(
                      color: Color.fromARGB(255, 138, 147, 195),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Infos {
  String mobileOpe;
  String phoneNum;

  Infos({
    required this.mobileOpe,
    required this.phoneNum,
  });
}

List<Infos> momoMetd = [
  Infos(
    mobileOpe: 'Orange Money',
    phoneNum: '6 96 92 09 08',
  ),
  Infos(
    mobileOpe: 'MTN Mobile Money',
    phoneNum: '6 78 89 78 90',
  ),
  Infos(
    mobileOpe: 'Orange Money',
    phoneNum: '6 90 95 04 90',
  ),
];
