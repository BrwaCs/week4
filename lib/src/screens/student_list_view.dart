import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:week4/mockdata/mock_Data.dart';
import 'package:week4/src/screens/details_screen_view.dart';

class studentHomeScreenViewController extends StatelessWidget {
  const studentHomeScreenViewController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("student listview", 
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold),
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation:0,

        ),
      body: Column(
        children: [
          Expanded(
            child: Container(
          
              child: ListView.builder(
                itemCount: mockdata.length,
                itemBuilder: (context,index){
                  return Card(
                    child: ListTile(
                      subtitle:Text(index.toString()),
                      leading: Image.network(mockdata[index]["image"].toString()),
                      title: Text(mockdata[index]["first_name"].toString()),
                      trailing: IconButton( icon: Icon(Icons.arrow_right),
                      onPressed: (){
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=>Detailscreen()
                          )
                          );
                      },
                      ),
                  
                    ),
                  );
                },
              )
              ),
            ),
          
          Container(
            color:Colors.blue,
            height:115,
          )
        ],
      ),

      ),


    );
  }
}