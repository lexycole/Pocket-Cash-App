import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pocket_cash/tabs/bottom_tabs.dart';
import 'package:pocket_cash/widgets/already_have_an_account_acheck.dart';
import 'package:pocket_cash/widgets/rounded_button.dart';
import 'package:pocket_cash/widgets/rounded_input_field.dart';
import 'package:pocket_cash/widgets/rounded_password_field.dart';
import 'package:pocket_cash/screens/main_screen/index.dart';
import 'package:pocket_cash/screens/sign_up_screen/index.dart';
import 'package:pocket_cash/widgets/show_scaffold_msg.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
      // Variables
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final _usernameController = TextEditingController();
  final _passController = TextEditingController();
  bool _obscurePass = true;

  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 135, 42, 236),
        title: const Text('Login'),
      ),
      body: SingleChildScrollView(
      physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/Logo.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
             Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
            RoundedInputField(
               controller: _usernameController,
              hintText: "Your Email",
              onChanged: (value) {
              },
            ),
            RoundedPasswordField(
              controller: _passController,
              onChanged: (value) {},
              obscureText: _obscurePass,
              validator: (pass) {
                      if (pass?.isEmpty ?? true) {
                        return "Please enter your password";
                      }
                      return null;
                    },
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                 if (_formKey.currentState!.validate()) {
                   /// Go to Home
                   showScaffoldMessage(
                        context: context,
                        scaffoldkey: _scaffoldKey,
                        message: "Logo sign in info updated successfully!!!");
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const BottomTab();
                        },
                      ),
                    );
                } else {
                    // Show error message
                    showScaffoldMessage(
                        context: context,
                        scaffoldkey: _scaffoldKey,
                        bgcolor: Colors.black,
                        message: "Username or Password is invalid.\nPlease try again!"
                        );
                }
              },
            ),
            
          ],
        ),
      ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      )
    );
 
  }
}