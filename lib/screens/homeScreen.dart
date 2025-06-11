import 'package:diet_plan_app/screens/detailScreen.dart';
import 'package:diet_plan_app/utils/items.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen()));
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  Icon(Icons.menu, size: 40,),
                  SizedBox(height: 10,),
                  Text('Recipts', style: GoogleFonts.robotoSlab(textStyle: TextStyle(color: Colors.black, fontSize: 25,)),),
                  SizedBox(height: 15,),
                  Text('Cooked Veggies', style: GoogleFonts.robotoSlab(textStyle: TextStyle(color: Colors.black, fontSize: 20,)),),
                  SizedBox(height: 5,),
                  Container(
                    height: 2,
                    color: Colors.grey[300],

                  ),
                  SizedBox(height: 20,),
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Items(name: "Egg Salad", progress: 90, url: "https://images.unsplash.com/photo-1482049016688-2d3e1b311543?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=410&q=80",),
                        SizedBox(height: 20,),
                        Items(name: "Spring Salad", progress: 50, url: "https://images.unsplash.com/photo-1642635055753-3eec6c0b2a6e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1032&q=80",),
                        SizedBox(height: 20,),
                        Items(name: "Prawn Salad", progress: 75, url: "https://images.unsplash.com/photo-1547496502-affa22d38842?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=677&q=80",),

                      ],
                    ),

                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
