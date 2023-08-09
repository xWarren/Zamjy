import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  final dynamic category;
  const ItemPage({required this.category, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: Column(children: [
          Expanded(
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Column(
                  children: [Text(category.title)],
                );
              },
            ),
          )
        ]),
      )),
    );
  }
}
