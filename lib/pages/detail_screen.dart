import 'package:flutter/material.dart';
import 'package:wisatabandung/models/tourism_place.dart';
import 'package:wisatabandung/components/detail_mobile_page.dart';
import 'package:wisatabandung/components/detail_web_page.dart';


class DetailScreen extends StatelessWidget {
  final TourismPlace place;

  const DetailScreen({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return DetailWebPage(place: place);
        } else {
          return DetailMobilePage(place: place);
        }
      },
    );
  }
}
