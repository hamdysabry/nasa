import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nasa_app/layout/home_layout/home_view.dart';
import 'package:nasa_app/layout/register_layout/register_screen.dart';
import 'package:nasa_app/widget/custom_form_field.dart';
import 'package:nasa_app/widget/custom_password_foem_field.dart';
import 'package:nasa_app/widget/dialog.dart';
import 'package:nasa_app/widget/validation.dart';

class LoginScreen extends StatefulWidget {
  static String routeName = "Login screen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return
        //  BlocConsumer<AuthCubit, AuthState>(
        //   listener: (context, state) {
        //     if (state is LoginLoading) {
        //       isLoading = true;
        //       // DialogUtils.ShowLoadingDialog(context, 'Loading...');
        //     } else if (state is LoginSuccess) {
        //       isLoading = false;
        //       //DialogUtils.hideDialog(context);
        //       Navigator.of(context).pushReplacement(
        //         MaterialPageRoute(
        //           builder: (context) => HomeView(),
        //         ),
        //       );
        //     } else if (state is FaliuarLogin) {
        //       isLoading = false;
        //       // DialogUtils.hideDialog(context);
        //       DialogUtils.ShowMessage(context, state.errmessage,
        //           postActionName: 'ok');
        //       // showSnackBar(
        //       //   context,
        //       //   state.errmessage,
        //       // );
        //     }
        //   },
        //   builder: (context, state) =>
        Scaffold(
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
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image(image: AssetImage("assets/images/logo.png")),
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
                const SizedBox(
                  height: 24,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff1B0B87),
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 100),
                  ),
                  onPressed: () {
                    // if (formKey.currentState!.validate()) {
                    //   BlocProvider.of<AuthCubit>(context).Login(
                    //     email: emailController.text,
                    //     password: passwordController.text,
                    //   );
                    // }

                    Login();
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => RegisterScreen(),
                        ),
                      );
                    },
                    child: Text(
                      "Don't have account?",
                      style: TextStyle(color: Colors.white),
                    )),
                SizedBox(
                  height: height * 0.4,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  FirebaseAuth authservice = FirebaseAuth.instance;
  void Login() async {
    if (formKey.currentState?.validate() == false) {
      return;
    }
    DialogUtils.ShowLoadingDialog(context, 'Loading...');
    // await Future.delayed(Duration(seconds: 3));
    try {
      var reslut = await authservice.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
      DialogUtils.hideDialog(context);
      DialogUtils.ShowMessage(context, 'Sucessfull login');
      //Navigator.pushReplacementNamed(context, );
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => HomeView(),
        ),
      );
    } on FirebaseAuthException catch (e) {
      DialogUtils.hideDialog(context);
      String errorMessage = ' wrong email or password';
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
          Login();
        },
      );
    }
  }

  // void Login() async {
  //   // await Future.delayed(Duration(seconds: 3));
  //   try {
  //     if (formKey.currentState?.validate() == false) {
  //       return;
  //     }
  //     DialogUtils.ShowLoadingDialog(context, 'Loading...');
  //     Navigator.pop(context);

  //     var reslut = await authservice.createUserWithEmailAndPassword(
  //         email: emailController.text, password: passwordController.text);
  //     DialogUtils.hideDialog(context);
  //     DialogUtils.ShowMessage(context, 'Sucesse');
  //     //Navigator.pushNamed(context, LoginScreen.routeName);
  //     Navigator.of(context).pushReplacement(
  //       MaterialPageRoute(
  //         builder: (context) => HomeView(),
  //       ),
  //     );
  //   } on FirebaseAuthException catch (e) {
  //     DialogUtils.hideDialog(context);
  //     String errorMessage = 'Something went wrong..';
  //     if (e.code == 'user-not-found') {
  //       errorMessage = 'wrong email';
  //     } else if (e.code == 'wrong-password') {
  //       errorMessage = 'wrong password';
  //     }
  //     DialogUtils.ShowMessage(context, errorMessage, postActionName: 'ok');
  //   } catch (e) {
  //     DialogUtils.hideDialog(context);
  //     String errorMessage = 'Something went wrong..';
  //     DialogUtils.ShowMessage(
  //       context,
  //       errorMessage,
  //       postActionName: 'cansel',
  //       nagActionName: 'try again',
  //       nagAction: () {
  //         Login();
  //       },
  //     );
  //   }
  // }

  // void Login() async {
  //   if (formKey.currentState?.validate() == false) {
  //     return;
  //   }
  //   DialogUtils.ShowLoadingDialog(context, 'Loading...');

  //   Navigator.pop(context);
  //   try {
  //     var reslut = await authservice.signInWithEmailAndPassword(
  //         email: emailController.text, password: passwordController.text);
  //     // Navigator.pop(context);
  //     DialogUtils.hideDialog(context);
  //     DialogUtils.ShowMessage(context, 'Sucessfull login');

  //     Navigator.of(context).pushReplacement(
  //       MaterialPageRoute(
  //         builder: (context) => HomeView(),
  //       ),
  //     );
  //   } on FirebaseAuthException catch (e) {
  //     String errmessage = 'Wrong email or password';
  //     if (e.code == 'user-not-found') {
  //       errmessage:
  //       'No user found for that email.';
  //       DialogUtils.ShowMessage(context, errmessage);
  //     } else if (e.code == 'wrong-password') {
  //       errmessage:
  //       'Wrong password provided for that user.';
  //       DialogUtils.ShowMessage(context, errmessage);
  //     }
  //   } catch (e) {
  //     DialogUtils.ShowMessage(
  //       context,
  //       "Something went wrong..",
  //       postActionName: 'cansel',
  //       nagActionName: 'try again',
  //       nagAction: () {
  //         Login();
  //       },
  //     );
  //   }
  // }
}
