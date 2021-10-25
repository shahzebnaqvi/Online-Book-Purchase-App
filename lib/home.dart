import 'package:bookstoreapp/singleproduct.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * 0.15,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.menu_rounded,
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
                    productcon(context),
                    productcon(context),
                    productcon(context),
                    productcon(context),
                  ],
                ),
              ),
              heading3("BestSeller"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    productcon(context),
                    productcon(context),
                    productcon(context),
                    productcon(context),
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

Widget productcon(context) {
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
              image: NetworkImage(
                "https://previews.123rf.com/images/evgenyi/evgenyi1701/evgenyi170100040/73391527-stack-of-different-books-isolated-on-white-background-vertical-photo-.jpg",
              ),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.all(
                Radius.circular(15.0) //                 <--- border radius here
                ),
          ),
        ),
        Text(
          "Creative Hustle",
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        ),
        Text(
          "Ramen Albert",
          style: TextStyle(
              fontSize: 12, fontWeight: FontWeight.w200, color: Colors.black),
        ),
      ],
    ),
  );
}
