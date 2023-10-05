import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Like_contaner extends StatelessWidget {
  const Like_contaner({
    super.key,
    required this.text,
  });
final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
              width: double.infinity,
              height: 90,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
              ),
              child:  Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    textAlign: TextAlign.justify,
                    text,
                    style:GoogleFonts.aBeeZee(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    )
                  ),
                ),
              ),
            );
  }
}
