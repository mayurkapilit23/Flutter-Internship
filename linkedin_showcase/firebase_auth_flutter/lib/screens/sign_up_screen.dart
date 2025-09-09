import 'package:firebase_auth_flutter/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../util/app_colors.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBgColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Column(
                    children: [
                      SvgPicture.asset('assets/plant_logo.svg', width: 100),
                      Text(
                        'PlantCare',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text('Name', style: TextStyle(fontWeight: FontWeight.w700)),
                SizedBox(height: 10),
                TextField(
                  maxLines: 1,
                  decoration: InputDecoration(
                    hintText: 'John Deo',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.lightGreyColor),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      // Border when focused
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 1.5,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      // Border when not focused
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  'Email Address',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 10),
                TextField(
                  maxLines: 1,
                  decoration: InputDecoration(
                    hintText: 'example@gmail.com',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.lightGreyColor),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      // Border when focused
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 1.5,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      // Border when not focused
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),

                Text('Password', style: TextStyle(fontWeight: FontWeight.w700)),
                SizedBox(height: 10),
                TextField(
                  obscureText: true,
                  maxLines: 1,
                  decoration: InputDecoration(
                    hintText: '********',
                    hintStyle: TextStyle(letterSpacing: 5, color: Colors.grey),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.lightGreyColor),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      // Border when focused
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 1.5,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      // Border when not focused
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Material(
                  color: Colors.black, // Button background
                  borderRadius: BorderRadius.circular(12),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(12), // Ripple shape
                    splashColor: Colors.white.withOpacity(0.3), // Ripple color
                    onTap: () {},
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 17),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?"),
                    SizedBox(width: 5),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Log in',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
