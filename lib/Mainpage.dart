// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'Dailoge Box.dart';
import 'drawer.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

enum languages { english, urdu, hindko, punjabi, hindi }

class _MainPageState extends State<MainPage> {
  bool value1 = false;
  bool value2 = false;
  bool value3 = false;
  bool value4 = false;
  bool value5 = false;

  void _showDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            String title = "Select the  Language";
            return AlertDialog(
              elevation: 0.0,
              backgroundColor: Colors.white,
              actions: [
                Container(
                  color: Color(0xff44270A).withOpacity(0.7),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        // width: size.width,
                        alignment: Alignment.center,
                        height: 40,
                        child: Text(
                          title,
                          style: const TextStyle(
                              fontSize: 20, color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 2,
                        // width: ,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      CheckboxListTile(
                        dense: true,
                        onChanged: (value) {
                          setState(() {
                            value1 = value!;
                            value2 = false;
                            value3 = false;
                            value4 = false;
                            value5 = false;
                          });
                        },
                        contentPadding: const EdgeInsets.all(0.0),
                        checkColor: Colors.white,
                        activeColor: const Color(0xff00917C),
                        value: value1,
                        title: Text(
                          "ENGLISH",
                          style: TextStyle(
                              fontSize: 16,
                              color: value1 ? Colors.white : Colors.black54,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      const Divider(
                        height: 0.0,
                        color: Colors.white,
                      ),
                      CheckboxListTile(
                        dense: true,
                        onChanged: (value) {
                          setState(() {
                            value2 = value!;
                            value1 = false;
                            value3 = false;
                            value4 = false;
                            value5 = false;
                          });
                        },
                        contentPadding: const EdgeInsets.all(0.0),
                        checkColor: Colors.white,
                        activeColor: const Color(0xff00917C),
                        value: value2,
                        title: Text(
                          "URDU (اردو)",
                          style: TextStyle(
                              fontSize: 16,
                              color: value2 ? Colors.white : Colors.black54,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      const Divider(
                        height: 0.0,
                        color: Colors.white,
                      ),
                      CheckboxListTile(
                        dense: true,
                        onChanged: (value) {
                          setState(() {
                            value3 = value!;
                            value1 = false;
                            value2 = false;
                            value4 = false;
                            value5 = false;
                          });
                        },
                        contentPadding: const EdgeInsets.all(0.0),
                        shape: const CircleBorder(),
                        checkColor: Colors.white,
                        activeColor: const Color(0xff00917C),
                        value: value3,
                        title: Text(
                          "HINDKO (ہندکو)",
                          style: TextStyle(
                              fontSize: 16,
                              color: value3 ? Colors.white : Colors.black54,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      const Divider(
                        height: 0.0,
                        color: Colors.white,
                      ),
                      CheckboxListTile(
                        dense: true,
                        onChanged: (value) {
                          setState(() {
                            value4 = value!;
                            value1 = false;
                            value2 = false;
                            value3 = false;
                            value5 = false;
                          });
                        },
                        contentPadding: const EdgeInsets.all(0.0),
                        checkColor: Colors.white,
                        activeColor: const Color(0xff00917C),
                        value: value4,
                        title: Text(
                          "PUNJABI (ਪੁਨਾਬੀ)",
                          style: TextStyle(
                              fontSize: 16,
                              color: value4 ? Colors.white : Colors.black54,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      const Divider(
                        height: 0.0,
                        color: Colors.white,
                      ),
                      CheckboxListTile(
                        dense: true,
                        onChanged: (value) {
                          setState(() {
                            value5 = value!;
                            value1 = false;
                            value2 = false;
                            value3 = false;
                            value4 = false;
                          });
                        },
                        contentPadding: const EdgeInsets.all(0.0),
                        checkColor: Colors.white,
                        activeColor: const Color(0xff00917C),
                        value: value5,
                        title: Text(
                          "HINDI (हिन्दी)",
                          style: TextStyle(
                              fontSize: 16,
                              color: value5 ? Colors.white : Colors.black54,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }

  @override
  // var popUpValue;
  // Widget popup() {
  //   return PopupMenuButton(
  //     color: Colors.black,
  //     offset: const Offset(0, kToolbarHeight),
  //     initialValue: popUpValue,
  //     onSelected: (item) {
  //       setState(() {
  //         popUpValue = item;
  //       });
  //     },
  //     itemBuilder: (context) => items.map<PopupMenuItem<String>>((value) {
  //       return PopupMenuItem(
  //         height: MediaQuery.of(context).size.height * 0.04,
  //         child: Column(
  //           children: [
  //             Text(
  //               value,
  //               style: const TextStyle(
  //                   fontSize: 16,
  //                   fontWeight: FontWeight.w400,
  //                   color: Colors.white),
  //             ),
  //             const PopupMenuDivider(),
  //           ],
  //         ),
  //         value: value,
  //       );
  //     }).toList(),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Menu(),
      appBar: AppBar(
        elevation: 10,
        actions: [
          // Theme(
          //   data: Theme.of(context).copyWith(
          //       dividerColor: Colors.white,
          //       iconTheme: IconThemeData(color: Colors.white)),
          //   child: Padding(
          //     padding: EdgeInsets.only(right: 15.0),
          //     child:
          //   ),
          // ),
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: InkWell(
              onTap: () {
                _showDialog();
              },
              child: Icon(
                Icons.g_translate,
                color: Colors.white,
              ),
            ),
          )
        ],
        title: const Text(
          "SGGS ",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff44270A),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Colors.white.withOpacity(0.8), BlendMode.srcOver),
                    image: AssetImage(
                      "Assets/New.png",
                    ),
                    fit: BoxFit.contain)),
            // child: Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Text("Drop Text"),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.1),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 5.0,
                right: 5,
                top: 10,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      "'ਸੁਣਿਐ ਦੂਖ ਪਾਪ ਕਾ ਨਾਸੁ ॥੯॥",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      // height: 200,
                      width: double.infinity,
                      decoration:
                          BoxDecoration(color: Colors.amber.withOpacity(0.1)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "'ਰੱਬ ਦੀ ਸਿਫ਼ਤਿ ਸਾਲਾਹ ਸੁਣਨ ਕਰਕੇ (ਮਨੁੱਖ ਦੇ) ਦੁਖਾਂ ਤੇ ਪਾਪਾਂ ਦਾ ਨਾਸ਼ ਹੋ ਜਾਂਦਾ ਹੈ'",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "11547, 1, 'suni-ai sat santokh gi-aan.', 2, 1, 'pp'",
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "By listening to Naam, one acquires truthfulness, contentment and spiritual knowledge', 2, 1, 'et'",
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      // height: 200,
                      width: double.infinity,
                      // decoration:
                      // BoxDecoration(color: Colors.amber.withOpacity(0.1)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "'ਰੱਬ ਦੀ ਸਿਫ਼ਤਿ ਸਾਲਾਹ ਸੁਣਨ ਕਰਕੇ (ਮਨੁੱਖ ਦੇ) ਦੁਖਾਂ ਤੇ ਪਾਪਾਂ ਦਾ ਨਾਸ਼ ਹੋ ਜਾਂਦਾ ਹੈ'",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          Text(
                            "11547, 1, 'suni-ai sat santokh gi-aan.', 2, 1, 'pp'",
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "By listening to Naam, one acquires truthfulness, contentment and spiritual knowledge', 2, 1, 'et'",
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      // height: 200,
                      width: double.infinity,
                      decoration:
                          BoxDecoration(color: Colors.amber.withOpacity(0.1)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "'ਰੱਬ ਦੀ ਸਿਫ਼ਤਿ ਸਾਲਾਹ ਸੁਣਨ ਕਰਕੇ (ਮਨੁੱਖ ਦੇ) ਦੁਖਾਂ ਤੇ ਪਾਪਾਂ ਦਾ ਨਾਸ਼ ਹੋ ਜਾਂਦਾ ਹੈ'",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "11547, 1, 'suni-ai sat santokh gi-aan.', 2, 1, 'pp'",
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "By listening to Naam, one acquires truthfulness, contentment and spiritual knowledge', 2, 1, 'et'",
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      // height: 200,
                      width: double.infinity,
                      // decoration:
                      // BoxDecoration(color: Colors.amber.withOpacity(0.1)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "'ਰੱਬ ਦੀ ਸਿਫ਼ਤਿ ਸਾਲਾਹ ਸੁਣਨ ਕਰਕੇ (ਮਨੁੱਖ ਦੇ) ਦੁਖਾਂ ਤੇ ਪਾਪਾਂ ਦਾ ਨਾਸ਼ ਹੋ ਜਾਂਦਾ ਹੈ'",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          Text(
                            "11547, 1, 'suni-ai sat santokh gi-aan.', 2, 1, 'pp'",
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "By listening to Naam, one acquires truthfulness, contentment and spiritual knowledge', 2, 1, 'et'",
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      // height: 200,
                      width: double.infinity,
                      decoration:
                          BoxDecoration(color: Colors.amber.withOpacity(0.1)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "'ਰੱਬ ਦੀ ਸਿਫ਼ਤਿ ਸਾਲਾਹ ਸੁਣਨ ਕਰਕੇ (ਮਨੁੱਖ ਦੇ) ਦੁਖਾਂ ਤੇ ਪਾਪਾਂ ਦਾ ਨਾਸ਼ ਹੋ ਜਾਂਦਾ ਹੈ'",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "11547, 1, 'suni-ai sat santokh gi-aan.', 2, 1, 'pp'",
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "By listening to Naam, one acquires truthfulness, contentment and spiritual knowledge', 2, 1, 'et'",
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      // height: 200,
                      width: double.infinity,
                      // decoration:
                      // BoxDecoration(color: Colors.amber.withOpacity(0.1)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "'ਰੱਬ ਦੀ ਸਿਫ਼ਤਿ ਸਾਲਾਹ ਸੁਣਨ ਕਰਕੇ (ਮਨੁੱਖ ਦੇ) ਦੁਖਾਂ ਤੇ ਪਾਪਾਂ ਦਾ ਨਾਸ਼ ਹੋ ਜਾਂਦਾ ਹੈ'",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          Text(
                            "11547, 1, 'suni-ai sat santokh gi-aan.', 2, 1, 'pp'",
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "By listening to Naam, one acquires truthfulness, contentment and spiritual knowledge', 2, 1, 'et'",
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      // height: 200,
                      width: double.infinity,
                      decoration:
                          BoxDecoration(color: Colors.amber.withOpacity(0.1)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "'ਰੱਬ ਦੀ ਸਿਫ਼ਤਿ ਸਾਲਾਹ ਸੁਣਨ ਕਰਕੇ (ਮਨੁੱਖ ਦੇ) ਦੁਖਾਂ ਤੇ ਪਾਪਾਂ ਦਾ ਨਾਸ਼ ਹੋ ਜਾਂਦਾ ਹੈ'",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "11547, 1, 'suni-ai sat santokh gi-aan.', 2, 1, 'pp'",
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "By listening to Naam, one acquires truthfulness, contentment and spiritual knowledge', 2, 1, 'et'",
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
