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
            child: Text("Kurdistan cities", 
            style: TextStyle(
              color: Colors.black,
              ),
            ),
          ),
          backgroundColor: Colors.grey[500],
          

        ),
     body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  child: ListView.builder(
                      itemCount: mockdata.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(14),
                                height: 200,
                                width: 300,
                                child:
                                    Image.network(mockdata[index]["image"].toString()),
                              ),
                              Positioned(
                                bottom: 0,
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 40,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[400],
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Text(mockdata[index]["name"].toString(),
                                      style: const TextStyle(
                                        fontSize: 14,
                                      )),
                                ),
                              )
                            ],
                          ),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Detailscreen(
                                       imagUrl:mockdata[index]["image"].toString(),

                          studentName: mockdata[index]["name"].toString(),

                          desc: mockdata[index]["desc"].toString(),
                                    )));
                          },
                        );
                      })),
            ],
          )),
    );
  }
}