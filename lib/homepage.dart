import 'package:flutter/material.dart';

import 'add_investment_screen.dart';
import 'investment_screen.dart';
class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  List<Investment> investments = [];

  void addInvestment(Investment investment) {
    setState(() {
      investments.add(investment);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Homescreen"),
        ),
        body: ListView.builder(
          itemCount: investments.length,
            itemBuilder: (context,index){
            final investment=investments[index];
            return ListTile(
              title: Text(investment.name),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Amount Invested: \$${investment.amountinvested.toStringAsFixed(2)}'),
                  Text('Current Value: \$${investment.currentvalue.toStringAsFixed(2)}'),
                ],
              ),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => investmentdetail(),
                ),
              ),
            );
            },
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>addinvestment(onaddinvestment: (Investment ) {  },)));
        },child: Icon(Icons.add),
        ),
      ),
    );
  }
}

class Investment {
  final String name;
  final double amountinvested;
  double currentvalue;

  Investment({
    required this.name,
    required this.amountinvested,
    required this.currentvalue,
});

  double get percentagegrowth{
    return ((currentvalue-amountinvested)/amountinvested*100);

  }
}
