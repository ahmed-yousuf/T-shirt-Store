import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBarScreen extends StatelessWidget {
  const AppBarScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              alignment: Alignment.centerLeft,
              child: SvgPicture.asset('assets/images/menu_icon.svg'),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: SvgPicture.asset('assets/images/store_icon.svg'),
            ),
          ),
          Expanded(
            flex: 0,
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red, width: 2),
                image: DecorationImage(
                  image: AssetImage('assets/images/ahmad.png'),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
