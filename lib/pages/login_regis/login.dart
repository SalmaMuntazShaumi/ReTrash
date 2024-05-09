import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:slashcom/pages/component/button.dart';
import 'package:slashcom/pages/login_regis/regis.dart';
import 'package:slashcom/theme/app_color.dart';
import 'package:slashcom/theme/app_text_style.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgrounColor,
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 40, bottom: 20, right: 18, left: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                  child: Text('Login',
                      style: AppTextStyle.appSemiBoldTextStyle(
                          AppColors.titleTextColor, 40))),
              const SizedBox(height: 24),
              Image.asset('assets/login_image.png', width: 122, height: 153),
              const SizedBox(height: 30),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Username',
                        style: AppTextStyle.appMediumTextStyle(
                            AppColors.blackColor, 20)),
                    const SizedBox(height: 8),
                    SizedBox(
                      height: 40,
                      child: TextField(
                        controller: _usernameController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(8)),
                            contentPadding:
                                EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(8)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColors.buttonColor),
                                borderRadius: BorderRadius.circular(8))),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Password',
                        style: AppTextStyle.appMediumTextStyle(
                            AppColors.blackColor, 20)),
                    const SizedBox(height: 8),
                    SizedBox(
                      height: 40,
                      child: TextField(
                        selectionHeightStyle: BoxHeightStyle.tight,
                        obscureText: true,
                        controller: _passwordController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(8)),
                            contentPadding:
                                EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(8)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColors.buttonColor),
                                borderRadius: BorderRadius.circular(8)),
                            suffixIcon: GestureDetector(
                                onTap: () {},
                                child: Icon(MingCute.eye_2_line,
                                    color: Colors.black))),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Don\'t have an account? ',
                            style: AppTextStyle.appMediumTextStyle(
                                AppColors.blackColor, 16)),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterPage()));
                          },
                          child: Text('Register',
                              style: AppTextStyle.appMediumTextStyle(
                                 AppColors.buttonColor, 16)),
                        ),
                        Text(' here!', style: AppTextStyle.appMediumTextStyle(AppColors.blackColor, 16),)
                      ],
                    ),
                    SizedBox(height: 40),
                    AppButton(text: 'Login', route: '/bottomNav',)
                  ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
