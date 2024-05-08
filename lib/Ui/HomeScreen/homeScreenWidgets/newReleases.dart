import 'package:flutter/material.dart';
import 'package:movies_app/Ui/HomeScreen/homeScreenWidgets/details/releasebook.dart';

class ReleasesScreen extends StatefulWidget {
  final AsyncSnapshot snapshot;

  const ReleasesScreen(this.snapshot, {super.key});

  @override
  State<ReleasesScreen> createState() => _ReleasesScreenState();
}

class _ReleasesScreenState extends State<ReleasesScreen> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xEF282A28),
      child: SizedBox(
        width: double.infinity,
        height: 150,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: widget.snapshot.data.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: SizedBox(
                  height: 130,
                  width: 100,
                   child:ReleaseBook(widget.snapshot.data![index]),
                ),
              ),
            );
          },

        ),
      ),
    );
  }
}