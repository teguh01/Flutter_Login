import 'package:flutter/material.dart';
import 'auth_services.dart';
import 'package:provider/provider.dart';
import 'wrapper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value: AuthServices.firebaseUserStream,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.amber, primarySwatch: Colors.deepOrange),
          darkTheme: ThemeData.dark(),
        home: Wrapper(),
      ),
    );
  }
}