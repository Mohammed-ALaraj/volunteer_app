import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({
    Key? key,
    required this.title,
    required this.Subtitle
  }) : super(key: key);

  final String title;
  final String Subtitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: (){},
          child: Text(
            Subtitle,
            style: GoogleFonts.cairo(
            ),
          ),
        ),
        Spacer(),
        Text(
          title,
          style: GoogleFonts.cairo(
              fontSize: 18,
              fontWeight: FontWeight.bold
          ),
        ),
      ],
    );
  }
}
