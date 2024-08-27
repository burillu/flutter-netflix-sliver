// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflix_sliver/models/sliver_show_section_model.dart';
import 'package:netflix_sliver/theme/colors.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeAppColors.bgScaffold,
      body: body(),
    );
  }

  Widget body() => CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: ThemeAppColors.bgScaffold,
            title: Text("Hello Netflix!"),
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: BoxDecoration(
                  //: BlendMode.darken,
                  color: ThemeAppColors.bgCard,
                  image: DecorationImage(
                    colorFilter:
                        ColorFilter.mode(Colors.black45, BlendMode.darken),
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://media.istockphoto.com/id/1327592564/vector/default-avatar-photo-placeholder-icon-grey-profile-picture-business-woman.jpg?s=612x612&w=0&k=20&c=kqhekIAYrzVkY2hR4GsrsvfLcB_3JnpemBDRYlelof8="),
                  ),
                ),
              ),
              centerTitle: true,
            ),
          ),
          ...sections(),
        ],
      );

  List<Widget> sections() => sliverShows.map((section) {
        if (section.layoutMode == SliverLayoutMode.list) {
          return SliverList(
              delegate: SliverChildBuilderDelegate(
            childCount: 2,
            (context, index) {
              return Container(
                width: double.infinity,
                //height: 10,
                color: Colors.red,
                child: Text(section.sectionModel[index].label),
              );
            },
          ));
        } else {
          return SliverGrid(
            delegate: SliverChildBuilderDelegate(
                (context, index) => Text(section.sectionModel[index].label),
                childCount: section.sectionModel.length),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, mainAxisSpacing: 5),
          );
        }
      }).toList();
}
