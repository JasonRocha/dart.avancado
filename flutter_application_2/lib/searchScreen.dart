import 'package:flutter/material.dart';
import 'package:flutter_application_2/widget/searchEditWidget.dart';

class searchScreen extends StatefulWidget {
  const searchScreen({super.key});

  @override
  State<searchScreen> createState() => _searchScreenState();
}

class _searchScreenState extends State<searchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Expanded(
          child: Text(''),
        ),
      ),
    );
  }
}
