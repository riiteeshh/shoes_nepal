import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 1,
      //   backgroundColor: Color(0x00f7f7f6).withOpacity(0.87),
      //   actions: [
      //     IconButton(
      //         onPressed: () {},
      //         icon: Icon(
      //           Icons.more_vert_outlined,
      //           size: 35,
      //         ))
      //   ],
      // ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              color: Color(0x00f7f7f6),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.4,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(45),
                        bottomRight: Radius.circular(45))),
                color: Color(0x00f7f7f6).withOpacity(0.87),
                child: Container(
                  padding: EdgeInsets.all(20),
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: Image.asset('lib/images/shoes_icon_sample.png'),
                ),
              ),
            ),
            SizedBox(
              height: 45,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.06,
              child: Image.asset('lib/images/nikelogo.png'),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                'Nike Air Max 270 React',
                style: TextStyle(fontFamily: 'SecularOne', fontSize: 32),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                'Nrs.10000',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.topLeft,
              child: Text(
                'Size',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.12,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                          height: MediaQuery.of(context).size.height * 0.13,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            color: Color(0x00f7f7f6).withOpacity(0.87),
                            child: Center(
                                child: Text(
                              '41',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            )),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        )
                      ],
                    );
                  }),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.08,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                child: Text(
                  'Add to Cart',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
