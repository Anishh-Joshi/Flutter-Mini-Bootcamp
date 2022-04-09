import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  const Results({Key? key}) : super(key: key);

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
                      "22.1",
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
      )),
      bottomNavigationBar: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.pinkAccent,
            minimumSize: const Size(double.infinity, 80)),
        child: Text("RE-CALCULATE YOUR BMI"),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
