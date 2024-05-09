import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:slashcom/pages/login_regis/login.dart';

import '../../theme/app_color.dart';
import '../../theme/app_text_style.dart';
import '../component/button.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgrounColor,
      body: SafeArea(
        child: Padding(
          padding:
          const EdgeInsets.only(top: 40, bottom: 20, right: 18, left: 18),
          child: ListView(
              children: [
                Center(
                    child: Text('Register',
                        style: AppTextStyle.appSemiBoldTextStyle(
                            AppColors.titleTextColor, 40))),
                const SizedBox(height: 24),
                Image.asset('assets/regis_image.png', width: 211, height: 196),
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
                const SizedBox(height: 12),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Confirm Password',
                          style: AppTextStyle.appMediumTextStyle(
                              AppColors.blackColor, 20)),
                      const SizedBox(height: 8),
                      SizedBox(
                        height: 40,
                        child: TextField(
                          selectionHeightStyle: BoxHeightStyle.tight,
                          obscureText: true,
                          controller: _confirmPasswordController,
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
                const SizedBox(height: 12),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Phone Number',
                          style: AppTextStyle.appMediumTextStyle(
                              AppColors.blackColor, 20)),
                      const SizedBox(height: 8),
                      SizedBox(
                        height: 40,
                        child: TextField(
                          keyboardType: TextInputType.phone,
                          selectionHeightStyle: BoxHeightStyle.tight,
                          controller: _phoneController,
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
                        ),
                        ),
                      )],
                  ),
                ),
                const SizedBox(height: 12),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Email',
                          style: AppTextStyle.appMediumTextStyle(
                              AppColors.blackColor, 20)),
                      const SizedBox(height: 8),
                      SizedBox(
                        height: 40,
                        child: TextField(
                          selectionHeightStyle: BoxHeightStyle.tight,
                          controller: _emailController,
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
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 42),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Already have an account? ',
                              style: AppTextStyle.appMediumTextStyle(
                                  AppColors.blackColor, 16)),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                            },
                            child: Text('Login',
                                style: AppTextStyle.appMediumTextStyle(
                                    AppColors.buttonColor, 16)),
                          ),
                          Text(' here!', style: AppTextStyle.appMediumTextStyle(AppColors.blackColor, 16),)
                        ],
                      ),
                      SizedBox(height: 40),
                      AppButton(text: 'Register', route: '/login',)
                    ])
              ],
            ),
          ),
        ),
      );
  }
}
