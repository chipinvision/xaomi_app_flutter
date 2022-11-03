import 'package:flutter/material.dart';
import 'package:carousel_indicator/carousel_indicator.dart';

class Carousel extends StatefulWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {

  int pageIndex = 0;
  
  final List<Widget> _phone = [
    SizedBox(
      height: 200,
      child: Image.asset('assets/mi_black.png'),
    ),
    SizedBox(
      height: 200,
      child: Image.asset('assets/mi_pink.png'),
    ),
    SizedBox(
      height: 200,
      child: Image.asset('assets/mi_blue.png'),
    ),
    SizedBox(
      height: 200,
      child: Image.asset('assets/phones.png'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          width: double.infinity,
          child: PageView(
            children: _phone,
            onPageChanged: (index){
              setState(() {
                pageIndex = index;
              });
            },
          ),
        ),
        const SizedBox(height: 15,),
        CarouselIndicator(
          width: 12,
          height: 12,
          count: 4,
          index: pageIndex,
          color: Colors.grey.withOpacity(0.5),
          activeColor: const Color(0xffFF6A08),
        ),
      ],
    );
  }
}
