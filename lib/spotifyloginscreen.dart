import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotifyclone/common/helper/is_dark_mode.dart';
import 'package:spotifyclone/common/widgets/appbar/appbar.dart';
import 'package:spotifyclone/common/widgets/button/basic_app_button.dart';
import 'package:spotifyclone/core/config/assets/app_images.dart';
import 'package:spotifyclone/core/config/assets/app_vectors.dart';
import 'package:spotifyclone/presentation/auth/pages/sign_in.dart';
import 'package:spotifyclone/presentation/auth/signup.dart';

class SpotifyLoginScreen extends StatefulWidget {
  const SpotifyLoginScreen({super.key});

  @override
  State<SpotifyLoginScreen> createState() => _SpotifyLoginScreenState();
}

class _SpotifyLoginScreenState extends State<SpotifyLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        const BasicAppbar(),
        Align(
          alignment: Alignment.topRight,
          child: SvgPicture.asset(AppVectors.topPattern),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: SvgPicture.asset(AppVectors.bottomPattern),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Image.asset(AppImages.authbg),
        ),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(AppVectors.logo),
                const SizedBox(
                  height: 40,
                ),
                const Text('Enjoy Listening To Music',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 26)),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                    'Spotify is a proprietary Swedisha audio streaming and media services provider',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 17)),
                const SizedBox(
                  height: 13,
                ),
                Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: BasicAppButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          SignupPage()));
                            },
                            title: 'Register')),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        flex: 1,
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          SignInPage()));
                            },
                            child: Text(
                              'sign in',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: context.isDarkMode
                                      ? Colors.white
                                      : Colors.black),
                            ))),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ));
    // Center(
    //   child: Padding(
    //     padding: const EdgeInsets.all(20.0),
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: <Widget>[
    //         const SizedBox(height: 40),
    //         SvgPicture.asset(
    //           AppVectors.logo,
    //         ),
    //         const SizedBox(height: 20),
    //         const Text(
    //           'Enjoy Listening To Music',
    //           style: TextStyle(
    //             fontSize: 24,
    //             fontWeight: FontWeight.bold,
    //           ),
    //           textAlign: TextAlign.center,
    //         ),
    //         const SizedBox(height: 10),
    //         const Text(
    //           'Spotify is a proprietary Swedish audio streaming and media services provider',
    //           style: TextStyle(
    //             fontSize: 16,
    //             color: Colors.grey,
    //           ),
    //           textAlign: TextAlign.center,
    //         ),
    //         const SizedBox(height: 40),
    //         Image.asset(
    //           'assets/images/auth_bg.png',
    //           height: 200,
    //         ),
    //         const SizedBox(height: 20),
    //         Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //           children: <Widget>[
    //             ElevatedButton(
    //               style: ElevatedButton.styleFrom(
    //                 backgroundColor: Colors.green,
    //                 padding: const EdgeInsets.symmetric(
    //                   horizontal: 50,
    //                   vertical: 15,
    //                 ),
    //                 textStyle: const TextStyle(
    //                   fontSize: 18,
    //                 ),
    //               ),
    //               onPressed: () {
    //                 // Handle Register button press
    //               },
    //               child: const Text('Register'),
    //             ),
    //             TextButton(
    //               style: TextButton.styleFrom(
    //                 foregroundColor: Colors.black,
    //                 textStyle: const TextStyle(
    //                   fontSize: 18,
    //                 ),
    //               ),
    //               onPressed: () {
    //                 // Handle Sign in button press
    //               },
    //               child: const Text('Sign in'),
    //             ),
    //           ],
    //         ),
    //       ],
    //     ),
    //   ),
    // ),
  }
}
