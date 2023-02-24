import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_intro_screen/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_intro_screen/model/user_model.dart';

class AuthMethods {
  final FirebaseAuth _firebaseAuth = firebaseAuth;
  final FirebaseFirestore _fireStore = firebaseFirestore;

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  Future<void> deleteAccount() async {
    //deleting the user information from the database than delete
    await _fireStore
        .collection('users')
        .doc(_firebaseAuth.currentUser!.uid)
        .delete();
    await _firebaseAuth.currentUser!.delete();
  }

  //GetUserInfo
  Future<UserModel> getUserInfo() async {
    User currentUser = _firebaseAuth.currentUser!;
    DocumentSnapshot documentSnapshot =
        await _fireStore.collection('users').doc(currentUser.uid).get();
    return UserModel.getValuesFromSnap(documentSnapshot);
  }

  //SignupUser
  Future<String> signUpUser({
    required String username,
    required String email,
    required String password,
  }) async {
    String res = "Some error occurred";
    try {
      //if the fields are not empty than registering the user
      if (email.isNotEmpty && password.isNotEmpty) {
        UserCredential credential = await _firebaseAuth
            .createUserWithEmailAndPassword(email: email, password: password);
        UserModel user = UserModel(
          uid: credential.user!.uid,
          username: username.trim(),
          email: email.trim(),
          // photoUrl: staticPhotoUrl,
          // bio: "",
          // contact: "",
          // contactEmail: "",
          // location: "",
          // isOnline: false,
          // isInCall: false,
          // token: '',
          // blockList: [],
          // contacts: [],
        );
        await _fireStore
            .collection("users")
            .doc(credential.user!.uid)
            .set(user.toJson());
        res = "Success";
      }
    } on FirebaseAuthException catch (err) {
      res = err.message.toString();
    }
    return res;
  }

  //loginUser
  Future<String> loginUser(
      {required String email,
      required String password,
      required BuildContext context}) async {
    String res = "Some error occurred";
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      res = "Success";
    } on FirebaseAuthException catch (err) {
      res = err.message.toString();
    }
    return res;
  }

  Future<String> resetPassword({required String email}) async {
    String result = "";
    await firebaseAuth
        .sendPasswordResetEmail(email: email)
        .then((value) => result = "sent")
        .catchError((e) => result = e.toString());
    return result;
  }
}
