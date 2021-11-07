import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 35,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFF3F4768), width: 3),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Stack(
          children: [
            // LayoutBuilder provide us the available space for the conatiner
            // constraints.maxWidth needed for our animation
            LayoutBuilder(
              builder: (context, constraints) => Container(
                // from 0 to 1 it takes 60s
                width: 1,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF3F4768),
                      Color(0xFF3F4768).withOpacity(0.5),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
            Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4 / 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // children: [
                  //   Text("${(controller.animation.value * 60).round()} sec"),
                  //   SvgPicture.asset("assets/icons/clock.svg"),
                  // ],
                ),
              ),
            ),
          ],
        ));
  }
}
