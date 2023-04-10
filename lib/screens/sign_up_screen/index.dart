import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pocket_cash/widgets/already_have_an_account_acheck.dart';
import 'package:pocket_cash/widgets/rounded_button.dart';
import 'package:pocket_cash/widgets/rounded_input_field.dart';
import 'package:pocket_cash/widgets/rounded_password_field.dart';
import 'package:pocket_cash/widgets/rounded_phone_num_field.dart';
import 'package:pocket_cash/widgets/rounded_refer_code_field.dart';
import 'package:pocket_cash/screens/login_screen/index.dart';
import 'package:pocket_cash/widgets/show_scaffold_msg.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({ Key? key }) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
    // Variables
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final _usernameController = TextEditingController();
  final _passController = TextEditingController();
  bool _obscurePass = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

   return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 135, 42, 236),
        title: const Text('Sign Up'),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/Logo.svg",
              height: size.height * 0.15,
            ),
             Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
            RoundedInputField(
              controller: _usernameController,
              hintText: "Full Name",
              onChanged: (value) {},
            ),
            RoundedPhoneNumField(
              onChanged: (value) {},
            ),
           RoundedReferCodeField(
              hintText:"Refer Code (Optional 1234)",
              onChanged: (value) {},
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
              text: "SIGNUP",
              press: () {
                 if (_formKey.currentState!.validate()) {
                   showScaffoldMessage(
                        context: context,
                        scaffoldkey: _scaffoldKey,
                        message: "Admin sign in info updated successfully!");
                 Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const LoginScreen();
                    },
                  ),
                );
                } else {
                    showScaffoldMessage(
                        context: context,
                        scaffoldkey: _scaffoldKey,
                        bgcolor: Colors.black,
                        message: "Username or Password is invalid.\nPlease try again!");
                }
              },
            ),
            
          ],
        ),
      ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                  Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const LoginScreen();
                    },
                  ),
                ); 
              },
            ),
    ]
    )
    )
    );
  }
}