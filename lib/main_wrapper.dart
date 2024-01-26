import 'package:animate_do/animate_do.dart';
import 'package:bottom_bar_matu/bottom_bar/bottom_bar_bubble.dart';
import 'package:bottom_bar_matu/bottom_bar_item.dart';
import 'package:fashion_ecommerce_app/screens/addProduct.dart';
import 'package:fashion_ecommerce_app/screens/cart.dart';
import 'package:fashion_ecommerce_app/screens/home.dart';
import 'package:fashion_ecommerce_app/screens/myShop.dart';
import 'package:fashion_ecommerce_app/screens/other_shop.dart';
import 'package:fashion_ecommerce_app/screens/profile.dart';
import 'package:fashion_ecommerce_app/screens/search.dart';
import 'package:fashion_ecommerce_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class MainWrapper extends StatefulWidget {
  const MainWrapper({super.key});

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  final int _index = 0;
  bool isSearchActive = false;

  List<Widget> screens = [
    const Home(),
    const Search(),
  ];

  int _currentIndex = 0;

  final List<Widget> tabs = [
    Home(),
    OtherShop(),
    Search(),
    MyShop(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: isSearchActive
            ? FadeIn(
                delay: const Duration(milliseconds: 300),
                child: const Text(
                  "Search",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              )
            : FadeIn(
                delay: const Duration(milliseconds: 300),
                child: const Text(
                  "Home",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
            size: 30,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isSearchActive = !isSearchActive;
              });
            },
            icon: isSearchActive
                ? const Icon(
                    LineIcons.searchMinus,
                    color: Colors.black,
                    size: 30,
                  )
                : const Icon(
                    LineIcons.search,
                    color: Colors.black,
                    size: 30,
                  ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              icon: const Icon(
                LineIcons.shoppingBag,
                color: Colors.black,
                size: 30,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Cart(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      body: tabs[_currentIndex] == tabs[0]
          ? (isSearchActive ? const Search() : const Home())
          : tabs[_currentIndex],
      // isSearchActive ? const Search() : const Home()
      bottomNavigationBar: BottomBarBubble(
        color: primaryColor,
        selectedIndex: _currentIndex,
        items: [
          BottomBarItem(iconData: Icons.home),
          BottomBarItem(iconData: Icons.add_business_sharp),
          BottomBarItem(iconData: Icons.search),
          BottomBarItem(iconData: Icons.business_center),
          BottomBarItem(iconData: Icons.person),
        ],
        onSelect: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
