import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget{
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() =>
     _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage>{
  double result=0;
  final TextEditingController textEditingController=TextEditingController();

  @override
  Widget build(BuildContext context){
    print('rebuilt');
    final border=OutlineInputBorder(
      borderSide: const BorderSide(
        width: 2.0,
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignInside,
      ),
      borderRadius: BorderRadius.circular(5),
    );
    return Scaffold(
      backgroundColor:Color.fromARGB(255, 49, 135, 162),
      appBar: AppBar(
        backgroundColor:Color.fromARGB(255, 49, 135, 162),
        elevation: 0,
        title: Text(
          'Currency Convertor',
          style: TextStyle(
            color:Colors.white,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Text(
              'INR $result',
              style:const TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255)
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintText: 'Please enter the amount in USD',
                  hintStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  prefixIcon: Icon(Icons.monetization_on),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                onPressed: (){
                  setState((){
                    result=double.parse(textEditingController.text)*94.75;
                  });
                },
                style: TextButton.styleFrom(
                  backgroundColor:Color.fromARGB(255, 22, 15, 41),
                  foregroundColor:Colors.white,
                  minimumSize:const Size(double.infinity, 50),
                  shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                  ),
                ),
                child:const Text(
                  'Convert',
                  style:TextStyle(
                    fontSize: 20,
                  ),
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


    