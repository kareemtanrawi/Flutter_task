import 'package:flutter/material.dart';
import 'package:flutter_task/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class play_widget_container extends StatelessWidget {
  play_widget_container({
    super.key,
    required this.text,
    required this.ontap,
  });
  void Function()? ontap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 90,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            // FaIcon(FontAwesomeIcons.playCircle),
            GestureDetector(
              onTap: ontap,
              child: const Icon(
                Icons.play_circle_outline_outlined,
                size: 36,
                color: primaryColor,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(text,
                style: GoogleFonts.aBeeZee(
                  fontSize: 22,
                )),
          ],
        ),
      ),
    );
  }
}
