import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});


  @override
  State<StatefulWidget> createState() {
    return MakeItRainState();
  }

}

class MakeItRainState extends State<Home> {
  int _moneyCounter = 0;



  void rainMoney() {
    setState(() {
      _moneyCounter = _moneyCounter + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Make it Rain"),
        backgroundColor: Colors.lightGreen,
      ),
      body: Column(
        children: [
          const Center(
              child: Text("Get Rich",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 40.9
                ),)
          ),
          Expanded(
            child: Center(
              child: Text('\$$_moneyCounter',
              style:  TextStyle(
                color: _moneyCounter >= 10000 ? Colors.deepOrange : Colors.lightGreen,
                fontSize: 30.9,
                fontWeight: FontWeight.w400
              ),),
            ),
          ),

          Expanded(
            child: Center(
              child:  TextButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.lightGreen)),
                  onPressed:  rainMoney,
                  child: const Text("Let it Rain",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 19.9
                  ),)
              ),
            ),
          )
        ],
      ),
    );
  }

}