import 'package:flutter/material.dart';

class TerminosCondiciones extends StatelessWidget {
  const TerminosCondiciones({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 50),
                child: const Text(
                  "Somos el lugar #1 en México",
                  style: TextStyle(color: Colors.lightBlueAccent),
                ),
              ),
              const Spacer(),
              Image.asset(
                'assets/IntroScreenImage3.jpg',
                height: 350,
                alignment: Alignment.center,
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.only(bottom: 80),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  child: const Text("OK!"),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
