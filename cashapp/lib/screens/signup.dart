import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool passwordVisible = false;

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

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
                                borderSide:
                                    BorderSide(color: Color(0xFFFF9190)),
                              ),
                              contentPadding: EdgeInsets.only(left: 20),
                              constraints:
                                  BoxConstraints(maxHeight: 45, minHeight: 45),
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
                                borderSide:
                                    BorderSide(color: Color(0xFFFF9190)),
                              ),
                              contentPadding: EdgeInsets.only(left: 20),
                              constraints:
                                  BoxConstraints(maxHeight: 45, minHeight: 45),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      style: const TextStyle(
                          color: Color(0xFFD2CECE), fontSize: 14),
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
                        constraints:
                            BoxConstraints(maxHeight: 45, minHeight: 45),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      obscureText: passwordVisible,
                      style: const TextStyle(
                          color: Color(0xFFD2CECE), fontSize: 14),
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: const TextStyle(color: Color(0xFFD2CECE)),
                        suffixIcon: IconButton(
                          icon: Icon(
                            passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: const Color(0xFFD2CECE),
                            size: 20,
                          ),
                          onPressed: () {
                            setState(() {
                              passwordVisible = !passwordVisible;
                            });
                          },
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          borderSide: BorderSide(color: Colors.white, width: 2),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          borderSide: BorderSide(color: Color(0xFFFF9190)),
                        ),
                        contentPadding: const EdgeInsets.only(left: 20),
                        constraints:
                            const BoxConstraints(maxHeight: 45, minHeight: 45),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      obscureText: passwordVisible,
                      style: const TextStyle(
                          color: Color(0xFFD2CECE), fontSize: 14),
                      decoration: InputDecoration(
                        labelText: 'Confirm Password',
                        labelStyle: const TextStyle(color: Color(0xFFD2CECE)),
                        suffixIcon: IconButton(
                          icon: Icon(
                            passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: const Color(0xFFD2CECE),
                            size: 20,
                          ),
                          onPressed: () {
                            setState(() {
                              passwordVisible = !passwordVisible;
                            });
                          },
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          borderSide: BorderSide(color: Colors.white, width: 2),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          borderSide: BorderSide(color: Color(0xFFFF9190)),
                        ),
                        contentPadding: const EdgeInsets.only(left: 20),
                        constraints:
                            const BoxConstraints(maxHeight: 45, minHeight: 45),
                      ),
                    ),
                  ],
                ),
              ),
              CheckboxListTile(
                value: timeDilation != 1.0,
                contentPadding: const EdgeInsets.all(0),
                activeColor: const Color(0xFFFF9190),
                checkColor: Colors.white,
                //fillColor: MaterialStateProperty.all(const Color(0xFFFF9190)),
                checkboxShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                onChanged: (bool? value) {
                  setState(() {
                    timeDilation = value! ? 2.0 : 1.0;
                  });
                },
                title: RichText(
                  text: const TextSpan(
                    text: 'I agree with ',
                    style: TextStyle(color: Color(0xFFD2CECE)),
                    children: [
                      TextSpan(
                        text: 'privacy',
                        style: TextStyle(
                          color: Color(0xFFFF9190),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: ' and ',
                        style: TextStyle(color: Color(0xFFD2CECE)),
                      ),
                      TextSpan(
                        text: 'policy',
                        style: TextStyle(
                          color: Color(0xFFFF9190),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                controlAffinity: ListTileControlAffinity.leading,
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
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 100),
              Container(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: RichText(
                    text: const TextSpan(
                      text: 'Already have an account? ',
                      style: TextStyle(color: Color(0xFFD2CECE)),
                      children: [
                        TextSpan(
                          text: 'Login',
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
