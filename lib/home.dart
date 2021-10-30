import 'package:bookstoreapp/singleproduct.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: MediaQuery.of(context).size.height * 0.09,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.sort_rounded,
          color: Colors.black,
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.black,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(
            MediaQuery.of(context).size.height * 0.03,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              heading1("Popular Now"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    productcon(context, "assets/images/image1.jpg",
                        "Creative Hustle", "Ramen Albert"),
                    productcon(context, "assets/images/image2.jpg",
                        "Art Unleased", "Stefeno Milk"),
                    productcon(context, "assets/images/image3.jpg",
                        "Creative Hustle", "Creative Hustle"),
                    productcon(context, "assets/images/image4.jpg",
                        "The Study of Brain", "Creative Hustle"),
                  ],
                ),
              ),
              heading3("BestSeller"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    productcon(context, "assets/images/image3.jpg",
                        "The Study of Brain", "Creative Hustle"),
                    productcon(context, "assets/images/image4.jpg",
                        "Creative Hustle", "Creative Hustle"),
                    productcon(context, "assets/images/image1.jpg",
                        "Creative Hustle", "Creative Hustle"),
                    productcon(context, "assets/images/image1.jpg",
                        "Creative Hustle", "Creative Hustle"),
                    productcon(context, "assets/images/image1.jpg",
                        "Creative Hustle", "Creative Hustle"),
                    productcon(context, "assets/images/image1.jpg",
                        "Creative Hustle", "Creative Hustle"),
                  ],
                ),
              ),
              ElevatedButton(
                child: Text(
                  "dsd",
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Singleproduct()),
                  );
                },
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.storefront_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_border),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Setting',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_input_component_rounded),
            label: 'About',
          ),
        ],
        backgroundColor: Colors.white,
        fixedColor: Colors.blue[900],
      ),
    );
  }
}

Widget heading1(String head1) {
  return Text(
    head1,
    style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w800,
    ),
  );
}

Widget heading3(String head1) {
  return Text(
    head1,
    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
  );
}

Widget productcon(context, String img, text1, text2) {
  return Container(
    margin: EdgeInsets.only(
      top: MediaQuery.of(context).size.height * 0.02,
      right: MediaQuery.of(context).size.width * 0.02,
      bottom: MediaQuery.of(context).size.height * 0.04,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(
            bottom: MediaQuery.of(context).size.width * 0.02,
          ),
          width: MediaQuery.of(context).size.width * 0.4,
          height: MediaQuery.of(context).size.height * 0.3,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                img,
              ),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.all(
                Radius.circular(15.0) //                 <--- border radius here
                ),
          ),
        ),
        Text(
          text1,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        ),
        Text(
          text2,
          style: TextStyle(
              fontSize: 12, fontWeight: FontWeight.w200, color: Colors.black),
        ),
      ],
    ),
  );
}
