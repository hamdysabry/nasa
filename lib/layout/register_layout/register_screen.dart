import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nasa_app/layout/login_layout/login_screen.dart';
import 'package:nasa_app/widget/custom_form_field.dart';
import 'package:nasa_app/widget/custom_password_foem_field.dart';
import 'package:nasa_app/widget/dialog.dart';
import 'package:nasa_app/widget/validation.dart';

class RegisterScreen extends StatefulWidget {
  static const String routeName = "register";

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var firstNameController = TextEditingController();

  var lastNameController = TextEditingController();

  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var confirmpasswordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Color(0xff8940CB),
      //   title: Text(
      //     "Register",
      //     style: TextStyle(color: Colors.white),
      //   ),
      // ),
      body: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage("assets/images/background.jpg"),
              fit: BoxFit.fill,
            )),
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // const Image(image: AssetImage("assets/images/logo.png")),
                Image(image: AssetImage("assets/images/logo.png")),

                SizedBox(
                  height: height * 0.01,
                ),
                Row(
                  children: [
                    Text(
                      "name",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                CustomFormField(
                  controller: firstNameController,
                  Validator: (text) {
                    if (text == null || text.trim().isEmpty) {
                      return "Please Enter your Name";
                    }
                    return null;
                  },
                  title: " Name",
                  textInputType: TextInputType.name,
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Row(
                  children: [
                    Text(
                      "E-mail",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                CustomFormField(
                  controller: emailController,
                  Validator: (text) {
                    if (text == null || text.trim().isEmpty) {
                      return "Please Enter E-mail Address";
                    }
                    if (!Validation.isvalid(text)) {
                      return "please enter a valid email";
                    }
                  },
                  title: "E-mail Address",
                  textInputType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Row(
                  children: [
                    Text(
                      "Password",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                CustomPasswordFormField(
                  controller: passwordController,
                  Validator: (text) {
                    if (text == null || text.trim().isEmpty) {
                      return "Please Enter password";
                    }
                    if (text.length < 8) return "password at lest 8 character";
                  },
                  title: "Password",
                  textInputType: TextInputType.text,
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Row(
                  children: [
                    Text(
                      "Confirm Password",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                CustomPasswordFormField(
                  controller: confirmpasswordController,
                  Validator: (text) {
                    if (text == null || text.trim().isEmpty) {
                      return "Please confirm password";
                    }
                    if (passwordController.text != text)
                      return "password doesn't match";
                  },
                  title: "Confirm Password",
                  textInputType: TextInputType.text,
                ),
                const SizedBox(
                  height: 24,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff1B0B87),
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 100),
                  ),
                  onPressed: () {
                    register();
                  },
                  child: Text(
                    "Register",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                    child: Text(
                      "Already have account ",
                      style: TextStyle(color: Colors.white),
                    )),
                SizedBox(
                  height: height * 0.2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  FirebaseAuth authservice = FirebaseAuth.instance;

  void register() async {
    if (formKey.currentState?.validate() == false) {
      return;
    }
    DialogUtils.ShowLoadingDialog(context, 'Loading...');
    // await Future.delayed(Duration(seconds: 3));
    try {
      var reslut = await authservice.createUserWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
      DialogUtils.hideDialog(context);
      DialogUtils.ShowMessage(context, 'Sucesse');
      //Navigator.pushNamed(context, LoginScreen.routeName);
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => LoginScreen(),
        ),
      );
    } on FirebaseAuthException catch (e) {
      DialogUtils.hideDialog(context);
      String errorMessage = 'Something went wrong..';
      if (e.code == 'weak-password') {
        errorMessage = 'The password provided is too weak.';
      } else if (e.code == 'email-already-in-use') {
        errorMessage = 'The account already exists for that email.';
      }
      DialogUtils.ShowMessage(context, errorMessage, postActionName: 'ok');
    } catch (e) {
      DialogUtils.hideDialog(context);
      String errorMessage = 'Something went wrong..';
      DialogUtils.ShowMessage(
        context,
        errorMessage,
        postActionName: 'cansel',
        nagActionName: 'try again',
        nagAction: () {
          register();
        },
      );
    }
  }
}
