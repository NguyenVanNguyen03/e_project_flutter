import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:video_player/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../main_wrapper.dart';

class MyShop extends StatefulWidget {
  @override
  State<MyShop> createState() => _MyShopState();
}

class _MyShopState extends State<MyShop> {
  final dataTimeTravel = [
    {'range': '1 - 3 Travelers', 'price': '\$10/ hour'},
    {'range': '4 - 6 Travelers', 'price': '\$14/ hour'},
    {'range': '7 - 9 Travelers', 'price': '\$17/ hour'},
  ];

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      delay: const Duration(milliseconds: 750),
      child: Scaffold(
        body: SingleChildScrollView(
            padding: const EdgeInsets.all(0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Stack(
                  children: [
                    const Image(
                      image: AssetImage('assets/images/shop4.jpg'),
                      width: double.infinity,
                      height: 180,
                      fit: BoxFit.fill,
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 50, left: 16),
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
                          color: Colors.white,
                        ),
                        label: Text(''),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 120, left: 16),
                      child: const Image(
                        image: AssetImage('assets/images/avatar.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'My Shop',
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.w700),
                              ),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      for (var i = 0; i < 5; i++)
                                        const Icon(
                                          Icons.star_rate_rounded,
                                          size: 16,
                                          color: Color.fromRGBO(255, 193, 0, 1),
                                        ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  const Text('127 reviews')
                                ],
                              )
                            ],
                          ),
                          const ButtonPrimary(
                            content: 'ADD PRODUCT',
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 9,
                      ),
                      const Row(
                        children: [
                          TagLanguage(
                            content: 'Vietnamese',
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          TagLanguage(
                            content: 'English',
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          TagLanguage(
                            content: 'Korean',
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.place_sharp,
                            color: Color(0xFF00CEA5),
                          ),
                          Text(
                            'Danang, Vietnam',
                            style: TextStyle(
                              color: Color(0xFF00CEA5),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      const Text(
                          'Short introduction: Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.'),
                      const SizedBox(
                        height: 10,
                      ),
                      // Stack(
                      //   alignment: Alignment.center,
                      //   children: [
                      //     Container(
                      //       width: double.infinity,
                      //       height: 250,
                      //       decoration: BoxDecoration(
                      //         borderRadius: BorderRadius.circular(10.0),
                      //         image: const DecorationImage(
                      //           image: AssetImage('assets/images/anh5.jpg'),
                      //           fit: BoxFit.cover,
                      //         ),
                      //       ),
                      //     ),
                      //     Container(
                      //         width: 50,
                      //         height: 50,
                      //         decoration: BoxDecoration(
                      //             color:
                      //                 const Color.fromRGBO(255, 255, 255, 0.4),
                      //             borderRadius: BorderRadius.circular(9999.0)),
                      //         child: const Icon(
                      //           Icons.play_arrow_rounded,
                      //           size: 36,
                      //           color: Color(0xFF00CEA5),
                      //         ))
                      //   ],
                      // ),
                      Center(
                        child: YoutubePlayerExample(),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            border: Border.all(color: const Color(0xFFDBDBDB))),
                        child: Table(
                          columnWidths: const {
                            0: FixedColumnWidth(150),
                          },
                          border: TableBorder.symmetric(
                            inside: const BorderSide(
                                width: 1, color: Color(0xFFDBDBDB)),
                          ),
                          children: dataTimeTravel.map((item) {
                            return TableRow(
                              children: [
                                TableCell(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                      child: Text(item['range']!,
                                          style: const TextStyle(
                                            color: Color(0xFF555555),
                                          )),
                                    ),
                                  ),
                                ),
                                TableCell(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                      child: Text(
                                        item['price']!,
                                        style: const TextStyle(
                                          color: Color(0xFF121212),
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          }).toList(),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'My Shop',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF121212),
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            CardImages(
                              image_1: 'assets/images/anh8.jpg',
                              image_2: 'assets/images/anh9.jpg',
                              image_3: 'assets/images/anh10.jpg',
                              title: 'My Shop Lavia',
                              place: 'Hoian, Vietnam',
                              time: 'Jan 25, 2020',
                              like: '1234',
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            CardImages(
                              image_1: 'assets/images/anh11.jpg',
                              image_2: 'assets/images/anh12.jpg',
                              image_3: 'assets/images/anh13.jpg',
                              title: 'My Shop Aquafine',
                              place: 'Danang, Vietnam',
                              time: 'Jan 20, 2020',
                              like: '234',
                            )
                          ]),
                      const SizedBox(
                        height: 24,
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Comments',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF121212),
                                  ),
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(
                                      foregroundColor: const Color(0xFF00CEA5),
                                      textStyle: const TextStyle(fontSize: 14),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5))),
                                  onPressed: () {},
                                  child: const Text('SEE MORE'),
                                ),
                              ],
                            ),
                            const CommentItem(
                                avatar: 'assets/images/anh15.jpg',
                                name: 'Pena Valdez',
                                rating: 5,
                                content:
                                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.',
                                createdAt: 'Jan 22, 2020'),
                            const CommentItem(
                                avatar: 'assets/images/anh6.jpg',
                                name: 'Daehyun ',
                                rating: 4,
                                content:
                                    'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum’',
                                createdAt: 'Jan 22, 2020'),
                            const CommentItem(
                                avatar: 'assets/images/anh5.jpg',
                                name: 'Burns Marks',
                                rating: 5,
                                content:
                                    'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.',
                                createdAt: 'Jan 22, 2020')
                          ]),
                      const SizedBox(
                        height: 100,
                      )
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}

class TagLanguage extends StatelessWidget {
  const TagLanguage({Key? key, required this.content}) : super(key: key);
  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 6),
      decoration: const BoxDecoration(
        color: Color(0xFFF5F5F5),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Text(
        content,
        style: const TextStyle(fontSize: 12, color: Color(0xFF555555)),
      ),
    );
  }
}

class YoutubePlayerExample extends StatefulWidget {
  const YoutubePlayerExample({
    Key? key,
  }) : super(key: key);

  @override
  _YoutubePlayerExampleState createState() => _YoutubePlayerExampleState();
}

class _YoutubePlayerExampleState extends State<YoutubePlayerExample> {
  final videoURL = "https://www.youtube.com/watch?v=UizkMipO54w";
  late YoutubePlayerController _controller;

  @override
  void initState() {
    final videoID = YoutubePlayer.convertUrlToId(videoURL);

    _controller = YoutubePlayerController(
        initialVideoId: videoID!,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
        ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
      ),
    ]);
  }
}

class ButtonPrimary extends StatelessWidget {
  const ButtonPrimary({Key? key, required this.content}) : super(key: key);
  final String content;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0, // Set the height
      child: ElevatedButton(
        onPressed: () {
          // Your function goes here
        },
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          backgroundColor: MaterialStateProperty.all<Color>(
              const Color.fromRGBO(0, 206, 166, 1)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
        child: Text(content),
      ),
    );
  }
}

class CardImages extends StatefulWidget {
  const CardImages({
    Key? key,
    required this.image_1,
    required this.image_2,
    required this.image_3,
    required this.title,
    required this.place,
    required this.time,
    required this.like,
  }) : super(key: key);

  final String image_1, image_2, image_3, title, place, time, like;

  @override
  _CardImagesState createState() => _CardImagesState();
}

class _CardImagesState extends State<CardImages> {
  bool _isFavorited = false;
  int _favoriteCount = 0;

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            spreadRadius: 0.5,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  StaggeredGrid.count(
                    crossAxisCount: 4,
                    mainAxisSpacing: 4,
                    crossAxisSpacing: 4,
                    children: [
                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2,
                        child: Image(
                          image: AssetImage(widget.image_1),
                          fit: BoxFit.cover,
                        ),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 1,
                        child: Image(
                          image: AssetImage(widget.image_2),
                          fit: BoxFit.cover,
                        ),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 1,
                        child: Image(
                          image: AssetImage(widget.image_3),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 14),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.title,
                            style: const TextStyle(
                                color: Color(0xFF121212),
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Transform.translate(
                            offset: const Offset(-3.0, 0),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.place_sharp,
                                  color: Color(0xFF00CEA5),
                                  size: 20,
                                ),
                                Text(
                                  widget.place,
                                  style: const TextStyle(
                                    color: Color(0xFF00CEA5),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                widget.time,
                                style: const TextStyle(
                                    color: Color(0xFF777777), fontSize: 14),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    icon: _isFavorited
                                        ? const Icon(Icons.favorite)
                                        : const Icon(Icons.favorite_border),
                                    color: Colors.red,
                                    onPressed: _toggleFavorite,
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Text('$widget.like Likes',
                                      style: const TextStyle(
                                          color: Color(0xFF777777),
                                          fontSize: 14))
                                ],
                              )
                            ],
                          )
                        ]),
                  )
                ],
              )),
        ],
      ),
    );
  }
}

class CommentItem extends StatelessWidget {
  const CommentItem(
      {Key? key,
      required this.avatar,
      required this.name,
      required this.content,
      required this.createdAt,
      required this.rating})
      : super(key: key);
  final String avatar, name, content, createdAt;
  final num rating;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(9999),
              child: Image(
                image: AssetImage(avatar),
                fit: BoxFit.fill,
                width: 50,
                height: 50,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name),
                Row(
                  children: [
                    Row(
                      children: [
                        for (var i = 0; i < rating; i++)
                          const Icon(
                            Icons.star_rate_rounded,
                            size: 16,
                            color: Color(0xFFFFC100),
                          ),
                      ],
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Text(
                      createdAt,
                      style: const TextStyle(
                          fontSize: 12, color: Color(0xFF777777)),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Text(content)
      ],
    );
  }
}
