import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'aboutUs.dart';
import 'contactUs.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> with SingleTickerProviderStateMixin {
  static const _menuTitles = [
    'About Us',
    'Contact Us',
  ];
  static const _icons = [
    Icons.info_outlined,
    Icons.contacts,
  ];
  var _navigationSc = [
    AboutUs(),
    ContactUs(),
  ];
  static const _initialDelayTime = Duration(milliseconds: 50);
  static const _itemSlideTime = Duration(milliseconds: 600);
  static const _staggerTime = Duration(milliseconds: 50);
  static const _buttonDelayTime = Duration(milliseconds: 150);
  static const _buttonTime = Duration(milliseconds: 500);
  final _animationDuration = _initialDelayTime +
      (_staggerTime * _menuTitles.length) +
      _buttonDelayTime +
      _buttonTime;

  late AnimationController _staggeredController;
  final List<Interval> _itemSlideIntervals = [];
  late Interval _buttonInterval;

  @override
  void initState() {
    super.initState();

    _createAnimationIntervals();

    _staggeredController = AnimationController(
      vsync: this,
      duration: _animationDuration,
    )..forward();
  }

  void _createAnimationIntervals() {
    for (var i = 0; i < _menuTitles.length; ++i) {
      final startTime = _initialDelayTime + (_staggerTime * i);
      final endTime = startTime + _itemSlideTime;
      _itemSlideIntervals.add(
        Interval(
          startTime.inMilliseconds / _animationDuration.inMilliseconds,
          endTime.inMilliseconds / _animationDuration.inMilliseconds,
        ),
      );
    }
  }

  @override
  void dispose() {
    _staggeredController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.7,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            color: Color(0xff44270A),
            child: DrawerHeader(
                child: Image.asset(
              "Assets/New.png",
            )),
          ),
          const Text(
            "SGGS online.com",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w400),
          ),
          ListView.builder(
              shrinkWrap: true,
              itemCount: _menuTitles.length,
              itemBuilder: (context, i) {
                return Column(
                  children: [
                    AnimatedBuilder(
                      animation: _staggeredController,
                      builder: (context, child) {
                        final animationPercent = Curves.easeOut.transform(
                          _itemSlideIntervals[i]
                              .transform(_staggeredController.value),
                        );
                        final opacity = animationPercent;
                        final slideDistance = (1 - animationPercent) * 150;

                        return Opacity(
                          opacity: opacity,
                          child: Transform.translate(
                            offset: Offset(slideDistance, 0),
                            child: child,
                          ),
                        );
                      },
                      child: Card(
                        elevation: 10,
                        child: ListTile(
                          dense: true,
                          leading: Icon(
                            _icons[i],
                            color: const Color(0xff44270A),
                            size: 20,
                          ),
                          selectedTileColor: const Color(0xff62380E),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => _navigationSc[i]));
                          },
                          title: Text(
                            _menuTitles[i],
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 17,
                              color: const Color(0xff44270A),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // const Divider(
                    //   color: Colors.black,
                    //   endIndent: 20,
                    //   indent: 20,
                    // ),
                  ],
                );
              }),
        ],
      ),
    );
  }
}
