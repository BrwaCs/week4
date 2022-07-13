import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Detailscreen extends StatelessWidget {
  const Detailscreen({Key? key, required this.studentName, required this.imagUrl, required this.desc}) : super(key: key);

final String studentName;
final String imagUrl;
final String desc;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar:AppBar(),
      body: Column(
        children: [
     
          Row(
            children: [
              Expanded(
                child: Container(
                  
                    height:300,
                 
                    child: Image.network(imagUrl),
                
                  ),
              ),
              
            ],
          ),
          Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  child: Text(studentName),
                ),
              ),
            ],
          ),
          Row(
            
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(10),
                  alignment:Alignment.center,
                  child: Center(child: Text(desc , textAlign: TextAlign.center,))
                ),
              ),
            ],
          ),
          
        ],
      )

    );
  }
}