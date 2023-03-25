import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:kuistpm/pages/halamanUtama.dart';




//void main() => runApp(MyApp());
void main() {
  debugPrint = (String? message, {int? wrapWidth}) {};
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tanaman',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HalamanUtama(),
    );
  }
}

Future<void> launchUrl(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

