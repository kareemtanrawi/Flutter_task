import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Text_Contaner extends StatelessWidget {
  Text_Contaner({
    super.key,
    required this.text,
    required this.icon,
    this.onTap,
  });
  final String text;
  final FaIcon icon;
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 90,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: Row(
          children: [
            Text(
              text,
              style: GoogleFonts.aBeeZee(
                fontSize: 22,
              ),
            ),
            const SizedBox(
              width: 180,
            ),
            GestureDetector(
              onTap: onTap,
              child: icon ,
              ),
          ],
        ),
      ),
    );
  }
}
