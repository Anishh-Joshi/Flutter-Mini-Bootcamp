import 'dart:math';

import 'package:bmi_calculator_workshop/Results.dart';
import 'package:flutter/material.dart';

import 'ResultsRefactored.dart';

class BMI extends StatefulWidget {
  const BMI({Key? key}) : super(key: key);

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {

  bool hasResults = false;
  bool isMale=false;
  double _value=0;
  int weight = 0;
  int age = 0;

  double calculateBmi(){
    double height = _value/100;
    print(weight);
    print(height*height);
    return weight/pow(height, 2);

  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SafeArea(
          child:hasResults?showResults(context,calculateBmi()): Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        isMale= true;
                      });
                    },
                    child: Container(
                      height: 150,
                      color: Color.fromRGBO(30, 31, 52, 1),
                      width: 180,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.male,
                            size: 80,
                            color: isMale?Colors.white:Colors.white54,
                          ),
                          Text("MALE",style: TextStyle(color: isMale?Colors.white:Colors.white54,),)
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        isMale=false;
                      });
                    },
                    child: Container(
                      height: 150,
                      color: Color(0xff1e1f34),
                      width: 180,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.female,
                            size: 80,
                            color: !isMale?Colors.white:Colors.white54,
                          ),
                          Text("FEMALE",style: TextStyle(color: !isMale?Colors.white:Colors.white54,),)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),

            Container(
              color: Color(0xff1e1f34),
              width: double.infinity,
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Height",
                    style: TextStyle(color: Colors.white54, fontSize: 24),
                  ),
                  RichText(
                    text: TextSpan(
                      text: _value.toStringAsFixed(0),
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 45),
                      children: const <TextSpan>[
                        TextSpan(
                            text: 'cm',
                            style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  ),
                  Slider(
                    activeColor: Colors.pinkAccent,
                    min: 0,max: 300,
                    value: _value,
                     onChanged:(value){
                       setState(() {
                         _value = value;
                       });
                      

                    })
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 180,
                  height: 150,
                  color:Color(0xff1e1f34) ,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Weight",style: TextStyle(color: Colors.white54,fontSize: 24),),
                      Text(weight.toString(),style: TextStyle(color: Colors.white,fontSize: 45,fontWeight: FontWeight.bold),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              primary: Colors.white54
                            ),
                            onPressed: (){
                              setState(() {
                                weight--;
                              });
                            }, child: Icon(Icons.remove)
                            ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              primary: Colors.white54
                            ),
                            onPressed: (){
                              setState(() {
                                weight++;
                              });
                            }, child: Icon(Icons.add)
                            ),
                      ],)
                      
                    ],
                  ),
                ),
                Container(
                  width: 180,
                  height: 150,
                  color: Color(0xff1e1f34),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("AGE",style: TextStyle(color: Colors.white54,fontSize: 24),),
                      Text(age.toString(),style: TextStyle(color: Colors.white,fontSize: 45,fontWeight: FontWeight.bold),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              primary: Colors.white54
                            ),
                            onPressed: (){
                              setState(() {
                                age--;
                              });
                            }, child: Icon(Icons.remove)
                            ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              primary: Colors.white54
                            ),
                            onPressed: (){
                              setState(() {
                                age++;
                              });
                            }, child: Icon(Icons.add)
                            ),
                      ],)
                      
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      )),
      bottomNavigationBar: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.pinkAccent,
            minimumSize: const Size(double.infinity, 80)),
        child: Text(hasResults?"RE-CALCULATE YOUR BMI":"CALCULATE YOUR BMI"),
        onPressed: () {
          if(hasResults){
            setState(() {
            hasResults=false;
          });
          }else{
            setState(() {
            hasResults=true;
          });
          }
          // Navigator.push(context, MaterialPageRoute(builder: (context)=>Results()));
        },
      ),
    );
  }
}
