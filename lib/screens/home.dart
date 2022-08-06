import 'package:flutter/material.dart';

import '../controller/paging_scroll_physic.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: const EdgeInsets.symmetric(vertical: 70.0),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: PagingScrollPhysics(
              itemDimension: MediaQuery.of(context).size.width * 0.83),
          itemCount: 4 + 1,
          itemBuilder: (context, index) {
            return index == 4
                ? SizedBox(width: MediaQuery.of(context).size.width * 0.2)
                : Column(
                    children: [
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.8,
                        margin: const EdgeInsets.only(left: 10),
                        color: Colors.redAccent,
                      ),
                      const SizedBox(height: 10),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.8,
                        margin: const EdgeInsets.only(left: 10),
                        color: Colors.redAccent,
                      ),
                    ],
                  );
          }),
    ));
  }
}
