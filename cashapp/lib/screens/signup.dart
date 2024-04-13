import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B0742),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 70),
            const Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 30),
            Form(
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          style: const TextStyle(
                              color: Color(0xFFD2CECE), fontSize: 14),
                          decoration: const InputDecoration(
                            labelText: 'First Name',
                            labelStyle: TextStyle(color: Color(0xFFD2CECE)),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 2),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                              borderSide: BorderSide(color: Color(0xFFFF9190)),
                            ),
                            contentPadding: EdgeInsets.only(left: 20),
                            constraints:
                                BoxConstraints(maxHeight: 43, minHeight: 43),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: TextFormField(
                          style: const TextStyle(
                              color: Color(0xFFD2CECE), fontSize: 14),
                          decoration: const InputDecoration(
                            labelText: 'Last Name',
                            labelStyle: TextStyle(color: Color(0xFFD2CECE)),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 2),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                              borderSide: BorderSide(color: Color(0xFFFF9190)),
                            ),
                            contentPadding: EdgeInsets.only(left: 20),
                            constraints:
                                BoxConstraints(maxHeight: 43, minHeight: 43),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    style:
                        const TextStyle(color: Color(0xFFD2CECE), fontSize: 14),
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Color(0xFFD2CECE)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        borderSide: BorderSide(color: Colors.white, width: 2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        borderSide: BorderSide(color: Color(0xFFFF9190)),
                      ),
                      contentPadding: EdgeInsets.only(left: 20),
                      constraints: BoxConstraints(maxHeight: 43, minHeight: 43),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    style:
                        const TextStyle(color: Color(0xFFD2CECE), fontSize: 14),
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Color(0xFFD2CECE)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        borderSide: BorderSide(color: Colors.white, width: 2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        borderSide: BorderSide(color: Color(0xFFFF9190)),
                      ),
                      contentPadding: EdgeInsets.only(left: 20),
                      constraints: BoxConstraints(maxHeight: 43, minHeight: 43),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    style:
                        const TextStyle(color: Color(0xFFD2CECE), fontSize: 14),
                    decoration: const InputDecoration(
                      labelText: 'Confirm Password',
                      labelStyle: TextStyle(color: Color(0xFFD2CECE)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        borderSide: BorderSide(color: Colors.white, width: 2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        borderSide: BorderSide(color: Color(0xFFFF9190)),
                      ),
                      contentPadding: EdgeInsets.only(left: 20),
                      constraints: BoxConstraints(maxHeight: 43, minHeight: 43),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            CheckboxListTile(
              value: timeDilation != 1.0,
              onChanged: (bool? value) {
                setState(() {
                  timeDilation = value! ? 2.0 : 1.0;
                });
              },
              title: const Text('I agree with privacy and policy'),
              controlAffinity: ListTileControlAffinity.leading,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Sign Up'),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: const Text('Already have an account? Sign In'),
            ),
          ],
        ),
      ),
    );
  }
}
