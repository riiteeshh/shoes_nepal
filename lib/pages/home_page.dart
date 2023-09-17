import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shoes_nepal/routes/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController _scrollController = ScrollController();
  bool rev = false;
  var items = [
    'Size',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  Future<void> initstate() async {
    _scrollController.addListener(() {
      setState(() {
        rev = _scrollController.position.userScrollDirection ==
            ScrollDirection.reverse;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Home',
            style: TextStyle(color: Colors.black),
          ),
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              )),
          actions: <Widget>[
            Row(
              children: <Widget>[
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search_rounded,
                      color: Colors.black,
                    )),
                // SizedBox(
                //   width: 5,
                // ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.filter_list,
                      color: Colors.black,
                    ))
              ],
            )
          ]),
      body: FutureBuilder(
          future: initstate(),
          builder: (context, snapshot) {
            return SingleChildScrollView(
              reverse: rev,
              physics: NeverScrollableScrollPhysics(),
              child: Column(
                children: <Widget>[
                  // SizedBox(
                  //   height: 15,
                  // ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Text(
                            'Shoes',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 30),
                          ),
                        ),
                        Container(
                          //     height: MediaQuery.of(context).size.height * 0.01,
                          //width: MediaQuery.of(context).size.width * 0.01,
                          child: DropdownButton(
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              hint: Text(
                                'Sort by',
                              ),
                              items: items.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              onChanged: (value) {}),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.9,
                    child: ListView.builder(
                        shrinkWrap: true,
                        controller: _scrollController,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () => Navigator.pushNamed(
                                context, RouteManager.productPage),
                            child: Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              width: double.infinity,
                              height: MediaQuery.of(context).size.height * 0.33,
                              child: Card(
                                // elevation: 0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                color:
                                    const Color(0x00f7f7f6).withOpacity(0.87),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.21,
                                        child: Stack(
                                          children: [
                                            Center(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.blueAccent
                                                      .withOpacity(0.15),
                                                  shape: BoxShape.circle,
                                                ),
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.55,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.55,
                                              ),
                                            ),
                                            Center(
                                              child: Image.asset(
                                                  'lib/images/shoes_icon_sample.png'),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        child: Text(
                                          'Nike Air Max 270 React',
                                          style: TextStyle(
                                              fontFamily: 'SecularOne',
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        child: Text(
                                          'Nrs.10000',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      )
                                    ]),
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
