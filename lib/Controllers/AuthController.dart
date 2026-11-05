import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:snapshop/Pages/Home/HomePage.dart';

class AuthController extends GetxController {
  final auth = FirebaseAuth.instance;
  final firestore = FirebaseFirestore.instance;
  RxBool isLoading = false.obs;

  // SIGNUP
  Future<String> createUser(String email, String password) async {
    if (email == "" && password == "") {
      log("Email and password are empty.");
      return "Email and password cannot be empty.";
    }
    isLoading.value = true;
    try {
      await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await initUser(email, password);
      log("User created successfully!");
      Get.offAll(() => HomePage());
      return "You signed up successfully";
    } on FirebaseAuthException catch (e) {
      log("Signup error: ${e.code} ----- ${e.message}");

      if (e.code == "weak-password") {
        log("The password you provided is too weak");
        return "The password you provided is too weak";
      } else if (e.code == "email-already-in-use") {
        log("This email id already has an account!");
        return "This email id already has an account!";
      } else if (e.code == "invalid-email") {
        log("Invalid email");
        return "Invalid email!";
      } else if (e.code == "network-request-failed") {
        log("This email id already has an account!");
        return "Network issue!";
      }

      return e.message ?? "Something went wrong";
    } catch (e) {
      log("Signup error: $e");
      return "Something went wrong";
    } finally {
      isLoading.value = false;
    }
  }

  // Save User details to Firestore
  Future<void> initUser(String email, String password) async {}

  //
}
