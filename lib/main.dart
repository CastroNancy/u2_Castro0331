import 'package:flutter/material.dart';
import "package:castro_0331/pantallas0331/panel0331/widgets0331/panel_pantalla0331.dart";

void main() => runApp(const MiappPlaystation0331());

class MiappPlaystation0331 extends StatelessWidget {
  const MiappPlaystation0331({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Oxxo_0331",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrangeAccent),
          useMaterial3: true),
      home: const panel_Pantalla0331(),
    );
  }
}
