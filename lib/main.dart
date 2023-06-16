import 'package:flutter/material.dart';
import 'package:new_app/component/place/place.dart';
import 'package:new_app/component/test_pages/testcountdown2.dart';
import 'package:new_app/pages/navigatorBar.dart';
import 'package:new_app/widgets/place_img_widgets/rating-widget.dart';
import 'component/article/card-article-widget.dart';
import 'component/test_pages/test.dart';

void main() => runApp(const BottomSheetApp());

class BottomSheetApp extends StatelessWidget {
  const BottomSheetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Modal')),
        body: const BottomSheetExample(),
      ),
    );
  }
}

class BottomSheetExample extends StatelessWidget {
  const BottomSheetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
            child: const Text('User Login'),
            onPressed: () {
              showModalBottomSheet<void>(
                context: context,
                isScrollControlled: true,
                constraints: BoxConstraints.tight(Size(
                    MediaQuery.of(context).size.width,
                    MediaQuery.of(context).size.height * .7)),
                builder: (BuildContext context) {
                  return const Scaffold(
                    body: Center(
                      child: BottomNavigationBarExample(),
                    ),
                  );
                },
              );
            },
          ),
          ElevatedButton(
            child: const Text('Article'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CardArticle()),
              );
            },
          ),
          ElevatedButton(
            child: const Text('Place'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Place()),
              );
            },
          ),
          ElevatedButton(
            child: const Text('Star Example'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp()),
              );
            },
          ),
          ElevatedButton(
            child: const Text('test'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CountDown()),
              );
            },
          ),
          ElevatedButton(
            child: const Text('test'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp2()),
              );
            },
          ),
        ],
      ),
    );
  }
}
