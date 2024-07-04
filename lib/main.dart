import 'package:flutter/material.dart';
import 'rpcApp.dart';

void main() {
  runApp(mainHolder());
}

class mainHolder extends StatefulWidget {
  const mainHolder({super.key});

  @override
  State<mainHolder> createState() => _mainHolderState();
}

class _mainHolderState extends State<mainHolder> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'lale',
      ),
      debugShowCheckedModeBanner: false,
      home: rockPapperScissor(),
    );
  }
}
