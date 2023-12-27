import 'package:flutter/material.dart';
import 'package:uber/src/Widget/bezierContainer.dart';
import 'package:uber/src/loginPage.dart';
import 'package:uber/src/share_widget/text_widget.dart';

import 'share_widget/custome_text_field.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      height: height,
      child: Stack(
        children: [
          Positioned(
            top: -height * .15,
            right: -MediaQuery.of(context).size.width * .4,
            child: const BezierContainer(),
          ),
          SizedBox(height: height * .2),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: height * .3),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Phone Number',
                    ),
                  ),
                  CustomeTextField(
                    title: "dsfsdfsd",
                  ),
                  CustomeTextField(
                    title: "dsfsdfsd",
                  ),
                  const SizedBox(height: 50),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.orange.shade500,
                              Colors.orange.shade300,
                              Colors.orange,
                            ],
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(50))),
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      alignment: Alignment.center,
                      child: TextWidget(
                        'Forgot Password',
                        color: Colors.white,
                        
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
