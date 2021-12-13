import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatelessWidget {
  const Button({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
              onTap: () {},
              child: Container(
                margin:const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 15.0),
                width: 350,
                height: 55,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors:  [
                      Colors.yellow,
                     Colors.red,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text(
                    'LOG IN',
                    style: GoogleFonts.lato(
                      color:Colors.white,
                      fontSize:28.0,
                    ),
                  ),
                ),
              ),
            );
  }
}