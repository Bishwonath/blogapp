// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
    apiKey: 'AIzaSyCMZQ19ok1jnnFIf02kefdnXH3NLYt9DXM',
    appId: '1:1006567364896:web:f757a1bdfa00143bf6df45',
    messagingSenderId: '1006567364896',
    projectId: 'blogapp-27c4d',
    authDomain: 'blogapp-27c4d.firebaseapp.com',
    storageBucket: 'blogapp-27c4d.appspot.com',
    measurementId: 'G-QE8KGQDJSL',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCBWUEPJTYX7PA3bTHsK5D8dMkdoYRwcqc',
    appId: '1:1006567364896:android:0b536caf8c20c07ef6df45',
    messagingSenderId: '1006567364896',
    projectId: 'blogapp-27c4d',
    storageBucket: 'blogapp-27c4d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDipJRigHpgO-rr-rF7vTjjLlQSZfX5s7I',
    appId: '1:1006567364896:ios:379ea280b7b891c7f6df45',
    messagingSenderId: '1006567364896',
    projectId: 'blogapp-27c4d',
    storageBucket: 'blogapp-27c4d.appspot.com',
    iosBundleId: 'com.example.flutterBlogApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDipJRigHpgO-rr-rF7vTjjLlQSZfX5s7I',
    appId: '1:1006567364896:ios:57fc91614ab69ae8f6df45',
    messagingSenderId: '1006567364896',
    projectId: 'blogapp-27c4d',
    storageBucket: 'blogapp-27c4d.appspot.com',
    iosBundleId: 'com.example.flutterBlogApp.RunnerTests',
  );
}