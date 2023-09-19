import 'package:flutter/material.dart';
import 'package:greensweep/components/MyButton.dart';
import 'package:greensweep/components/MyTextField.dart';
import 'package:greensweep/components/square_tile.dart';

class LoginPage extends StatelessWidget {
   LoginPage ({super.key});
//credential controllers
final usernameController = TextEditingController();
final passwordController = TextEditingController();

//sign in function
 void signUserIn() {}
 void googleSignIn() {}
void appleSignIn() {}
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: const Color(0xFFFEFAE0),
      body: SingleChildScrollView(

        child: Center(

            child: Column(children: [

              //logo
              const SizedBox(height: 100),
               Image.asset('assets/images/greensweep.png', width: 300),
              const SizedBox(height: 50),
              //welcome back
             const Text('Welcome Back', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFF133A1B))),
             const SizedBox(height: 10),
              //email
              MyTextField(
                controller: usernameController,
                hintText: 'Email',
                obscureText: false,
              ),
              const SizedBox(height: 10),
              //password
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),
            
            
              //forgot password
              const SizedBox(height: 10),
              const Text('Forgot Password?',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color(0xFFBC6C25))
              ),
              //login button
                const SizedBox(height: 15),
                MyButton(
                  placeholderText: 'Login',
                  onTap: signUserIn,
                ),
              //or continue with

               const Padding(
                 padding: EdgeInsets.only(top: 15, left: 15, right: 15 , bottom: 5),
                 child: Row(
                   children: [
                     Expanded(
                        child: Divider(
                          color: Color(0xFFBc6c25),
                          thickness: 1,
                        ),
                     ),
                     Padding(
                       padding: EdgeInsets.all(15.0),
                       child: Text("Or continue with", style: TextStyle(color: Color(0xFF283618), fontSize: 15)),
                     ),
                     Expanded(
                       child: Divider(
                         color: Color(0xFFBc6c25),
                         thickness: 1,
                       ),
                     ),
                   ],
                 ),
               ),

              //google + apple sign in buttons
              Row(
                  children: [
                    //google button
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0, right: 10.0),
                      child: SquareTile(onTap: googleSignIn, tileText: "Google", tileIcon: Image.asset('assets/images/google.png'),),
                    ),
                    //apple button
                    SquareTile(onTap: appleSignIn, tileText: "Apple", tileIcon: Image.asset("assets/images/apple.png")),

                  ],
                ),
              const SizedBox(height: 100),
              //not a member? sign up
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Not a member? ", style: TextStyle(color: Color(0xFF283618), fontSize: 15)),
                  GestureDetector(
                    onTap: () {},
                    child: const Text("Sign Up", style: TextStyle(color: Color(0xFFBC6C25), fontSize: 15, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ]),

        ),
        ),
      );
  }

}