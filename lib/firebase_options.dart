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
    apiKey: 'AIzaSyCTZFw5bewmi2KawN2G7Z_gMa-EmW6oYXA',
    appId: '1:730269724979:web:82c42aa67ca8c9c72f4e46',
    messagingSenderId: '730269724979',
    projectId: 'nasa-3609f',
    authDomain: 'nasa-3609f.firebaseapp.com',
    storageBucket: 'nasa-3609f.appspot.com',
    measurementId: 'G-TPGHB3VWHF',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAyphEWPcO0EVpPDAoPBfwkhS3tI-I2bME',
    appId: '1:730269724979:android:c34f19232341a8632f4e46',
    messagingSenderId: '730269724979',
    projectId: 'nasa-3609f',
    storageBucket: 'nasa-3609f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBOghuBU9pv6cy2IJDCs4f0NLg_HGImUQ0',
    appId: '1:730269724979:ios:1c48919c6238a0222f4e46',
    messagingSenderId: '730269724979',
    projectId: 'nasa-3609f',
    storageBucket: 'nasa-3609f.appspot.com',
    iosBundleId: 'com.example.nasaApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBOghuBU9pv6cy2IJDCs4f0NLg_HGImUQ0',
    appId: '1:730269724979:ios:1c48919c6238a0222f4e46',
    messagingSenderId: '730269724979',
    projectId: 'nasa-3609f',
    storageBucket: 'nasa-3609f.appspot.com',
    iosBundleId: 'com.example.nasaApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCTZFw5bewmi2KawN2G7Z_gMa-EmW6oYXA',
    appId: '1:730269724979:web:56a274ca79df28462f4e46',
    messagingSenderId: '730269724979',
    projectId: 'nasa-3609f',
    authDomain: 'nasa-3609f.firebaseapp.com',
    storageBucket: 'nasa-3609f.appspot.com',
    measurementId: 'G-6ZQ766G4SQ',
  );

}