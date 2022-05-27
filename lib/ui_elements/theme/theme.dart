import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppThemes {
  static ThemeData mainTheme = ThemeData(
    // fontFamily: 'Roboto',
    // scaffoldBackgroundColor: Colors.white,
    // textTheme: TextTheme(
    //   headline4: TextStyle(
    //     fontSize: 24.sp,
    //     color: const Color(0xFF2E2E2E),
    //   ),
    //   headline6: TextStyle(
    //     fontSize: 18.sp,
    //     fontWeight: FontWeight.w700,
    //     color: const Color(0xFF2E2E2E),
    //   ),
    //   subtitle1: TextStyle(
    //     fontSize: 16.sp,
    //     fontWeight: FontWeight.w400,
    //     color: const Color(0xFF2E2E2E),
    //   ),
    //   subtitle2: TextStyle(
    //     fontSize: 12.sp,
    //     fontWeight: FontWeight.w400,
    //     color: const Color(0xFF2E2E2E),
    //   ),
    //   bodyText1: TextStyle(
    //     fontSize: 12.sp,
    //     fontWeight: FontWeight.w300,
    //     color: const Color(0xFF2E2E2E),
    //   ),
    //   bodyText2: TextStyle(
    //     fontSize: 14.sp,
    //     fontWeight: FontWeight.w300,
    //     color: const Color(0xFF000000),
    //   ),
    // ),
    // // appBarTheme: const AppBarTheme(
    // //   backgroundColor: Color(0xFFE21A1A),
    // //   elevation: 0.0,
    // //   centerTitle: false,
    // //   titleSpacing: 0,
    // // ),
    // floatingActionButtonTheme: const FloatingActionButtonThemeData(
    //   backgroundColor: Color(0xFFFFFFFF),
    // ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (final Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return const Color(0xffFFA4B1);
          }
          return const Color(0xffFA3855);
        }),
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
            (final Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return Colors.white;
          }
          return Colors.white;
        }),
        //  fixedSize: MaterialStateProperty.all<Size>(
        //     Size(120, 10)),
        // elevation: MaterialStateProperty.all<double>(0),
        // shape: MaterialStateProperty.all<OutlinedBorder>(
        //   RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(10),
        //   ),
        // ),
        // fixedSize: MaterialStateProperty.all<Size>(
        //   Size(double.infinity, 48.h),
        // ),
        // textStyle: MaterialStateProperty.all<TextStyle>(
        //   TextStyle(
        //     fontSize: 16.sp,
        //     fontWeight: FontWeight.w400,
        //   ),
        // ),
      ),
    ),
    // outlinedButtonTheme: OutlinedButtonThemeData(
    //   style: ButtonStyle(
    //     backgroundColor: MaterialStateProperty.resolveWith<Color>(
    //         (final Set<MaterialState> states) {
    //       if (states.contains(MaterialState.disabled)) {
    //         return Colors.grey;
    //       }
    //       return const Color(0xFFFFFFFF);
    //     }),
    //     foregroundColor: MaterialStateProperty.resolveWith<Color>(
    //         (final Set<MaterialState> states) {
    //       if (states.contains(MaterialState.disabled)) {
    //         return Colors.blueGrey;
    //       }
    //       return const Color(0xFF000000);
    //     }),
    //     elevation: MaterialStateProperty.all<double>(0),
    //     shape: MaterialStateProperty.all<OutlinedBorder>(
    //       RoundedRectangleBorder(
    //         borderRadius: BorderRadius.circular(10),
    //       ),
    //     ),
    //     side: MaterialStateProperty.all<BorderSide>(
    //       BorderSide(color: Color(0xFF333333)),
    //     ),
    //     textStyle: MaterialStateProperty.all<TextStyle>(
    //       TextStyle(
    //         fontSize: 16.sp,
    //         fontWeight: FontWeight.w400,
    //       ),
    //     ),
    //   ),
    // ),
    // chipTheme: ChipThemeData(
    //   elevation: 2,
    //   selectedColor: const Color(0xFF1E86B3),
    //   backgroundColor: const Color(0xFFFFFFFF),
    //   labelStyle: TextStyle(
    //     fontFamily: 'FiraSans',
    //     fontSize: 16.sp,
    //     fontWeight: FontWeight.w300,
    //     color: const Color(0xFF000000),
    //   ),
    //   secondaryLabelStyle: TextStyle(
    //     fontFamily: 'FiraSans',
    //     fontSize: 16.sp,
    //     fontWeight: FontWeight.w300,
    //     color: const Color(0xFFFFFFFF),
    //   ),
    // ),
    // cardTheme: CardTheme(
    //   elevation: 3,
    //   shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.circular(10),
    //   ),
    // ),
    // bottomSheetTheme: BottomSheetThemeData(
    //   shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.vertical(
    //       top: Radius.circular(20),
    //     ),
    //   ),
    // ),
    // inputDecorationTheme: InputDecorationTheme(
    //   enabledBorder: UnderlineInputBorder(
    //     borderSide: BorderSide(
    //       width: 2,
    //       color: const Color(0xFFEAEBED),
    //     ),
    //   ),
    //   focusedBorder: UnderlineInputBorder(
    //     borderSide: BorderSide(
    //       width: 2,
    //       color: const Color(0xFFEAEBED),
    //     ),
    //   ),
    //   floatingLabelStyle: TextStyle(
    //     fontSize: 14.sp,
    //     fontWeight: FontWeight.w300,
    //     color: const Color(0xFF999999),
    //   ),
    // ),
  );
}
