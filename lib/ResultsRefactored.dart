import 'package:flutter/material.dart';


Widget showResults(BuildContext context,double results){
  return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Your Result",
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
              ),
              Container(
                color: Color(0xff1e1f34),
                height: MediaQuery.of(context).size.height / 2,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [
                    Text(
                      "Normal",
                      style: TextStyle(fontSize: 25, color: Colors.green),
                    ),
                    Text(
                      results.toStringAsFixed(1),
                      style: TextStyle(fontSize: 80, color: Colors.white,fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Normal BMI Range:",
                      style: TextStyle(fontSize: 25, color: Colors.white54),
                    ),
                    Text(
                      "18.5 - 25 kg/m2",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Text(
                      "You have a Normal Body Weight. Good Job!",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).primaryColor,
                        minimumSize: const Size(200, 60)
                      ),
                      onPressed: (){}, child: Text("Save Result")
                      )
                  ],
                ),
              ),
            ],
          ),
        ),
      );

}