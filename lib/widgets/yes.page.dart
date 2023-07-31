import 'package:attendance/widgets/phone.login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';



class Yes extends StatefulWidget {
  const Yes({super.key});

  @override
  State<Yes> createState() => _YesState();
}

class _YesState extends State<Yes> {
  Future<void> _signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
      // You can perform any additional actions after sign-out here.
    } catch (e) {
      print('Error occurred while signing out: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          children: [
            Text("Phone auth Success"),
            SizedBox(
              height: 100,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Change the text color here
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        10.0), // Optional: Customize the button's shape
                  ),
                ),
                onPressed: () {
                  _signOut();
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => PhoneLoginPage()),
                      ((route) => false));
                },
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text('Done'),
                )),
          ],
        ),
      )),
    );
  }
}
