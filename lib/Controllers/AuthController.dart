import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:snapshop/Models/UserModel.dart';
import 'package:snapshop/Pages/AuthPage/SignInPage.dart';
import 'package:snapshop/Pages/Home/HomePage.dart';

class AuthController extends GetxController {
  final auth = FirebaseAuth.instance;
  final firestore = FirebaseFirestore.instance;

  RxBool isLoading = false.obs;

  // SIGN IN
  Future<String> signInUser(String email, String password) async {
    if (email.trim().isEmpty || password.trim().isEmpty) {
      log("Plesae fill all the fields.");
      return "Plesae fill all the fields.";
    }

    isLoading.value = true;

    try {
      final credential = await auth.signInWithEmailAndPassword(
        email: email.trim(),
        password: password,
      );
      final user = credential.user;
      if (user != null) {
        try {
          final userDoc = await firestore
              .collection("users")
              .doc(user.uid)
              .get();
          if (!userDoc.exists) {
            await initUser(
              email.trim(),
              user.displayName ?? email.trim().split('@').first,
            );
          }
        } catch (e) {
          log("Could not load user profile: $e");
        }
      }

      Get.offAll(() => HomePage());
      log("User signin successfull!");
      return "You signed in successfully! :) :)";
    } on FirebaseAuthException catch (e) {
      if (e.code == "invalid-email") {
        log("invalid-email");
        return "Incorrect email or password.";
      } else if (e.code == "user-not-found") {
        log("user-not-found");
        return "user-not-found";
      } else if (e.code == "wrong-password") {
        log("wrong-password");
        return "wrong-password";
      } else if (e.code == "user-disabled") {
        log("user-disabled");
        return "user-disabled";
      } else if (e.code == "too-many-requests") {
        log("too-many-requests");
        return "too-many-requests";
      } else if (e.code == "network-request-failed") {
        log("network-request-failed");
        return "network-request-failed";
      }

      return e.message ?? "Something went wrong";
    } catch (e) {
      log("signIn error: $e");
      return "Something went wrong";
    } finally {
      isLoading.value = false;
    }
  }

  // SIGNUP
  Future<String> createUser(
    String email,
    String password,
    String confirmPassword,
    String name,
  ) async {
    if (email.trim().isEmpty ||
        password.trim().isEmpty ||
        name.trim().isEmpty) {
      log("Fill all the fields.");
      return "Fill all the fields.";
    } else if (password != confirmPassword) {
      log("Passwords do not match.");
      return "Passwords do not match.";
    } else {
      final passwordRegex = RegExp(
        r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[!@#$%^&*(),.?":{}|<>]).{8,}$',
      );
      if (!passwordRegex.hasMatch(password)) {
        log("Password does not meet complexity requirements.");
        return "Password must be at least 8 characters with uppercase, lowercase, number, and symbol..";
      }
    }
    isLoading.value = true;
    try {
      await auth.createUserWithEmailAndPassword(
        email: email.trim(),
        password: password.trim(),
      );
      await initUser(email.trim(), name.trim());
      await auth.signOut();

      log("User created successfully!");
      Get.offAll(() => SignInPage());
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
        log("Network issue!");
        return "Network issue!";
      }

      return e.message ?? "Something went wrong";
    } catch (e) {
      log("Signup error: $e");
      return "Something went wrong";
    } finally {
      if (isLoading.value) {
        isLoading.value = false;
      }
    }
  }

  // Save User details to Firestore
  Future<void> initUser(
    String email,
    String name, {
    String profilePicUrl = "",
  }) async {
    final currentUser = auth.currentUser;
    if (currentUser == null) {
      log("No current user after signup.");
      return;
    }
    UserModel newUser = UserModel(
      id: currentUser.uid,
      name: name,
      email: email,
      profilePicUrl: profilePicUrl,
      phoneNumber: "",
      role: "Customer",
      cartItems: [],
      wishlist: [],
      orders: [],
      addresses: [],
      defaultAddressId: "",
      activeStatus: "ENABLED",
      lastOnlineStatus: DateTime.now(),
      createdOn: DateTime.now(),
    );

    try {
      await firestore
          .collection("users")
          .doc(auth.currentUser!.uid)
          .set(newUser.toJson());
    } catch (e) {
      log("Init user error: $e");
    }
  }

  // SIGN OUT
  Future<void> signOutUser() async {
    try {
      await auth.signOut();
    } catch (e) {
      log("Sign out error: $e");
    }

    Get.offAll(() => SignInPage());
  }
}
