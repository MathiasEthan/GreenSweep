import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
   HomePage({super.key});

  final user = FirebaseAuth.instance.currentUser;

  void SignUserOut(){
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'), actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: SignUserOut,
          ),
      ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(60.0),
        child: Center(
          child: Text(
                "Welcome, you are logged in as ${user!.email!}",
                style: const TextStyle(fontSize: 20),
            ),
        ),
      ),

    );
  }
}