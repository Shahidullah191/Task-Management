import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

myStyle( double? size,Color? clr, [FontWeight? fw]) {
  return   GoogleFonts.nunito( fontSize: size, color: clr,fontWeight: fw, );
}



//Light theme
Color lightScaffoldColor = const Color(0xFFEEF2F1);
Color lightCardColor = const Color(0xFFFfFFFf); //F0FFFF
Color lightBackgroundColor =Colors.white;
Color lightIconsColor = const Color(0xFF79A3B1);


//  Color lightTextColor = const Color(0xff324558);
//Dark theme
Color darkScaffoldColor = const Color(0xFF1A1A2E);
Color darkCardColor =   Colors.black12;
Color darkBackgroundColor = Colors.black;
Color darkIconsColor = const Color(0xFFE94560);
Color blueColor = const Color(0xFF4B73CC);