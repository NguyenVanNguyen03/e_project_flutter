import 'package:animate_do/animate_do.dart';
import 'package:fashion_ecommerce_app/screens/home.dart';
import 'package:flutter/material.dart';

import '../main_wrapper.dart';

class OtherShop extends StatefulWidget {
  @override
  State<OtherShop> createState() => _OtherShopState();
}

class _OtherShopState extends State<OtherShop> {
  bool _isFavorited1 = false;
  int _favoriteCount = 0;

  void _back() {
    Navigator.pop(
      context,
      MaterialPageRoute(
        builder: (_) => Home(),
      ),
    );
  }

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited1) {
        _favoriteCount -= 1;
        _isFavorited1 = false;
      } else {
        _favoriteCount += 1;
        _isFavorited1 = true;
      }
    });
  }

  bool _isFavorited2 = false;
  int _favoriteCount2 = 0;
  void _toggleFavorite2() {
    setState(() {
      if (_isFavorited2) {
        _favoriteCount2 -= 1;
        _isFavorited2 = false;
      } else {
        _favoriteCount2 += 1;
        _isFavorited2 = true;
      }
    });
  }

  bool _isFavorited3 = false;
  int _favoriteCount3 = 0;
  void _toggleFavorite3() {
    setState(() {
      if (_isFavorited3) {
        _favoriteCount3 -= 1;
        _isFavorited3 = false;
      } else {
        _favoriteCount3 += 1;
        _isFavorited3 = true;
      }
    });
  }

  bool _isFavorited4 = false;
  int _favoriteCount4 = 0;
  void _toggleFavorite4() {
    setState(() {
      if (_isFavorited4) {
        _favoriteCount4 -= 1;
        _isFavorited4 = false;
      } else {
        _favoriteCount4 += 1;
        _isFavorited4 = true;
      }
    });
  }

  bool _isFavorited5 = false;
  int _favoriteCount5 = 0;
  void _toggleFavorite5() {
    setState(() {
      if (_isFavorited5) {
        _favoriteCount5 -= 1;
        _isFavorited5 = false;
      } else {
        _favoriteCount5 += 1;
        _isFavorited5 = true;
      }
    });
  }

  bool _isFavorited6 = false;
  int _favoriteCount6 = 0;
  void _toggleFavorite6() {
    setState(() {
      if (_isFavorited6) {
        _favoriteCount6 -= 1;
        _isFavorited6 = false;
      } else {
        _favoriteCount6 += 1;
        _isFavorited6 = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeInUp(
        delay: const Duration(milliseconds: 750),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: [
                  const Image(
                    image: AssetImage('assets/images/shop1.jpg'),
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.fill,
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 40, left: 15),
                    child: TextButton.icon(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (_) => MainWrapper(),
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                      ),
                      label: Text(''),
                    ),
                  ),
                  Container(
                    width: 400,
                    padding: const EdgeInsets.only(top: 90, left: 35),
                    child: const Text(
                      'Famous stores are waiting for you',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 170),
                    child: Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          width: 450,
                          height: 55,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black87,
                                  offset: new Offset(20.0, 10.0),
                                  blurRadius: 20.0,
                                  spreadRadius: 40.0),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.search,
                                  color: Colors.black54,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  'Hi, where do you want to explore? ',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black54),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                child: Column(
                  children: [
                    Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          width: 440,
                          height: 250,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black87,
                                  offset: new Offset(20.0, 10.0),
                                  blurRadius: 20.0,
                                  spreadRadius: 40.0),
                            ],
                          ),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Image(
                                    image:
                                        AssetImage('assets/images/shop2.jpg'),
                                    width: 440,
                                    height: 140,
                                    fit: BoxFit.cover,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 410, top: 5),
                                    child: Icon(
                                      Icons.data_saver_on,
                                      size: 25,
                                      color: Colors.white70,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 110, left: 10),
                                    child: Row(
                                      children: [
                                        for (var i = 0; i < 5; i++)
                                          const Icon(
                                            Icons.star_rate_rounded,
                                            size: 20,
                                            color:
                                                Color.fromRGBO(255, 193, 0, 1),
                                          ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          '1247 reviews',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: 390,
                                color: Colors.white10,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Shop Cho Noi',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20),
                                        ),
                                        IconButton(
                                          icon: _isFavorited1
                                              ? const Icon(Icons.favorite)
                                              : const Icon(
                                                  Icons.favorite_border),
                                          color: Colors.red,
                                          onPressed: _toggleFavorite,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.calendar_month,
                                          size: 25,
                                          color: Colors.black54,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Jan 30, 2020',
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 18),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.lock_clock_sharp,
                                              size: 25,
                                              color: Colors.black54,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              '3 days',
                                              style: TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: 18),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          '400.000VNĐ',
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  0, 206, 166, 1),
                                              fontSize: 20),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          width: 440,
                          height: 250,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black87,
                                  offset: new Offset(20.0, 10.0),
                                  blurRadius: 20.0,
                                  spreadRadius: 40.0),
                            ],
                          ),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Image(
                                    image:
                                        AssetImage('assets/images/shop2.jpg'),
                                    width: 440,
                                    height: 140,
                                    fit: BoxFit.cover,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 410, top: 5),
                                    child: Icon(
                                      Icons.data_saver_on,
                                      size: 25,
                                      color: Colors.white70,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 110, left: 10),
                                    child: Row(
                                      children: [
                                        for (var i = 0; i < 5; i++)
                                          const Icon(
                                            Icons.star_rate_rounded,
                                            size: 20,
                                            color:
                                                Color.fromRGBO(255, 193, 0, 1),
                                          ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          '1247 reviews',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: 390,
                                color: Colors.white10,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Shop Gia Lai',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20),
                                        ),
                                        IconButton(
                                          icon: _isFavorited6
                                              ? const Icon(Icons.favorite)
                                              : const Icon(
                                                  Icons.favorite_border),
                                          color: Colors.red,
                                          onPressed: _toggleFavorite6,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.calendar_month,
                                          size: 25,
                                          color: Colors.black54,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Jan 30, 2020',
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 18),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.lock_clock_sharp,
                                              size: 25,
                                              color: Colors.black54,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              '3 days',
                                              style: TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: 18),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          '600.000VNĐ',
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  0, 206, 166, 1),
                                              fontSize: 20),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          width: 440,
                          height: 250,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black87,
                                  offset: new Offset(20.0, 10.0),
                                  blurRadius: 20.0,
                                  spreadRadius: 40.0),
                            ],
                          ),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Image(
                                    image:
                                        AssetImage('assets/images/shop3.jpg'),
                                    width: 440,
                                    height: 140,
                                    fit: BoxFit.cover,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 410, top: 5),
                                    child: Icon(
                                      Icons.data_saver_on,
                                      size: 25,
                                      color: Colors.white70,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 110, left: 10),
                                    child: Row(
                                      children: [
                                        for (var i = 0; i < 5; i++)
                                          const Icon(
                                            Icons.star_rate_rounded,
                                            size: 20,
                                            color:
                                                Color.fromRGBO(255, 193, 0, 1),
                                          ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          '1247 reviews',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: 390,
                                color: Colors.white10,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Shop Da Nang',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20),
                                        ),
                                        IconButton(
                                          icon: _isFavorited2
                                              ? const Icon(Icons.favorite)
                                              : const Icon(
                                                  Icons.favorite_border),
                                          color: Colors.red,
                                          onPressed: _toggleFavorite2,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.calendar_month,
                                          size: 25,
                                          color: Colors.black54,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Jan 30, 2020',
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 18),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.lock_clock_sharp,
                                              size: 25,
                                              color: Colors.black54,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              '3 days',
                                              style: TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: 18),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          '400.000VNĐ',
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  0, 206, 166, 1),
                                              fontSize: 20),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          width: 440,
                          height: 250,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black87,
                                  offset: new Offset(20.0, 10.0),
                                  blurRadius: 20.0,
                                  spreadRadius: 40.0),
                            ],
                          ),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Image(
                                    image:
                                        AssetImage('assets/images/shop5.jpg'),
                                    width: 440,
                                    height: 140,
                                    fit: BoxFit.cover,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 410, top: 5),
                                    child: Icon(
                                      Icons.data_saver_on,
                                      size: 25,
                                      color: Colors.white70,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 110, left: 10),
                                    child: Row(
                                      children: [
                                        for (var i = 0; i < 5; i++)
                                          const Icon(
                                            Icons.star_rate_rounded,
                                            size: 20,
                                            color:
                                                Color.fromRGBO(255, 193, 0, 1),
                                          ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          '1247 reviews',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: 390,
                                color: Colors.white10,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Shop america Tho',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20),
                                        ),
                                        IconButton(
                                          icon: _isFavorited3
                                              ? const Icon(Icons.favorite)
                                              : const Icon(
                                                  Icons.favorite_border),
                                          color: Colors.red,
                                          onPressed: _toggleFavorite3,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.calendar_month,
                                          size: 25,
                                          color: Colors.black54,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Jan 30, 2020',
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 18),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.lock_clock_sharp,
                                              size: 25,
                                              color: Colors.black54,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              '3 days',
                                              style: TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: 18),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          '400.000VNĐ',
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  0, 206, 166, 1),
                                              fontSize: 20),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          width: 440,
                          height: 250,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black87,
                                  offset: new Offset(20.0, 10.0),
                                  blurRadius: 20.0,
                                  spreadRadius: 40.0),
                            ],
                          ),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Image(
                                    image:
                                        AssetImage('assets/images/shop6.jpg'),
                                    width: 440,
                                    height: 140,
                                    fit: BoxFit.cover,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 410, top: 5),
                                    child: Icon(
                                      Icons.data_saver_on,
                                      size: 25,
                                      color: Colors.white70,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 110, left: 10),
                                    child: Row(
                                      children: [
                                        for (var i = 0; i < 5; i++)
                                          const Icon(
                                            Icons.star_rate_rounded,
                                            size: 20,
                                            color:
                                                Color.fromRGBO(255, 193, 0, 1),
                                          ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          '1247 reviews',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: 390,
                                color: Colors.white10,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Shop Cho Noi',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20),
                                        ),
                                        IconButton(
                                          icon: _isFavorited4
                                              ? const Icon(Icons.favorite)
                                              : const Icon(
                                                  Icons.favorite_border),
                                          color: Colors.red,
                                          onPressed: _toggleFavorite4,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.calendar_month,
                                          size: 25,
                                          color: Colors.black54,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Jan 30, 2020',
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 18),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.lock_clock_sharp,
                                              size: 25,
                                              color: Colors.black54,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              '3 days',
                                              style: TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: 18),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          '600.000VNĐ',
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  0, 206, 166, 1),
                                              fontSize: 20),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          width: 440,
                          height: 250,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black87,
                                  offset: new Offset(20.0, 10.0),
                                  blurRadius: 20.0,
                                  spreadRadius: 40.0),
                            ],
                          ),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Image(
                                    image:
                                        AssetImage('assets/images/shop4.jpg'),
                                    width: 440,
                                    height: 140,
                                    fit: BoxFit.cover,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 410, top: 5),
                                    child: Icon(
                                      Icons.data_saver_on,
                                      size: 25,
                                      color: Colors.white70,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 110, left: 10),
                                    child: Row(
                                      children: [
                                        for (var i = 0; i < 5; i++)
                                          const Icon(
                                            Icons.star_rate_rounded,
                                            size: 20,
                                            color:
                                                Color.fromRGBO(255, 193, 0, 1),
                                          ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          '1247 reviews',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: 390,
                                color: Colors.white10,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Shop Hanoi',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20),
                                        ),
                                        IconButton(
                                          icon: _isFavorited5
                                              ? const Icon(Icons.favorite)
                                              : const Icon(
                                                  Icons.favorite_border),
                                          color: Colors.red,
                                          onPressed: _toggleFavorite5,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.calendar_month,
                                          size: 25,
                                          color: Colors.black54,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Jan 30, 2020',
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 18),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.lock_clock_sharp,
                                              size: 25,
                                              color: Colors.black54,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              '3 days',
                                              style: TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: 18),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          '400.000VNĐ',
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  0, 206, 166, 1),
                                              fontSize: 20),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
