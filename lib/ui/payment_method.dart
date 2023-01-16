// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_project/ui/login_page.dart';
import 'package:flutter_project/ui/mobile_method.dart';
import 'package:flutter_project/widgets/pay_methods.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({Key? key}) : super(key: key);

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 246, 242, 242),
      body: SingleChildScrollView(
        child: Container(
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
                    Icons.arrow_back_ios_rounded,
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
                  'Choose a payment method',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 6, 28, 151),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 30),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 146, 188, 214),
                        ),
                        child: Icon(
                          Icons.folder_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Ejara Flex',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 138, 147, 195),
                      ),
                    ),
                    SizedBox(height: 15),
                    RichText(
                      text: TextSpan(
                        text: '20,000',
                        style: TextStyle(
                          color: Color.fromARGB(255, 6, 28, 151),
                          fontSize: 35,
                          fontWeight: FontWeight.w600,
                        ),
                        children: [
                          TextSpan(
                            text: 'CFA',
                            style: TextStyle(
                              color: Color.fromARGB(255, 138, 147, 195),
                              fontSize: 35,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Divider(),
                    SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        children: [
                          Text(
                            'Earnings per day',
                            style: TextStyle(
                              color: Color.fromARGB(255, 138, 147, 195),
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Spacer(),
                          Text(
                            '10,000CFA',
                            style: TextStyle(
                              color: Color.fromARGB(255, 138, 147, 195),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Select a payment methods',
                style: TextStyle(
                  color: Color.fromARGB(255, 6, 28, 151),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 18),
              PayMethods(
                cardInfo: Info(
                  icon: Icons.monetization_on_outlined,
                  title: 'Cash payment',
                  subtitle: 'Fees Offer',
                ),
              ),
              GestureDetector(
                onTap: () {
                  _show(context);
                },
                child: PayMethods(
                  cardInfo: Info(
                    icon: Icons.phone_iphone_outlined,
                    title: 'Mobile money',
                    subtitle: 'Fees 200CFA',
                  ),
                ),
              ),
              PayMethods(
                cardInfo: Info(
                  icon: Icons.account_balance_outlined,
                  title: 'Bank transfer',
                  subtitle: 'Fees Variable',
                ),
              ),
              PayMethods(
                cardInfo: Info(
                  icon: Icons.credit_card_outlined,
                  title: 'Credit card',
                  subtitle: 'Fees Variable',
                ),
              ),
              PayMethods(
                cardInfo: Info(
                  icon: Icons.account_balance_wallet_outlined,
                  title: 'Crpto-currency',
                  subtitle: 'Fees',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Bottom Sheet

  void _show(BuildContext ctx) {
    showModalBottomSheet(
      elevation: 0,
      backgroundColor: Colors.white,
      context: ctx,
      builder: (ctx) => Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white54,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Text(
                    'Select the mobile money method',
                    style: TextStyle(
                      color: Color.fromARGB(255, 6, 28, 151),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.close,
                    size: 16,
                    color: Color.fromARGB(255, 41, 49, 95),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(),
            Container(
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
                        groupValue: true,
                        value: false,
                        onChanged: (value) {},
                        activeColor: Color.fromARGB(255, 138, 147, 195),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Orange Money',
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
                            '6 96 92 09 08',
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
            ),
            SizedBox(
              height: 15,
            ),
            Container(
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
                        groupValue: true,
                        value: false,
                        onChanged: (value) {},
                        activeColor: Color.fromARGB(255, 138, 147, 195),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'MTN Mobile Money',
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
                            '6 78 89 78 90',
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
            ),
            SizedBox(
              height: 15,
            ),
            Container(
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
                        groupValue: true,
                        value: false,
                        onChanged: (value) {},
                        activeColor: Color.fromARGB(255, 138, 147, 195),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Orange Money',
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
                            '6 90 95 04 90',
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
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Divider(),
                  ),
                ),
                Text(
                  'Or',
                  style: TextStyle(
                    color: Color.fromARGB(255, 138, 147, 195),
                    fontSize: 12,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Divider(),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NewMobileMoney()));
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 232, 243, 235)),
                child: Row(
                  children: [
                    Icon(
                      Icons.add,
                      color: Color.fromARGB(163, 7, 97, 181),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      ' Another mobile money method',
                      style: TextStyle(
                        color: Color.fromARGB(163, 7, 97, 181),
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              padding: EdgeInsets.symmetric(vertical: 25),
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
