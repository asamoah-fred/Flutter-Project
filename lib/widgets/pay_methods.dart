// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PayMethods extends StatelessWidget {
  const PayMethods({Key? key, required this.cardInfo}) : super(key: key);
  final Info cardInfo;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                  radius: 20,
                  backgroundColor: Color.fromARGB(255, 216, 216, 216),
                  child: Icon(cardInfo.icon)),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    cardInfo.title,
                    style: TextStyle(
                      color: Color.fromARGB(255, 138, 147, 195),
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    cardInfo.subtitle,
                    style: TextStyle(
                      color: Color.fromARGB(255, 180, 187, 228),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Divider(),
        ],
      ),
    );
  }
}

class Info {
  final icon;
  final String title;
  final String subtitle;

  Info({
    required this.icon,
    required this.title,
    required this.subtitle,
  });
}

List<Info> cardInfo = [
  Info(
    icon: Icon,
    title: '',
    subtitle: '',
  ),
  Info(
    icon: Icon,
    title: '',
    subtitle: '',
  ),
  Info(
    icon: Icon,
    title: '',
    subtitle: '',
  ),
  Info(
    icon: Icon,
    title: '',
    subtitle: '',
  ),
  Info(
    icon: Icon,
    title: '',
    subtitle: '',
  )
];
