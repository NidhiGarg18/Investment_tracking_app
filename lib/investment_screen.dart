import 'package:flutter/material.dart';
import 'package:investment_tracking/homepage.dart';
class investmentdetail extends StatefulWidget {
  const investmentdetail({super.key});

  @override
  State<investmentdetail> createState() => _investmentdetailState();
}

class _investmentdetailState extends State<investmentdetail> {
  late final Investment investment;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("investment details"),
        ),
        body: Column(
          children: [
            Text('Amount Invested: \$${investment.amountinvested.toStringAsFixed(2)}',
                style: TextStyle(fontSize: 18)),
            Text('Current Value: \$${investment.currentvalue.toStringAsFixed(2)}',
                style: TextStyle(fontSize: 18)),
            Text(
              'Percentage Growth: ${investment.percentagegrowth.toStringAsFixed(2)}%',
              style: TextStyle(fontSize: 18, color: investment.percentagegrowth >= 0 ? Colors.green : Colors.red),
            ),
          ],
        ),
      ),

    );
  }
}
