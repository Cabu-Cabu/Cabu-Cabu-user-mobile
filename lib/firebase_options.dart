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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyC8sBag3SjkIXBv3tBOw9eUmO6ClAByg3g',
    appId: '1:668497409010:web:30dce369b2e44ed41bf16b',
    messagingSenderId: '668497409010',
    projectId: 'cabu-cabu',
    authDomain: 'cabu-cabu.firebaseapp.com',
    storageBucket: 'cabu-cabu.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCivaRCc5jI114wjpq8dubpmI9LtIrckkU',
    appId: '1:668497409010:android:5a51a8b605d79dae1bf16b',
    messagingSenderId: '668497409010',
    projectId: 'cabu-cabu',
    storageBucket: 'cabu-cabu.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDIQjcHFbyTTBE42VYfX2Amscz9n0juGwc',
    appId: '1:668497409010:ios:06bc85ad78443c601bf16b',
    messagingSenderId: '668497409010',
    projectId: 'cabu-cabu',
    storageBucket: 'cabu-cabu.appspot.com',
    iosClientId: '668497409010-vrm8iha2didvdgnvr4e2u3mon2jqjk50.apps.googleusercontent.com',
    iosBundleId: 'com.cabucabu.cabuCabuUserMobile',
  );
}
