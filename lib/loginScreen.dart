import 'package:facebook/reusable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'HomeScreen.dart';
import 'Model/UserModel.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = "login";
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromRGBO(236, 239, 245, 4),
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Expanded(
              child: Icon(
                Icons.facebook,
                size: 70,
                color: Colors.blueAccent,
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  TextFieldCu(
                    'Mobile number or email',
                    inputType: TextInputType.emailAddress,
                    textController: emailController,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFieldCu(
                    'Password',
                    suffixIconCs: IconButton(
                      icon: const Icon(
                        Icons.remove_red_eye_outlined,
                        color: Colors.grey,
                      ),
                      onPressed: () {},
                    ),
                    obscureTextCs: true,
                    textController: passwordController,

                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      var user = UserModel(emailController,passwordController);
                      Navigator.pushReplacementNamed(context, HomeScreen.routeName , arguments: user );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      minimumSize: const Size(double.infinity, 50),
                    ),
                    child:  Text(
                      'Log in',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    child: Text(
                      'Forgot Password?',
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromRGBO(236, 239, 245, 4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                        side: const BorderSide(
                          color: Colors.blueAccent,
                          width: 1,
                        ),
                      ),
                      minimumSize: const Size(double.infinity, 50),
                    ),
                    child: Text(
                      'Create new account',
                      style: GoogleFonts.poppins(
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
