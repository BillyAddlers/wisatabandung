import 'package:flutter/material.dart';
import 'package:wisatabandung/components/tourism_place_list.dart';
import 'package:wisatabandung/components/tourism_place_grid.dart';

const headerTextStyle = TextStyle(
    fontSize: 30.0,
    fontFamily: 'Staatliches',
    fontWeight: FontWeight.bold
);
const informationTextStyle = TextStyle(fontSize: 16.0, fontFamily: 'Oxygen');

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
              'Wisata Bandung',
            style: headerTextStyle,
          ),
        ),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth <= 750) {
              return const TourismPlaceList();
            } else if (constraints.maxWidth <= 1000) {
              return const TourismPlaceGrid(gridCount: 4);
            } else if (constraints.maxWidth <= 1200) {
              return const TourismPlaceGrid(gridCount: 5);
            } else {
              return const TourismPlaceGrid(gridCount: 6);
            }
          },
        ),
    );
  }
}
