// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// ScaffoldState snackBarWidget({
//   String text,
//   BuildContext context,
//   String textButton = 'Ок',
//   Color snackBarColor,
//   Color colorButton = Colors.white,
//   Function onPressedButton,
//   bool isLoadingSnackbar = false,
//   Duration duration = const Duration(),
// }) {
//   debugPrint('--- --- duration in snackBarWidget $duration');
//   return Scaffold.of(context)
//     ..hideCurrentSnackBar()
//     ..showSnackBar(isLoadingSnackbar
//         ? SnackBar(
//             padding: MediaQuery.of(context).size.shortestSide < 600
//                 ? null
//                 : EdgeInsets.symmetric(vertical: 20, horizontal: 20),
//             duration: duration,
//             // duration: const Duration(minutes: 4),
//             content: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(text),
//                 CircularProgressIndicator(),
//               ],
//             ),
//           )
//         : SnackBar(
//             padding: MediaQuery.of(context).size.shortestSide < 600
//                 ? null
//                 : EdgeInsets.symmetric(vertical: 20, horizontal: 20),
//             action: SnackBarAction(
//               label: textButton,
//               textColor: colorButton,
//               onPressed: onPressedButton,
//             ),
//             content: Text(text),
//             backgroundColor: snackBarColor,
//           ));
// }
