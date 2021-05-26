import 'package:flutter/material.dart';
import 'package:flutter_card_swipper/flutter_card_swiper.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final imageList = [
    'assets/Image.png'
        'assets/Image21.png'
        'assets/Image32.png'
        'assets/photo-of-woman-wearing-denim-polo-3393501.png'
  ];

  @override
  Widget build(BuildContext context) {
     return
       Scaffold(
        backgroundColor: Color(0xFF263238),
        appBar: AppBar(
            // title: Image.asset(
            //     'assets/man-with-black-and-gray-scarf-smiling-3608205.png'),
            ),
        body: Swiper(
          layout: SwiperLayout.CUSTOM,
          customLayoutOption:
              new CustomLayoutOption(startIndex: -1, stateCount: 3)
                  .addRotate([0.0 / 180, 0.0, 0.0 / 180]).addTranslate([
            new Offset(-310.0, 0.0),
            new Offset(0.0, 0.0),
            new Offset(310.0, 0.0) //for right element
          ]),
          itemWidth: 300.0,
          itemHeight: 400.0,
          itemBuilder: (BuildContext context, int index) {
            return Image.asset(
              imageList[index],
              fit: BoxFit.cover,
            );
          },
          itemCount: imageList.length,
        )
             );
  }
}
