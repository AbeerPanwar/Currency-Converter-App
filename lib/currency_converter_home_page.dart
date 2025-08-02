
import 'package:flutter/material.dart';

class CurrencyConverterHomePage extends StatefulWidget {
  const CurrencyConverterHomePage({super.key});

  @override
  State<CurrencyConverterHomePage> createState() => _CurrencyConverterHomePageState();
}
 
class _CurrencyConverterHomePageState extends State<CurrencyConverterHomePage> {
  
  double result = 0;
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context){

    final border = OutlineInputBorder(
      borderSide: BorderSide(
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(20)),
    );

    return Scaffold(
      backgroundColor: Color.fromRGBO(248, 243, 179, 1),
      appBar: AppBar(
        backgroundColor: Colors.white70,
        title: Text(
          'Currency Converter',
          style: TextStyle(
          fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'INR ${result!= 0? result.toStringAsFixed(2) : result.toStringAsFixed(0) }',
                style : TextStyle(
                  fontSize: 55, 
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextField(
                controller: textEditingController,
                style: TextStyle(
                  color: Colors.black87,
                ),
                decoration: InputDecoration(
                  hintText: 'Please enter the amount in USD',
                  hintStyle: TextStyle(
                    fontSize: 17,
                    color: Colors.black87,
                  ),
                  prefixIcon: Icon(Icons.attach_money),
                  prefixIconColor:Colors.black87 ,
                  filled: true,
                  fillColor: Colors.white70,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
              const SizedBox(height: 10,),
              TextButton(
                onPressed: () {
                  setState( (){
                    result = double.parse(textEditingController.text) * 86.71 ;
                  });
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Color.fromRGBO(248, 243, 179, 1),
                  minimumSize: Size(double.infinity, 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                child: Text('Convert'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


