import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotifyclone/common/widgets/appbar/appbar.dart';
import 'package:spotifyclone/common/widgets/button/basic_app_button.dart';
import 'package:spotifyclone/core/config/assets/app_vectors.dart';
import 'package:spotifyclone/presentation/auth/signup.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _signupText(context),
      appBar: BasicAppbar(
        centretitle: true,
        title: SvgPicture.asset(
          AppVectors.logo,
          width: 40,
          height: 40,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _registerText(),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 20,
            ),
            _emailField(context),
            SizedBox(
              height: 20,
            ),
            _passwordField(context),
            SizedBox(
              height: 20,
            ),
            BasicAppButton(onPressed: () {}, title: 'Sign In')
          ],
        ),
      ),
    );
  }

  Widget _registerText() {
    return Center(
      child: const Text(
        'Sign In',
        textAlign: TextAlign.center,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
      ),
    );
  }

  Widget _emailField(BuildContext context) {
    return TextField(
      decoration: InputDecoration(filled: true, hintText: 'Email')
          .applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }

  Widget _passwordField(BuildContext context) {
    return TextField(
      decoration: InputDecoration(hintText: 'Password')
          .applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }

  Widget _signupText(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Not A Member?',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
          ),
          TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => SignupPage()));
              },
              child: Text('Register Now'))
        ],
      ),
    );
  }
}
