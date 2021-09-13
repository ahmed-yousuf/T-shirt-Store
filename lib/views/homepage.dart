import 'package:flutter/material.dart';
import 'package:task_4/components/listItemScreen.dart';
import 'package:task_4/models/carts.dart';
import 'appbar.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 60,
            ),
            //App bar Start Here!
            AppBarScreen(),
            SizedBox(
              height: 30,
            ),
            Text(
              'Hi there, Ahmed',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Let\'s design some tees!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 40,
            ),

            //Here we Staret with List View
            SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              child: Container(
                height: MediaQuery.of(context).size.height * .72,
                child: Column(
                  children: [
                    //Start here List One
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Shop new designs',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'See All',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w200,
                                      color: Colors.red,
                                      decoration: TextDecoration.underline),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Flexible(
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return FittedBox(
                                      child: ListItemsScreen(
                                          cartListOne.elementAt(index)));
                                },
                                itemCount: cartListOne.length,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    //Start here List Two
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Top rated designs',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'See All',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w200,
                                      color: Colors.red,
                                      decoration: TextDecoration.underline),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            //List Number Two
                            Flexible(
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return FittedBox(
                                      child: ListItemsScreen(
                                          cartListTwo.elementAt(index)));
                                },
                                itemCount: cartListOne.length,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
