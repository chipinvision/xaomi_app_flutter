import 'package:flutter/material.dart';

import '../screens/productscreen.dart';

class ProductList extends StatelessWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<String> productimg = [
      'https://i01.appmifile.com/webfile/globalimg/0320/TO-B/800/xiaomi-12-lite-800.png?width=70&height=70',
      'https://i01.appmifile.com/webfile/globalimg/0320/TO-B/800/smart-band6-orange-png.png?width=70&height=70',
      'https://i01.appmifile.com/webfile/globalimg/0320/TO-B/J3S-J17/J3SBlue-800-png-pro.png?width=70&height=70',
    ];

    List<String> productname = [
       'Mi 12 Lite',
       'Mi Band 6',
       'Mi 10T Pro',
    ];

    List<String> price = [
      '\$ 835.99',
      '\$ 123.99',
      '\$ 799.99',
    ];

    List<IconData> fav = [
      Icons.favorite,
      Icons.favorite_outline,
      Icons.favorite_outline,
    ];

    List<Color> colors = [
      const Color(0xffFF6A08),
      const Color(0xff000000),
      const Color(0xff000000),
    ];

    return SizedBox(
      height: 200,
      width: double.infinity,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (BuildContext context, int index){
          return GestureDetector(
            onTap: (){
              Navigator.push (context, MaterialPageRoute(builder: (context) => const ProductScreen()));
            },
            child: Container(
              height: 200,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xffFFFFFF),
              ),
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Image.network(
                            productimg[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, bottom: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              productname[index],
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              price[index],
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffFF6A08),
                              ),
                            ),
                            IconButton(onPressed: (){}, icon: Icon(fav[index], color: colors[index],)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index){
          return const SizedBox(width: 10);
        }
      ),
    );
  }
}
