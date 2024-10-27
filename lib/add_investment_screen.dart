import 'package:flutter/material.dart';
import 'package:investment_tracking/homepage.dart';
class addinvestment extends StatefulWidget {

  final Function(Investment)onaddinvestment;

  addinvestment({required this.onaddinvestment});
  //const addinvestment({super.key});

  @override
  State<addinvestment> createState() => _addinvestmentState();
}

class _addinvestmentState extends State<addinvestment> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _name=TextEditingController();
  TextEditingController _amount=TextEditingController();
  TextEditingController _currentvalue=TextEditingController();

  void _submitinvestment(){
    //final newInvestment=Investment(name: '_name', amountinvested: '_amount', currentvalue: 'value');
   // widget.onaddinvestment(newInvestment);
    Navigator.pop(context);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:AppBar(
          title:Text("Add investment Screen"),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 40,),
              Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter investment name';
                          }
                          return null;
                        },
                        controller:_name,
                        decoration: InputDecoration(
                            labelText: "Name",
                            labelStyle: TextStyle(color: Colors.black),
                            hintText: "Enter Investment Name",
                            hintStyle: TextStyle(color: Colors.white),
                            icon: Icon(
                              Icons.supervised_user_circle,
                              color: Colors.black87,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: Colors.brown.shade800,
                                width: 3,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  color: Colors.black87,
                                  width: 3,
                                ))),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter amount invested';
                            }
                            return null;
                          },
                          controller: _amount,
                          obscureText: true,
                          decoration: InputDecoration(
                              labelText: "Amount",
                              labelStyle: TextStyle(color: Colors.black),
                              hintText: "Enter Amount Invested",
                              hintStyle: TextStyle(color:Colors.white),
                              icon: Icon(
                                Icons.paid,
                                color: Colors.black87,
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                    color: Colors.black87,
                                    width: 3,
                                  )),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                    color: Colors.black87,
                                    width: 3,
                                  )
                              )
                          )
                      ),

                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter Current value';
                            }
                            return null;
                          },
                          controller: _currentvalue,
                          obscureText: true,
                          decoration: InputDecoration(
                              labelText: "Current value",
                              labelStyle: TextStyle(color: Colors.black),
                              hintText: "Enter Current value",
                              hintStyle: TextStyle(color:Colors.white),
                              icon: Icon(
                                Icons.currency_exchange,
                                color: Colors.black87,
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                    color: Colors.black87,
                                    width: 3,
                                  )),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                    color: Colors.black87,
                                    width: 3,
                                  )
                              )
                          )
                      ),


                    ],
                  )
              ),

              SizedBox(height: 20,),

              ElevatedButton(onPressed:
              //_submitinvestment,
                  (){
                if (_formKey.currentState!.validate()) {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => homepage(),
                      ));

                }

              },
                 child: Text("Save")
              ),
            ],
          ),
        ),
      ),
    );
  }
}
