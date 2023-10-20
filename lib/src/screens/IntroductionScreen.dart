import 'package:flutter/material.dart';
import 'package:sante2/src/screens/IntroductionScreens/Aclaraciones.dart';
import 'package:sante2/src/screens/IntroductionScreens/Bienvenida.dart';
import 'package:sante2/src/screens/IntroductionScreens/TerminosCondiciones.dart';
import 'package:sante2/src/screens/Sante.dart';
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

  void nextPage() {
    final currentPage = _controller.page;
    if (currentPage != null && currentPage < 2) {
      _controller.animateToPage(
        currentPage.toInt() + 1,
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    } else {
      Navigator.pushNamed(context, '/home');
    }
  }
  void backPage() {
    final currentPage = _controller.page;
    if (currentPage != null && currentPage > 0) {
      _controller.animateToPage(
        currentPage.toInt() - 1,
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    }
  }


  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    if (showIntroduction) {
      return Scaffold(
        body: Container(
          padding: const EdgeInsets.only(bottom: 50),
          child: PageView(
            controller: _controller,
            physics: const NeverScrollableScrollPhysics(),
            children: const [
              TerminosCondiciones(),
              Aclaraciones(),
              Bienvenida(),
            ],
          ),
        ),
        bottomSheet: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  backPage();
                },
                child: const Text("Retroceder"),
              ),
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: const ColorTransitionEffect(
                  activeDotColor: Colors.lightBlueAccent,
                ),
              ),
              TextButton(
                onPressed: () {
                  nextPage();
                },
                child: const Text("Siguiente Paso"),
              ),
            ],
          ),
        ),
      );
    } else {
      return const Sante();
    }
  }
}