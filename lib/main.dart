import 'package:flutter/material.dart';
import 'package:jason_parsing_factory/screens/post/provider/post_provider.dart';
import 'package:jason_parsing_factory/screens/post/view/post_screen.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Post_provider(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => post_screen(),
        },
      ),
    ),
  );
}