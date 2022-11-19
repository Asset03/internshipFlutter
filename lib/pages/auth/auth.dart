import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hive/hive.dart';

import '../../core/colors/colorStyles.dart';
import '../../core/fonts/textStyles.dart';
import '../post/Post.dart';


class AuthGmailScreen extends StatefulWidget {
  const AuthGmailScreen({Key? key}) : super(key: key);

  @override
  State<AuthGmailScreen> createState() => _AuthGmailScreenState();
}

class _AuthGmailScreenState extends State<AuthGmailScreen> {

  bool obscureText = true;
  TextEditingController loginEditingController = TextEditingController();
  TextEditingController passwordEditingController = TextEditingController();
  List list = ['Бизнес', 'Классика', 'Развитие', 'Фантастика'];
  bool validation = false;
  bool loading = false;
  bool wrongPassOrLog = false;
  bool emptyText = true;
  bool emptyText2 = true;


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    double height = MediaQuery
        .of(context)
        .size
        .height;

    return Scaffold(
      backgroundColor: const Color(0xffE8E9ED),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(24, 0, 0, 40),
            child: Text(
              'Bxoд',
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.w700,
                color: Colors.white,
                fontFamily: 'SF Pro Display',
              ),
            ),
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.75),
                borderRadius: BorderRadius.circular(12),
              ),
              width: width-48,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    const SizedBox(
                      height: 20,
                    ),

                    TextFormField(
                      // autofocus: true,
                      controller: loginEditingController,
                      onChanged: (value) {
                        setState(() {
                          validation = false;
                          wrongPassOrLog = false;
                          emptyText = false;
                        });
                      },
                      // cursorColor: const Color(0xFF9B51E0),
                      style: TextStyles.mediumStyle.copyWith(fontSize: 16,
                          color: ColorStyles.neutralsTextPrimaryColor),
                      obscuringCharacter: '•',
                      decoration: InputDecoration(
                        labelText: 'Email',
                        // focusColor: const Color(0xFF9B51E0),

                        // labelStyle: TextStyle(
                        //     color: myFocusNodeForEmail.hasFocus ? Colors.grey : const Color(0xFF9B51E0)
                        // ),
                        hintStyle: TextStyles.mediumStyle.copyWith(fontSize: 16,
                            color: const Color(0xff767676)),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: validation
                                ? ColorStyles.errorBorderColor
                                : Colors.grey,

                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: validation
                                ? ColorStyles.errorBorderColor
                                : const Color(0xff828282),
                          ),
                        ),
                        // contentPadding: EdgeInsets.fromLTRB(12, 0, 12, 6),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),

                    TextFormField(
                      // autofocus: true,
                        controller: passwordEditingController,
                        onChanged: (value) {
                          setState(() {
                            validation = false;
                            wrongPassOrLog = false;
                            emptyText = false;
                          });
                        },
                        style: TextStyles.mediumStyle.copyWith(
                          fontSize: 16,
                          color: ColorStyles.neutralsTextPrimaryColor,
                          // letterSpacing: obscureText && passwordEditingController != '' ? 3.0 : 0,
                        ),
                        obscureText: obscureText,
                        obscuringCharacter: '*',

                      decoration: InputDecoration(
                        labelText: 'Пароль',
                        // labelStyle: TextStyle(
                        //     color: myFocusNode.hasFocus ? Colors.grey : const Color(0xFF9B51E0)
                        // ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: validation
                                ? ColorStyles.errorBorderColor
                                : Colors.grey,

                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: validation
                                ? ColorStyles.errorBorderColor
                                : const Color(0xff828282),
                          ),
                        ),
                        // contentPadding: EdgeInsets.fromLTRB(12, 0, 12, 6),
                      ),
                    ),
                    validation ? const SizedBox(height: 8,) : const Offstage(),
                    validation ?
                    Text(
                      "Қате E-mail немесе Пароль",
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'CeraPro',
                        fontWeight: FontWeight.w500,
                        color: ColorStyles.errorBorderColor,
                      ),
                    )
                        : const Offstage(),
                    const SizedBox(height: 20,),

                    Center(
                      child: TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: loginEditingController.text == '' || passwordEditingController.text == '' ? const Color(0xFF9B51E0).withOpacity(0.5) : const Color(0xFF9B51E0),
                          minimumSize: const Size(230, 38),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                        onPressed: () {
                          if(loginEditingController.text != '' && passwordEditingController.text != '') {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const Post()
                                ));
                          } else {
                            setState(() {
                              validation = true;
                            });
                          }
                        },
                        child: !loading ? const Text(
                          "Войти",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'CeraPro',
                            fontWeight: FontWeight.w500,
                          ),
                        ) : const CupertinoActivityIndicator(color: Colors.white,),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      )
    );
  }
}