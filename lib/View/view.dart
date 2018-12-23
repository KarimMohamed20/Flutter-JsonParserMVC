import 'package:flutter/material.dart';
import 'package:xmpp_chat/Controller/controller.dart';
import 'package:xmpp_chat/Model/model.dart';

// Main View Class
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var controller = Controller();
  var model = Model();
  List data;


  @override
  void initState() {
    super.initState();
    controller.getData().then((list) {
      setState(() {
        data = list;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('Json Parsing MVC'),
          ),
          body: ListView.builder(
            itemCount: data == null ? 0 : data.length,
            itemBuilder: (context, i) {
              return ListTile(
                title: Text(data[i]['title']),
                subtitle: Text(data[i]['body']),
                leading: new CircleAvatar(
                  child: Text(data[i]['id'].toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),),
                  backgroundColor: Colors.orange,
                ),
              );
            },
          )),
    );
  }
}
