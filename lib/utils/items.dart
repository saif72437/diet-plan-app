import 'package:dashed_circular_progress_bar/dashed_circular_progress_bar.dart';
import 'package:diet_plan_app/screens/detailScreen.dart';
import 'package:diet_plan_app/utils/appStyles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Items extends StatelessWidget {
  String name, url;
  double progress;
   Items({Key? key, required this.name, required this.progress, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<double> _valueNotifier = ValueNotifier(0);

    return  Container(
        width: double.infinity,
        child: Stack(
          children: [
            Hero(
              tag: 'imgTag',
                child: Image(image: NetworkImage(url),height: 200, width: double.infinity, fit: BoxFit.cover,)),
            Positioned(
                top: 15,
                left: 10,
                child: Text(name, style: GoogleFonts.robotoSlab(textStyle: TextStyle(color: Colors.white, fontSize: 25,)),)),

            Positioned(
              bottom: 15,
              right: 10,
              child: Container(

                width: 120,
                height: 30,
                decoration: BoxDecoration(
                  color: Color(0XFFff3400),
                ),
                child: Center(child: Text('Add to Intake', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),)),
              ),
            ),
            Positioned(
              left: 10,
              bottom: 15,
              child: Container(
                height: 50,
                width: 50,
                child:  DashedCircularProgressBar.aspectRatio(
                  aspectRatio: 1, // width ÷ height
                  valueNotifier: _valueNotifier,
                  progress: progress,
                  startAngle: 0,
                  sweepAngle: 360,
                  foregroundColor: Colors.green,
                  backgroundColor: const Color(0xffeeeeee),
                  foregroundStrokeWidth: 5,
                  backgroundStrokeWidth: 5,
                  animation: true,
                  seekSize: 6,
                  seekColor: const Color(0xffeeeeee),

                ),
              ),
            ),
            Positioned(
              left: 20,
              bottom: 30,
              child: Text('+167', style: GoogleFonts.robotoSlab(textStyle: TextStyle(color: Colors.white, fontSize: 15,)),)
              ,),

          ],
        ),
      );

  }
}
