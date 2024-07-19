import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Introduction extends StatefulWidget {
  const Introduction({super.key});

  @override
  State<Introduction> createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  String ProximaNova = "proximanovacond-medium.otf";
  Color warna = Color(0xFF720000);
  @override
  Widget build(BuildContext context) {
    List<PageViewModel> pageView = [
      PageViewModel(
        titleWidget: Text(
          "Kerjakan tugas sesuai keahlian",
          style: TextStyle(
            fontFamily: ProximaNova,
            fontWeight: FontWeight.w900,
            fontSize: 20
          ),
        ),
        bodyWidget: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Text(
              "Temukan dan selesaikan tugas yang sesuai dengan kemampuan dan keahlian khusus yang Anda miliki.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w500,
                fontFamily: ProximaNova,
                fontSize: 15
            ),
          ),
        ),
          image: Center(
              child: Padding(
                padding:  EdgeInsets.only(top: 100),
                child: Image(
                  image: AssetImage("assets/images/introductionAsset/2.png"),
                ),
              )
          ),

      ),
      PageViewModel(
          titleWidget: Text(
            "Beri tugas kepada orang lain",
            style: TextStyle(
                fontFamily: ProximaNova,
                fontWeight: FontWeight.w900,
                fontSize: 20
            ),
          ),
          bodyWidget: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Text(
            "Serahkan tugas-tugas yang perlu diselesaikan kepada orang lain yang memiliki keahlian yang tepat.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: ProximaNova,
                  fontSize: 15
              ),
            ),
          ),
          image: Center(
              child: Padding(
                padding:  EdgeInsets.only(top: 100),
                child: Image(
                  image: AssetImage("assets/images/introductionAsset/3.png"),
                ),
              )
          )
      ),
      PageViewModel(
          titleWidget: Text(
            "Dapatkan uang dari tugas yang selesai",
            style: TextStyle(
                fontFamily: ProximaNova,
                fontWeight: FontWeight.w900,
                fontSize: 20
            ),
          ),
          bodyWidget: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Text(
             "Peroleh penghasilan dari setiap tugas yang berhasil Anda selesaikan dengan baik.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: ProximaNova,
                  fontSize: 15
              ),
            ),
          ),
          image: Center(
              child: Padding(
                padding:  EdgeInsets.only(top: 100),
                child: Image(
                  image: AssetImage("assets/images/introductionAsset/4.png"),
                ),
              )
          )
      )
    ];
    return Scaffold(
      body: IntroductionScreen(
        pages: pageView,
        showSkipButton: true,
        showNextButton: true,
        showDoneButton: true,
        done: Text(
          "Mulai",
          style: TextStyle(
              fontWeight: FontWeight.bold,
            fontSize: 14,
            fontFamily: ProximaNova,
            color: warna
          ),
        ),
        next: Icon(Icons.arrow_forward),
        skip: Text(
          "Lewati",
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
        dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(20.0, 10.0),
          activeColor: warna,
          color: Colors.black26,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0)
          ),

        ),
        onDone: (){

        },
      ),
    );
  }
}
