import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(
            "What's New",
            style:
                GoogleFonts.dmSans(fontSize: 18, fontWeight: FontWeight.w900),
          ),
          SizedBox(height: 15,),
      ],
    ),);
  }
}