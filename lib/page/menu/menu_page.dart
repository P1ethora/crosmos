import 'package:crosmos/components/menu_card.dart';
import 'package:crosmos/components/restaruant_categories.dart';
import 'package:crosmos/components/restaurant_info.dart';
import 'package:crosmos/model/menuBar.dart';
import 'package:flutter/material.dart';

import '../../components/restaruant_appbar.dart';

class MenuPage extends StatefulWidget {

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {

  final scrollController = ScrollController();

  int selectedCategoryIndex = 0;

  double restaruantInfoHeight = 200
  + 170
  -
  kToolbarHeight;


  @override
  void initState() {
    createBreackPoints();
    scrollController.addListener(() {
      updateCategoryIndexOnScroll(scrollController.offset);
    });
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  void scrollToCategory (int index) {
    if (selectedCategoryIndex != index) {
      int totalItems = 0;

      for (var i = 0; i < index; i++) {
        totalItems += demoCategoryMenus[i].items.length;
      }

      scrollController.animateTo(
        // restaruantInfoHeight + (116 * totalItems) + (50 * index),
        restaruantInfoHeight + (126 * totalItems),
        duration: Duration(milliseconds: 500),
        curve: Curves.ease,
      );
      setState(() {
        selectedCategoryIndex = index;
      });
    }
  }

  List<double> breackPoints = [];
  void createBreackPoints() {
    double firstBreackPoint =
      // restaruantInfoHeight + 50 + (116 * demoCategoryMenus[0].items.length);
    restaruantInfoHeight + (116 * demoCategoryMenus[0].items.length);

    breackPoints.add(firstBreackPoint);

    for (var i = 1; i < demoCategoryMenus.length; i++) {
      double breackPoint =
        breackPoints.last + (116 * demoCategoryMenus[i].items.length);
        breackPoints.add(breackPoint);
    }
  }

  void updateCategoryIndexOnScroll(double offset) {
    for (var i = 0; i < demoCategoryMenus.length; i++) {
      if (i == 0) {
        if ((offset < breackPoints.first) & (selectedCategoryIndex != 0)) {
          setState(() {
            selectedCategoryIndex = 0;
          });
        }
      }
      else if ((breackPoints[i - 1] <= offset) & (offset < breackPoints[i])){
        if (selectedCategoryIndex != i) {
          setState(() {
            selectedCategoryIndex = i;
          });
        }
    }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: scrollController,
        slivers: [
          RestaruantAppBar(),
          SliverToBoxAdapter(
            child: RestaurantInfo(),
          ),
          SliverPersistentHeader(
            delegate: ResuaranCategories(
              onChanged: scrollToCategory,
              selectedIndex: selectedCategoryIndex,
            ),
            pinned: true,
          ),
          SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, categoryIndex) {
                  List<Menu> items = demoCategoryMenus[categoryIndex].items;
                  return MenuCategoryItem(
                    title: demoCategoryMenus[categoryIndex].category,
                    items: List.generate(
                        items.length,
                            (index) => MenuCard(
                          title: items[index].title,
                          image: items[index].image,
                          price: items[index].price,
                        )
                    ),
                  );
                },
                childCount: demoCategoryMenus.length,
              ),
            ),
          )
        ],
      ),
    );
  }
}
