import 'package:flutter/material.dart';


class BMI extends StatefulWidget {
  const BMI({ Key? key }) : super(key: key);

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:Theme.of(context).primaryColor ,
      appBar: AppBar(
        title: const Text("BMI CALCULATOR"),
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: Theme.of(context).primaryColor,
       
      ),
      body:const SafeArea(child:  Text("BMI CAlCULATOR PAGE")) ,

      bottomNavigationBar: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.pinkAccent,
           minimumSize: const Size(double.infinity, 80)
        ),
          child: const Text("CALCULATE BMI"),
          onPressed: (){},
        ),
    );
  }
}