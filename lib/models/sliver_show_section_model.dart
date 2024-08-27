// import 'package:flutter/material.dart';

class SliverShowSectionModel {
  final SliverLayoutMode layoutMode;
  final List<SliverSectionModel> sectionModel;

  const SliverShowSectionModel(
      {required this.layoutMode, required this.sectionModel});
}

class SliverSectionModel {
  final String label;

  const SliverSectionModel({required this.label});
}

enum SliverLayoutMode { grid, list }

final sliverShows = [
  SliverShowSectionModel(
    layoutMode: SliverLayoutMode.list,
    sectionModel: [
      SliverSectionModel(label: "Friends"),
      SliverSectionModel(label: "How I Met Your Mother"),
    ],
  ),
  SliverShowSectionModel(
    layoutMode: SliverLayoutMode.grid,
    sectionModel: [
      SliverSectionModel(label: "Scopri"),
      SliverSectionModel(label: "Di"),
      SliverSectionModel(label: "Più"),
    ],
  ),
  SliverShowSectionModel(
    layoutMode: SliverLayoutMode.list,
    sectionModel: [
      SliverSectionModel(label: "White Collar"),
      SliverSectionModel(label: "Chuck"),
      SliverSectionModel(label: "Matrix"),
      SliverSectionModel(label: "Harry Potter"),
    ],
  ),
];
