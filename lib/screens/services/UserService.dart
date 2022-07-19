import 'package:firebase_auth/firebase_auth.dart';
import 'package:simple_flutter_app/models/UserModel.dart';

class UserService {
  FirebaseAuth _auth = FirebaseAuth.instance;
  UserCredential? userCredential;
  Future<UserModel> auth(UserModel userModel) async {
    try {
      userCredential = await _auth.signInWithEmailAndPassword(
        email: userModel.email,
        password: userModel.password,
      );
    } catch (e) {
      userCredential = await _auth.createUserWithEmailAndPassword(
        email: userModel.email,
        password: userModel.password,
      );
    }
    userModel.setUid = userCredential!.user!.uid;

    return userModel;
  }
}