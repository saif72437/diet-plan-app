import 'package:dashed_circular_progress_bar/dashed_circular_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
class DetailScreen extends StatelessWidget {

   DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
        Container(

          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                Stack(
                  children: [
                    Hero(
                        tag: 'imgTag',
                        child: Image(image: NetworkImage('https://images.unsplash.com/photo-1547496502-affa22d38842?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=677&q=80'),height: 300, width: double.infinity, fit: BoxFit.cover,)),
                    Positioned(
                        top: 20,
                        left: 10,
                        child: InkWell(
                            
                            child: Icon(FontAwesomeIcons.arrowLeft, color: Colors.white,))),

                    Positioned(
                      top: 70,
                      left: 20,
                      child: Row(
                        children: [
                          Icon(FontAwesomeIcons.clock, color: Colors.white,),
                          SizedBox(width: 10,),
                          Text('8 min', style: GoogleFonts.robotoSlab(textStyle: TextStyle(color: Colors.white, fontSize: 20,)),)
                        ],
                      ),),

                    Positioned(
                        top: 100,
                        left: 20,
                        child: Text('Prawn Salad', style: GoogleFonts.robotoSlab(textStyle: TextStyle(color: Colors.white, fontSize: 25,)),)),

                    Positioned(
                        top: 150,
                        left: 20,
                        child: Text('Secretly an update version of prawns\ncocktail, but millions time better than that\ndescription makes it sound.', style: GoogleFonts.robotoSlab(textStyle: TextStyle(color: Colors.white, fontSize: 15,)),)),
                    Positioned(
                      bottom: 15,
                      right: 20,
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
                      left: 20,
                      bottom: 15,
                      child: Container(
                        height: 50,
                        width: 50,
                        child:  DashedCircularProgressBar.aspectRatio(
                          aspectRatio: 1, // width ÷ height
                          progress: 75,
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
                      left: 30,
                      bottom: 30,
                      child: Text('+167', style: GoogleFonts.robotoSlab(textStyle: TextStyle(color: Colors.white, fontSize: 15,)),)
                      ,),

                  ],
                ),

              ],
            ),
          ),
        ),

          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            Text('Ingridients', style: GoogleFonts.robotoSlab(textStyle: TextStyle(color: Colors.black, fontSize: 25,)),),
            Text('Instruction', style: GoogleFonts.robotoSlab(textStyle: TextStyle(color: Colors.grey, fontSize: 25,)),),
    ],
          ),
          SizedBox(height: 20,),
          Container(height: 2, color: Colors.grey,),
          SizedBox(height: 20,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.edit, color: Colors.red,)
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('MAIN', style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.grey[500], fontSize: 20,)),),

              ],
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Prawns', style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.grey[500], fontSize: 15,)),),
                Text('400 g', style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.grey[500], fontSize: 15,)),),
                Text('412 Kcal', style: GoogleFonts.roboto(textStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15,)),),

              ],
            ),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Mango', style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.grey[500], fontSize: 15,)),),
                Text('200 g', style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.grey[500], fontSize: 15,)),),
                Text('192 Kcal', style: GoogleFonts.roboto(textStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15,)),),

              ],
            ),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Avacado', style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.grey[500], fontSize: 15,)),),
                Text('400 g', style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.grey[500], fontSize: 15,)),),
                Text('134 Kcal', style: GoogleFonts.roboto(textStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15,)),),

              ],
            ),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Apple', style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.grey[500], fontSize: 15,)),),
                Text('400 g', style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.grey[500], fontSize: 15,)),),
                Text('147 Kcal', style: GoogleFonts.roboto(textStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15,)),),

              ],
            ),
          ),
          SizedBox(height: 20,),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('DRESSING', style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.grey[500], fontSize: 20,)),),

              ],
            ),
          ),
        ],
      )),
    );
  }
}
