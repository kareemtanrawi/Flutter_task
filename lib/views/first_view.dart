import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/like_widget_container.dart';
import '../widget/play_widget_container.dart';
import '../widget/text_widget_container.dart';

class FirstView extends StatefulWidget {
  const FirstView({super.key});

  @override
  State<FirstView> createState() => _FirstViewState();
}

class _FirstViewState extends State<FirstView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView(physics: const BouncingScrollPhysics(), children: [
        Column(
          children: [
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Text(
                textAlign: TextAlign.center,
                'This is App',
                style: GoogleFonts.aBeeZee(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Like_contaner(text: 'Top Likes'),
            Text_Contaner(
              text: 'Sample Text1',
              icon: const FaIcon(FontAwesomeIcons.heart),
              onTap: () {},
            ),
            Text_Contaner(
              text: 'Sample Text2',
              icon: const FaIcon(FontAwesomeIcons.heart),
              onTap: () {},
            ),
            Text_Contaner(
              text: 'Sample Text3',
              icon: const FaIcon(FontAwesomeIcons.heart),
              onTap: () {},
            ),
            const Like_contaner(text: 'Top Likes'),
            play_widget_container(text: 'Play this', ontap: (){},)
          ],
        ),
      ]),
    ));
  }
}
