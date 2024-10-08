// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyC-xLCo3PUhqxvdjjeJ3L8FRsxNrdtGPLs',
    appId: '1:148490071791:web:41e61de033307d5ffdb51a',
    messagingSenderId: '148490071791',
    projectId: 'spotifyclone-cb8be',
    authDomain: 'spotifyclone-cb8be.firebaseapp.com',
    storageBucket: 'spotifyclone-cb8be.appspot.com',
    measurementId: 'G-FM9H7H7CCG',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAEW06EEvM7Kg4VyByyb7F2gP5dJLZP6jc',
    appId: '1:148490071791:android:6ba2917630b6db05fdb51a',
    messagingSenderId: '148490071791',
    projectId: 'spotifyclone-cb8be',
    storageBucket: 'spotifyclone-cb8be.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBFZIcXn_sD9C2ftd363yplZ3km-ZiZyRI',
    appId: '1:148490071791:ios:a235c72b63c0ffe4fdb51a',
    messagingSenderId: '148490071791',
    projectId: 'spotifyclone-cb8be',
    storageBucket: 'spotifyclone-cb8be.appspot.com',
    iosBundleId: 'com.example.spotifyclone',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBFZIcXn_sD9C2ftd363yplZ3km-ZiZyRI',
    appId: '1:148490071791:ios:a235c72b63c0ffe4fdb51a',
    messagingSenderId: '148490071791',
    projectId: 'spotifyclone-cb8be',
    storageBucket: 'spotifyclone-cb8be.appspot.com',
    iosBundleId: 'com.example.spotifyclone',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyC-xLCo3PUhqxvdjjeJ3L8FRsxNrdtGPLs',
    appId: '1:148490071791:web:3c597b23227579b0fdb51a',
    messagingSenderId: '148490071791',
    projectId: 'spotifyclone-cb8be',
    authDomain: 'spotifyclone-cb8be.firebaseapp.com',
    storageBucket: 'spotifyclone-cb8be.appspot.com',
    measurementId: 'G-32P0QWBM3Y',
  );
}
