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
          footer(),
        ],
      );

  List<Widget> sections() => sliverShows.map((section) {
        if (section.layoutMode == SliverLayoutMode.list) {
          return SliverList(
              delegate: SliverChildBuilderDelegate(
            childCount: section.sectionModel.length,
            (context, index) {
              return Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                // height: 150,
                child: Container(
                  // color: Colors.black12,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        section.sectionModel[index].label,
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Sit cupidatat ut ea exercitation eu sit fugiat. Et aliquip sint nulla veniam nisi cillum officia cillum et enim id nulla. Ullamco amet cillum aute eiusmod ad incididunt elit aliqua sunt officia do.",
                        style: TextStyle(
                          color: Colors.white38,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ));
        } else {
          return SliverGrid(
            delegate: SliverChildBuilderDelegate(
                (context, index) => Center(
                        //padding: EdgeInsets.all(10),
                        child: Text(
                      section.sectionModel[index].label,
                      style: TextStyle(color: Colors.white38),
                    )),
                childCount: section.sectionModel.length),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, mainAxisSpacing: 5),
          );
        }
      }).toList();
  Widget footer() => SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text("Copyright protected to Netflix"),
          ),
        ),
      );
}
