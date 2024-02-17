import 'package:flutter/material.dart';

class BmiCalc extends StatefulWidget {
  const BmiCalc({Key? key}) : super(key: key);

  @override
  State<BmiCalc> createState() => _BmiCalcState();
}

class _BmiCalcState extends State<BmiCalc> {
  TextEditingController height = TextEditingController();
  TextEditingController weight = TextEditingController();
  double h_value=0;
  double w_value=0;
  double result=0;
  void calculate(){
    h_value=double.parse(height.text)/100;
    w_value=double.parse(weight.text);
    result=w_value/(h_value*h_value);
    print(result);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white60,
        centerTitle: true,
        title: Text(style: TextStyle(color: Colors.black), 'BMICALCULATOR'),
      ),
      backgroundColor: Colors.white60,
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: const EdgeInsets.only(left: 300.0, right: 300.0),
          child: TextField(
            controller: height,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'height',
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 300.0, right: 300.0),
          child: TextField(
            controller: weight,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'weight',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(onPressed: () {}, child: Text('calculate')),
        ),
        TextButton(onPressed: () {
          setState((){
          calculate();
          });
        },
            child: Text('Result')),
        Text(result.toString())

      ]),
    );
  }
}
