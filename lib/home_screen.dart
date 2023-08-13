import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  final void Function() startButtonOnClickMethod;
  const HomeScreen(this.startButtonOnClickMethod, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          /*
          Opacity(
            opacity: 1.0,
            child: Image.asset(
              "assets/images/quiz-logo.png",
              width: 300,
              height: 300,
            ),
          ),
          */
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
            height: 300,
          ),
          const SizedBox(
            height: 20,
          ),
          const HeaderText("Learn Flutter the fun way!"),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton.icon(
            onPressed: startButtonOnClickMethod,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepOrange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
            ),
            icon: const Icon(Icons.arrow_forward_sharp),
            label: const Text("Start Quiz"),
          )
        ],
      ),
    );
  }
}

class HeaderText extends StatelessWidget {
  final String message;
  const HeaderText(this.message, {super.key});
  @override
  Text build(BuildContext context) {
    return Text(
      message,
      style: GoogleFonts.lato(
        fontSize: 18,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }
}
