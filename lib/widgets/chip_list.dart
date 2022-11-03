import 'package:flutter/material.dart';

class ChipList extends StatelessWidget {
  const ChipList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Chip(
            shadowColor: Colors.grey.withOpacity(0.5),
            backgroundColor: Colors.white,
            avatar: const Icon(Icons.phone_android, color: Color(0xffFF6A08),),
            label: const Text('Phones', style: TextStyle(fontWeight: FontWeight.w700),),
          ),
          const SizedBox(width: 10,),
          Chip(
            shadowColor: Colors.grey.withOpacity(0.5),
            backgroundColor: Colors.white,
            avatar: const Icon(Icons.watch, color: Color(0xffFF6A08),),
            label: const Text('Watches', style: TextStyle(fontWeight: FontWeight.w700),),
          ),
          const SizedBox(width: 10,),
          Chip(
            shadowColor: Colors.grey.withOpacity(0.5),
            backgroundColor: Colors.white,
            avatar: const Icon(Icons.tv, color: Color(0xffFF6A08),),
            label: const Text('Televisions', style: TextStyle(fontWeight: FontWeight.w700),),
          ),
          const SizedBox(width: 10,),
          Chip(
            shadowColor: Colors.grey.withOpacity(0.5),
            backgroundColor: Colors.white,
            avatar: const Icon(Icons.headphones, color: Color(0xffFF6A08),),
            label: const Text('Audio', style: TextStyle(fontWeight: FontWeight.w700),),
          ),
          const SizedBox(width: 10,),
          Chip(
            shadowColor: Colors.grey.withOpacity(0.5),
            backgroundColor: Colors.white,
            avatar: const Icon(Icons.bolt, color: Color(0xffFF6A08),),
            label: const Text('Power Devices', style: TextStyle(fontWeight: FontWeight.w700),),
          ),
        ],
      ),
    );
  }
}
