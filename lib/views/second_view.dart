// import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task/constants.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/like_widget_container.dart';

class SecondView extends StatefulWidget {
  const SecondView({super.key});

  @override
  State<SecondView> createState() => _SecondViewState();
}

class _SecondViewState extends State<SecondView> {
  bool val = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: val ? Colors.black : null,
      body: SafeArea(
        
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Text(
                textAlign: TextAlign.center,
                'More',
                style: GoogleFonts.aBeeZee(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Like_contaner(
              text: 'Settings',
            ),
            Container(
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
                      'Dark Mode',
                      style: GoogleFonts.aBeeZee(
                        fontSize: 22,
                      ),
                    ),
                    const SizedBox(
                      width: 170,
                    ),
                    Switch(
                      
                      activeColor: primaryColor,
                      value: val,
                      onChanged: (newValue) {
                        setState(() {
                          val = newValue;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Container(
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
                      'Arabic Language',
                      style: GoogleFonts.aBeeZee(
                        fontSize: 22,
                      ),
                    ),
                    const SizedBox(
                      width: 108,
                    ),
                    Switch(
                      activeColor: primaryColor,
                      value: true,
                      onChanged: (newValue) {},
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
