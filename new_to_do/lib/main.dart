import 'package:flutter/material.dart';
import 'package:new_to_do/page/home_page.dart';
import 'package:new_to_do/provider/todos.dart';
import 'package:provider/provider.dart';
import 'configure_nonweb.dart' if (dart.library.html) 'configure_web.dart';

void main() {
  configureApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Todo App';

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (context) => TodosProvider(),
    child: MaterialApp(
    debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: HomePage(),
    ),
  );
}
