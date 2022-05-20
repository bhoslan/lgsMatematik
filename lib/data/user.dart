import 'package:firebase_auth/firebase_auth.dart';

final userName = FirebaseAuth.instance.currentUser?.email;
