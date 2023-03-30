import 'package:flutter/material.dart';
import 'package:jason_parsing_factory/screens/post/provider/post_provider.dart';
import 'package:provider/provider.dart';

class post_screen extends StatefulWidget {
  const post_screen({Key? key}) : super(key: key);

  @override
  State<post_screen> createState() => _post_screenState();
}

class _post_screenState extends State<post_screen> {

  Post_provider? pt;
  Post_provider? pf;
  @override
  Widget build(BuildContext context) {

    pt = Provider.of<Post_provider>(context,listen: true);
    pf = Provider.of<Post_provider>(context,listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Jason Parsing",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
        ),
        body: Column(
          children: [
            ElevatedButton(onPressed: () {

              pf!.jasonParsing();
            }, child: Text("show Jason data")),
            Expanded(child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("${pt!.PostList[index].id}"),
                  subtitle: Text("${pt!.PostList[index].userId}"),
                );
              },
              itemCount: pf!.PostList.length,
            )
            )
          ],
        ),
      ),
    );
  }
}
