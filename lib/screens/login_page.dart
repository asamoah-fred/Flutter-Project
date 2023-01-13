// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  String? username, password;

  Future<http.Response> _login(
      {required String username, required String password}) async {
    final http.Response response = await http.post(
      Uri.parse(
        'https://testbox-nellys-coin.ejaraapis.xyz/api/v1/auth/login',
      ),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'api-key': '838adf51aa',
        'client-id': 'jL]riHjAgbUZHofblIPigVgq1',
      },
      body: jsonEncode(
        <String, String>{
          'log': '$username',
          'password': '$password',
        },
      ),
    );
    return response.statusCode == 200
        ? http.Response(response.body, 200)
        : http.Response(response.body, response.statusCode);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Form(
        key: _formkey,
        child: Column(
          children: <Widget>[
            Text(
              'LOGIN',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextFormField(
                onChanged: (value) {
                  username = value;
                },
                decoration: InputDecoration(
                  hintText: 'Email',
                ),
                validator: (String? value) {
                  if (value == null || value.trim().length == 0) {
                    return "Field is required";
                  }
                  return null;
                },
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextFormField(
                onChanged: (value) {
                  password = value;
                },
                decoration: InputDecoration(
                  hintText: 'Password',
                ),
                obscureText: true,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Field is required";
                  }

                  return null;
                },
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Forget your password?',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: 60,
            ),
            TextButton(
              onPressed: () async {
                if (_formkey.currentState != null &&
                    _formkey.currentState!.validate()) {
                  final http.Response response =
                      await _login(username: username!, password: password!);
                }
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
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
