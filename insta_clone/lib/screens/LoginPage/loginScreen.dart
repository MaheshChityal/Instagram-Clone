import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(237, 9, 24, 36),
            const Color.fromARGB(255, 0, 33, 59),
          ],
        )),
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Image.asset(
              "assets/images/insta-logo.png",
              fit: BoxFit.contain,
              height: MediaQuery.of(context).size.height * 0.10,
            ),
            const SizedBox(
              height: 100,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Username, email address or mobile num...',
                hintStyle: TextStyle(color: Colors.white24,fontSize:17),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: TextStyle(color: Colors.white24,fontSize:17),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                minimumSize: const Size.fromHeight(50),
              ),
              child: const Text(
                'Log In',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Forgotten password?',
                style: TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.w400),
              ),
            ),
            Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.blue),
                      minimumSize: const Size.fromHeight(50),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Create new account',
                      style: TextStyle(fontSize: 18, color: Colors.blue),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Image.asset(
                  "assets/images/meta-logo.png",
                  fit: BoxFit.contain,
                  width: 75,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
