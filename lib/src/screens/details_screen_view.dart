import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Detailscreen extends StatelessWidget {
  const Detailscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            mainAxisAlignment:MainAxisAlignment.center,
            crossAxisAlignment:CrossAxisAlignment.center,
            children: [
              
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  height:197,
                  width:229,
                  child: Placeholder(),
              
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: Text("the student name"),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  alignment:Alignment.center,
              
                  child: Text("kjndsklncfskldnf")
                ),
              ),
            ],
          ),
          Row(
            
            children: [
              Expanded(
                child: Container(
              
                  height:300,
                  width:300,
                  color: Colors.grey[600],
              
              
                ),
              ),
            ],
          )


        ],
      )

    );
  }
}