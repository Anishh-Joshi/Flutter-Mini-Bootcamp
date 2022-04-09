import 'package:flutter/material.dart';

class BMI extends StatefulWidget {
  const BMI({Key? key}) : super(key: key);

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
 
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
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 150,
                    color: Color.fromRGBO(30, 31, 52, 1),
                    width: 180,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.male,
                          size: 80,
                        ),
                        Text("MALE")
                      ],
                    ),
                  ),
                  Container(
                    height: 150,
                    color: Color(0xff1e1f34),
                    width: 180,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.female,
                          size: 80,
                        ),
                        Text("FEMALE")
                      ],
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
                      text: "180",
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
                    min: 0,max: 200,
                    value: 10.0,
                     onChanged:(value){
                      

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
                      Text("74",style: TextStyle(color: Colors.white,fontSize: 45,fontWeight: FontWeight.bold),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              primary: Colors.white54
                            ),
                            onPressed: (){}, child: Icon(Icons.remove)
                            ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              primary: Colors.white54
                            ),
                            onPressed: (){}, child: Icon(Icons.add)
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
                      Text("21",style: TextStyle(color: Colors.white,fontSize: 45,fontWeight: FontWeight.bold),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              primary: Colors.white54
                            ),
                            onPressed: (){}, child: Icon(Icons.remove)
                            ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              primary: Colors.white54
                            ),
                            onPressed: (){}, child: Icon(Icons.add)
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
        child: Text("CALCULATE BMI"),
        onPressed: () {},
      ),
    );
  }
}
