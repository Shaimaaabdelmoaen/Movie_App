import 'package:flutter/material.dart';
import 'package:movies_app/Ui/HomeScreen/homeScreenWidgets/details/stackBook.dart';
import 'package:movies_app/Ui/HomeScreen/homeScreenWidgets/rate.dart';

class RecommendScreen extends StatefulWidget {
  const RecommendScreen({
    super.key,
    required this.snapshot,
  });
  final AsyncSnapshot snapshot;

  @override
  State<RecommendScreen> createState() => _RecommendScreenState();
}

class _RecommendScreenState extends State<RecommendScreen> {
//Results results;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.snapshot.data.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: SizedBox(
                height: 190,
                width: 105,
                child: Column(
                  children: [
                    StackBook(widget.snapshot.data[index]),
                    Expanded(
                        child: Rate(results: widget.snapshot.data![index])),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}