import 'package:flutter/material.dart';
import 'package:sante2/src/screens/IntroductionScreens/Aclaraciones.dart';
import 'package:sante2/src/screens/IntroductionScreens/Bienvenida.dart';
import 'package:sante2/src/screens/IntroductionScreens/TerminosCondiciones.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({super.key});

  @override
  IntroductionScreenState createState() => IntroductionScreenState();
}

class IntroductionScreenState extends State<IntroductionScreen> {
  bool showIntroduction = true;

  @override
  void initState() {
    super.initState();
    _checkIfIntroductionIsSeen();
  }

  _checkIfIntroductionIsSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool seen = prefs.getBool('seenIntroduction') ?? false;

    if (seen) {
      setState(() {
        showIntroduction = false;
      });
    } else {
      prefs.setBool('seenIntroduction', true);
    }
  }

  final PageController _controller = PageController();


  @override
  Widget build(BuildContext context) {
    if (showIntroduction) {
      return Scaffold (
        body: Container(
          padding: const EdgeInsets.only(bottom: 80),
            child: PageView(
              controller: _controller,
              children: const [
                TerminosCondiciones(),
                Aclaraciones(),
                Bienvenida(),
              ],
            ),
        ),
        bottomSheet: Container(
          padding: const EdgeInsets.symmetric(horizontal: 1,vertical: 80),
        child: Row(
          children: [
            ElevatedButton(onPressed: () {

            }, child: const Text("Salta")),
            SmoothPageIndicator(controller: _controller, count: 3),
            ElevatedButton(onPressed: () {

            }, child: const Text("Siguiente"))
          ],
        ),
        )
      );
    } else {
      return Container(
        color: Colors.cyan,
      );
    }
  }
}
