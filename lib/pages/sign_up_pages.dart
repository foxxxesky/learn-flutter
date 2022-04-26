import 'package:flutter/material.dart';
import 'package:shamo_apps/theme.dart';

class SignUpPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // SignUp Text
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sign Up',
              style: primaryTextStyle.copyWith(
                fontSize: 24,
                fontWeight: semibold,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              'Register and Happy Shoping',
              style: subtitleTextStyle.copyWith(
                fontSize: 14,
              ),
            )
          ],
        ),
      );
    }

    // Name Input
    Widget nameInput() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Full Name',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: backgroundColor2,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/profile_icon.png',
                      width: 17,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                        child: TextFormField(
                      style: primaryTextStyle,
                      decoration: InputDecoration(
                        hintText: 'Your Full Name',
                        hintStyle: subtitleTextStyle,
                      ),
                    ))
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    // Username Input
    Widget usernameInput() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Username',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: backgroundColor2,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/username_icon.png',
                      width: 17,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                        child: TextFormField(
                      style: primaryTextStyle,
                      decoration: InputDecoration(
                        hintText: 'Your Username',
                        hintStyle: subtitleTextStyle,
                      ),
                    ))
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    // Email Input
    Widget emailInput() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email Address',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: backgroundColor2,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/mail_icon.png',
                      width: 17,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                        child: TextFormField(
                      style: primaryTextStyle,
                      decoration: InputDecoration(
                        hintText: 'Your Email Address',
                        hintStyle: subtitleTextStyle,
                      ),
                    ))
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    // Password
    Widget passwordInput() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Password',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: backgroundColor2,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/pass_icon.png',
                      width: 17,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                        child: TextFormField(
                      style: primaryTextStyle,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Your Password',
                        hintStyle: subtitleTextStyle,
                      ),
                    ))
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    // Login Button
    Widget signupButton() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.only(top: 30),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
          child: Text(
            'Sign Up',
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
          style: TextButton.styleFrom(
              backgroundColor: primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              )),
        ),
      );
    }

    // footer
    Widget footer() {
      return Container(
        margin: EdgeInsets.only(bottom: 30),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Already have an account? ',
            style: subtitleTextStyle.copyWith(
              fontSize: 12,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/sign-in');
            },
            child: Text(
              'Sign In',
              style: purpleTextStyle.copyWith(
                fontSize: 12,
                fontWeight: medium,
              ),
            ),
          ),
        ]),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              nameInput(),
              usernameInput(),
              emailInput(),
              passwordInput(),
              signupButton(),
              Spacer(),
              footer(),
            ],
          ),
        ),
      ),
    );
  }
}
