// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflix_sliver/theme/colors.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeAppColors.bgScaffold,
      body: CustomScrollView(
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
          SliverList.builder(
            itemBuilder: (contex, index) => Text("Hello list ${index + 1}"),
            itemCount: 100,
          ),
        ],
      ),
    );
  }
}
