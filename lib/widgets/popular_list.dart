import 'package:flutter/material.dart';

class PopularList extends StatelessWidget {
  const PopularList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<String> productimg = [
      'https://i01.appmifile.com/webfile/globalimg/dongxuechun/k82black800.png?width=70&height=70',
      'https://i01.appmifile.com/webfile/globalimg/0320/TO-B/800/Smart-band-7-800.png?width=70&height=70',
      'https://i01.appmifile.com/webfile/globalimg/0320/TO-B/800/Redmi-Buds-4-Pro-800-black.png?width=70&height=70',
    ];

    List<String> productname = [
      'Xiaomi Pad 5',
      'Mi Smart Band 7',
      'Mi 10T Pro',
    ];

    List<String> price = [
      '\$ 999.99',
      '\$ 145.99',
      '\$ 599.99',
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
            return Container(
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
            );
          },
          separatorBuilder: (BuildContext context, int index){
            return const SizedBox(width: 10);
          }
      ),
    );
  }
}
