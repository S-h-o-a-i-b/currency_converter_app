import 'package:flutter/material.dart';

class ConverterPage extends StatelessWidget {
  final double usdAmount;

  ConverterPage({required this.usdAmount});

  @override
  Widget build(BuildContext context) {
    double bdtAmount = usdAmount * 120; // Assuming 1 USD = 120 BDT

    return Scaffold(
      appBar: AppBar(title: Text('Converted Amount')),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(50),
          decoration: BoxDecoration(
            color: Colors.blue[400],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            "$usdAmount USD = Tk $bdtAmount",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
      ),
    );
  }
}
