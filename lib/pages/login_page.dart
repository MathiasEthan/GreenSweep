import 'package:flutter/material.dart';
import 'package:greensweep/components/MyButton.dart';
import 'package:greensweep/components/MyTextField.dart';

class LoginPage extends StatelessWidget {
   LoginPage ({super.key});

final usernameController = TextEditingController();
final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F0F0),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(1.0),
            
            child: Column(children: [
          
             const SizedBox(height: 20),
              //logo
               Image.asset('assets/images/greensweep.png', scale: 1.0,),
               
              //welcome back
             const Text('Welcome Back', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFF133A1B))),
             const SizedBox(height: 5),
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
              const SizedBox(height: 5),
              const Text('Forgot Password?',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color(0xFF011B10)),
              ),
              //login button
                const SizedBox(height: 20),
                MyButton(),
              //or continue with
                
              //google + apple sign in buttons
                
              //not a member? sign up
            ]),
          ),
        ),
      ),
    );
  }

}