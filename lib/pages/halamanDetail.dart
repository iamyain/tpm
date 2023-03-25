import 'package:flutter/material.dart';
import '/models/disease_data.dart';
import '/main.dart';

class HalamanDetail extends StatefulWidget {
  final String id;

  HalamanDetail({required this.id});

  @override
  _HalamanDetailState createState() => _HalamanDetailState();
}

class _HalamanDetailState extends State<HalamanDetail> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    var diseaseData = listDisease.firstWhere((disease) {
      return disease.id == widget.id;
    });

    return Scaffold(
      appBar: AppBar(
        title: Text(diseaseData.name),
        actions: [
          IconButton(
            icon: isFavorite
                ? Icon(Icons.favorite)
                : Icon(Icons.favorite_border),
            onPressed: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: GestureDetector(
                onTap: () {
                  launchUrl(diseaseData.imgUrls);
                },
                child: Image.network(
                  diseaseData.imgUrls,
                  height: 200,
                  width: 200,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Disease Name: ${diseaseData.name}',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Plant Name: ${diseaseData.plantName}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Ciri-Ciri (Nutshell):',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: diseaseData.nutshell.map((nutshell) {
                return Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    '- $nutshell',
                    style: TextStyle(fontSize: 14),
                  ),
                );
              }).toList(),
            ),
            SizedBox(height: 10),
            Text(
              'Disease ID: ${diseaseData.id}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Symptom: ${diseaseData.symptom}',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

