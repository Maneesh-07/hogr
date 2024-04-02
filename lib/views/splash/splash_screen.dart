import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hogr/views/core/theme/color_theme.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: surface,
      body: Stack(
        children: [
          Center(
            child:
                Container(
                  
                  child: SvgPicture.asset("assets/svg/hogr_logo.svg")),
          ),
          // Positioned(
          //     bottom: 20,
          //     left: 100,
          //     right: 100,
          //     child: Center(
          //       child: Column(
          //         children: [
          //           Text(
          //             'Digiblocks',
          //             textAlign: TextAlign.center,
          //             overflow: TextOverflow.ellipsis,
          //             style: TextStyle(
          //                 fontWeight: FontWeight.bold,
          //                 fontSize: 20,
          //                 color: textColor),
          //           ),
          //           Text(
          //             'Fly right',
          //             textAlign: TextAlign.center,
          //             overflow: TextOverflow.ellipsis,
          //             style: TextStyle(
          //                 fontWeight: FontWeight.w300,
          //                 fontSize: 14,
          //                 color: textColor),
          //           )
          //         ],
          //       ),
          //     ))
        ],
      ),
    );
  }
}
