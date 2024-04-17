import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:getwidget/getwidget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B0742),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 140),
              const Text(
                'Log In',
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
                    const SizedBox(height: 20),
                    TextFormField(
                      style: const TextStyle(
                          color: Color(0xFFD2CECE), fontSize: 14),
                      decoration: const InputDecoration(
                        labelText: 'Username',
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
                        constraints:
                            BoxConstraints(maxHeight: 45, minHeight: 45),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      style: const TextStyle(
                          color: Color(0xFFD2CECE), fontSize: 14),
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
                        constraints:
                            BoxConstraints(maxHeight: 45, minHeight: 45),
                      ),
                    ),
                    //const SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: CheckboxListTile(
                            value: timeDilation != 1.0,
                            onChanged: (bool? value) {
                              setState(() {
                                timeDilation = value! ? 2.0 : 1.0;
                              });
                            },
                            title: const Text(
                              'Remember me',
                              style: TextStyle(color: Color(0xFFD2CECE)),
                            ),
                            controlAffinity: ListTileControlAffinity.leading,
                            checkColor: Colors.white,
                            activeColor: const Color(0xFFFF9190),
                            checkboxShape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                        const SizedBox(width: 30),
                        Expanded(
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Forgot Password?',
                              style: TextStyle(
                                color: Color(0xFFFF9190),
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 100),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  gradient: const LinearGradient(
                    colors: [Color(0xFFFF9190), Color(0xFF5E72EB)],
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent),
                  child: const Text(
                    'Log In',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 100),
              const Text(
                'Or Sign In with',
                style: TextStyle(
                  color: Color(0xFFD2CECE),
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: GFIconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.facebook,
                        color: Colors.white,
                        size: 30,
                      ),
                      type: GFButtonType.transparent,
                      shape: GFIconButtonShape.standard,
                    ),
                  ),
                  Expanded(
                    child: GFIconButton(
                      onPressed: () {},
                      icon: const Icon(
                        FontAwesomeIcons.twitter,
                        color: Colors.white,
                        size: 30,
                      ),
                      type: GFButtonType.transparent,
                      shape: GFIconButtonShape.standard,
                    ),
                  ),
                  Expanded(
                    child: GFIconButton(
                      onPressed: () {},
                      icon: const Icon(
                        FontAwesomeIcons.linkedin,
                        color: Colors.white,
                        size: 30,
                      ),
                      type: GFButtonType.transparent,
                      shape: GFIconButtonShape.standard,
                    ),
                  ),
                  Expanded(
                    child: GFIconButton(
                      onPressed: () {},
                      icon: const Icon(
                        FontAwesomeIcons.google,
                        color: Colors.white,
                        size: 30,
                      ),
                      type: GFButtonType.transparent,
                      shape: GFIconButtonShape.standard,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Container(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: RichText(
                    text: const TextSpan(
                      text: "Don't have an account? ",
                      style: TextStyle(color: Color(0xFFD2CECE)),
                      children: [
                        TextSpan(
                          text: 'Sign Up',
                          style: TextStyle(
                            color: Color(0xFFFF9190),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
