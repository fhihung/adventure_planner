// import 'package:flutter/material.dart';
//
// abstract class AppTextStyle {
//   /// displayLg figma properties
//   /// fontFamily: Archivo
//   /// fontSize: 48px
//   /// height: 52px
//   /// fontWeight: 400
//   /// letterSpacing: 1%
//   /// fontStyle: none
//   /// decoration: none
//   static const TextStyle displayLg = TextStyle(
//     fontSize: 48,
//     height: 1.08,
//     fontWeight: FontWeight.w400,
//     letterSpacing: 0.48,
//   );
//
//   /// displayMd figma properties
//   /// fontFamily: Archivo
//   /// fontSize: 40px
//   /// height: 44px
//   /// fontWeight: 500
//   /// letterSpacing: 1%
//   /// fontStyle: none
//   /// decoration: none
//   static const TextStyle displayMd = TextStyle(
//     fontSize: 40,
//     height: 1.1,
//     fontWeight: FontWeight.w500,
//     letterSpacing: 0.4,
//   );
//
//   /// displaySm figma properties
//   /// fontFamily: Archivo
//   /// fontSize: 34px
//   /// height: 38px
//   /// fontWeight: 400
//   /// letterSpacing: 1%
//   /// fontStyle: none
//   /// decoration: none
//   static const TextStyle displaySm = TextStyle(
//     fontSize: 34,
//     height: 1.12,
//     fontWeight: FontWeight.w400,
//     letterSpacing: 0.34,
//   );
//
//   /// headlineLg figma properties
//   /// fontFamily: Archivo
//   /// fontSize: 28px
//   /// height: 32px
//   /// fontWeight: 500
//   /// letterSpacing: 1%
//   /// fontStyle: none
//   /// decoration: none
//   static const TextStyle headlineLg = TextStyle(
//     fontSize: 28,
//     height: 1.14,
//     fontWeight: FontWeight.w500,
//     letterSpacing: 0.28,
//   );
//
//   /// headlineMd figma properties
//   /// fontFamily: Archivo
//   /// fontSize: 28px
//   /// height: 32px
//   /// fontWeight: 500
//   /// letterSpacing: 1%
//   /// fontStyle: none
//   /// decoration: none
//   static const TextStyle headlineMd = TextStyle(
//     fontSize: 28,
//     height: 1.14,
//     fontWeight: FontWeight.w600,
//     letterSpacing: 0.28,
//   );
//
//   /// headlineSm figma properties
//   /// fontFamily: Archivo
//   /// fontSize: 24px
//   /// height: 28px
//   /// fontWeight: 400
//   /// letterSpacing: 1%
//   /// fontStyle: none
//   /// decoration: none
//   static const TextStyle headlineSm = TextStyle(
//     fontSize: 24,
//     height: 1.17,
//     fontWeight: FontWeight.w400,
//     letterSpacing: 0.24,
//   );
//
//   /// headlineSm1 figma properties
//   /// fontFamily: Archivo
//   /// fontSize: 24px
//   /// height: 28px
//   /// fontWeight: 600
//   /// letterSpacing: 1%
//   /// fontStyle: none
//   /// decoration: none
//   static const TextStyle headlineSm1 = TextStyle(
//     fontSize: 24,
//     height: 1.17,
//     fontWeight: FontWeight.w600,
//     letterSpacing: 0.24,
//   );
//
//   /// bodyXLg figma properties
//   /// fontFamily: Archivo
//   /// fontSize: 20px
//   /// height: 24px
//   /// fontWeight: 400
//   /// letterSpacing: 1%
//   /// fontStyle: none
//   /// decoration: none
//   static const TextStyle bodyXLg = TextStyle(
//     fontSize: 20,
//     height: 1.2,
//     fontWeight: FontWeight.w400,
//     letterSpacing: 0.2,
//   );
//
//   /// bodyLg figma properties
//   /// fontFamily: Archivo
//   /// fontSize: 18px
//   /// height: 22px
//   /// fontWeight: 400
//   /// letterSpacing: 1%
//   /// fontStyle: none
//   /// decoration: none
//   static const TextStyle bodyLg = TextStyle(
//     fontSize: 18,
//     height: 1.22,
//     fontWeight: FontWeight.w400,
//     letterSpacing: 0.18,
//   );
//
//   /// bodyMd1 figma properties
//   /// fontFamily: Archivo
//   /// fontSize: 16px
//   /// height: 22px
//   /// fontWeight: 400
//   /// letterSpacing: 1%
//   /// fontStyle: none
//   /// decoration: none
//   static const TextStyle bodyMd1 = TextStyle(
//     fontSize: 16,
//     height: 1.38,
//     fontWeight: FontWeight.w400,
//     letterSpacing: 0.16,
//   );
//
//   /// bodyMd2 figma properties
//   /// fontFamily: Archivo
//   /// fontSize: 16px
//   /// height: 22px
//   /// fontWeight: 500
//   /// letterSpacing: 1%
//   /// fontStyle: none
//   /// decoration: none
//   static const TextStyle bodyMd2 = TextStyle(
//     fontSize: 16,
//     height: 1.38,
//     fontWeight: FontWeight.w500,
//     letterSpacing: 0.16,
//   );
//
//   /// bodySm1 figma properties
//   /// fontFamily: Archivo
//   /// fontSize: 14px
//   /// height: 18px
//   /// fontWeight: 700
//   /// letterSpacing: 1%
//   /// fontStyle: none
//   /// decoration: none
//   static const TextStyle bodySm1 = TextStyle(
//     fontSize: 14,
//     height: 1.29,
//     fontWeight: FontWeight.w700,
//     letterSpacing: 0.14,
//   );
//
//   /// bodySm2 figma properties
//   /// fontFamily: Archivo
//   /// fontSize: 14px
//   /// height: 18px
//   /// fontWeight: 400
//   /// letterSpacing: 1%
//   /// fontStyle: none
//   /// decoration: none
//   static const TextStyle bodySm2 = TextStyle(
//     fontSize: 14,
//     height: 1.29,
//     fontWeight: FontWeight.w400,
//     letterSpacing: 0.14,
//   );
//
//   /// bodySm3 figma properties
//   /// fontFamily: Archivo
//   /// fontSize: 14px
//   /// height: 18px
//   /// fontWeight: 500
//   /// letterSpacing: 1%
//   /// fontStyle: none
//   /// decoration: none
//   static const TextStyle bodySm3 = TextStyle(
//     fontSize: 14,
//     height: 1.29,
//     fontWeight: FontWeight.w500,
//     letterSpacing: 0.14,
//   );
//
//   /// bodyXSm1 figma properties
//   /// fontFamily: Archivo
//   /// fontSize: 12px
//   /// height: 16px
//   /// fontWeight: 500
//   /// letterSpacing: 1%
//   /// fontStyle: none
//   /// decoration: none
//   static const TextStyle bodyXSm1 = TextStyle(
//     fontSize: 12,
//     height: 1.33,
//     fontWeight: FontWeight.w500,
//     letterSpacing: 0.12,
//   );
//
//   /// bodyXSm2 figma properties
//   /// fontFamily: Archivo
//   /// fontSize: 12px
//   /// height: 16px
//   /// fontWeight: 400
//   /// letterSpacing: 1%
//   /// fontStyle: none
//   /// decoration: none
//   static const TextStyle bodyXSm2 = TextStyle(
//     fontSize: 12,
//     height: 1.33,
//     fontWeight: FontWeight.w400,
//     letterSpacing: 0.12,
//   );
//
//   /// buttonLg figma properties
//   /// fontFamily: Archivo
//   /// fontSize: 18px
//   /// height: 22px
//   /// fontWeight: 600
//   /// letterSpacing: none
//   /// fontStyle: none
//   /// decoration: none
//   static const TextStyle buttonLg = TextStyle(
//     fontSize: 18,
//     height: 1.22,
//     fontWeight: FontWeight.w600,
//   );
//
//   /// buttonMd figma properties
//   /// fontFamily: Archivo
//   /// fontSize: 16px
//   /// height: 21px
//   /// fontWeight: 700
//   /// letterSpacing: none
//   /// fontStyle: none
//   /// decoration: none
//   static const TextStyle buttonMd = TextStyle(
//     fontSize: 16,
//     height: 1.31,
//     fontWeight: FontWeight.w700,
//   );
//
//   /// buttonSm figma properties
//   /// fontFamily: Archivo
//   /// fontSize: 14px
//   /// height: 18px
//   /// fontWeight: 500
//   /// letterSpacing: none
//   /// fontStyle: none
//   /// decoration: none
//   static const TextStyle buttonSm = TextStyle(
//     fontSize: 14,
//     height: 1.29,
//     fontWeight: FontWeight.w500,
//   );
//
//   /// captionLg figma properties
//   /// fontFamily: Archivo
//   /// fontSize: 14px
//   /// height: 18px
//   /// fontWeight: 400
//   /// letterSpacing: none
//   /// fontStyle: none
//   /// decoration: none
//   static const TextStyle captionLg = TextStyle(
//     fontSize: 14,
//     height: 1.29,
//     fontWeight: FontWeight.w400,
//   );
//
//   /// captionLg1 figma properties
//   /// fontFamily: Archivo
//   /// fontSize: 14px
//   /// height: 18px
//   /// fontWeight: 300
//   /// letterSpacing: none
//   /// fontStyle: none
//   /// decoration: none
//   static const TextStyle captionLg1 = TextStyle(
//     fontSize: 14,
//     height: 1.29,
//     fontWeight: FontWeight.w300,
//   );
//
//   /// captionSm figma properties
//   /// fontFamily: Archivo
//   /// fontSize: 12px
//   /// height: 16px
//   /// fontWeight: 400
//   /// letterSpacing: none
//   /// fontStyle: none
//   /// decoration: none
//   static const TextStyle captionSm = TextStyle(
//     fontSize: 12,
//     height: 1.33,
//     fontWeight: FontWeight.w400,
//   );
//
//   /// captionXSm figma properties
//   /// fontFamily: Archivo
//   /// fontSize: 10px
//   /// height: 16px
//   /// fontWeight: 400
//   /// letterSpacing: none
//   /// fontStyle: none
//   /// decoration: none
//   static const TextStyle captionXSm = TextStyle(
//     fontSize: 10,
//     height: 1.6,
//     fontWeight: FontWeight.w400,
//   );
// }
