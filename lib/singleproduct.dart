import 'package:flutter/material.dart';

class Singleproduct extends StatelessWidget {
  const Singleproduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          // toolbarHeight: MediaQuery.of(context).size.height * 0.09,
          backgroundColor: Colors.brown[100],
          leading: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          actions: [
            Icon(
              Icons.bookmark_border,
              color: Colors.black,
            ),
            Icon(
              Icons.more_vert_rounded,
              color: Colors.black,
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [productdet(context), productdetails()],
        ));
  }
}

Widget productdet(context) {
  return Container(
    color: Colors.brown[100],
    height: MediaQuery.of(context).size.height * 0.5,
    child: Column(
      children: [
        Container(
          width: 150,
          color: Colors.red,
          child: Image.asset('assets/images/image5.jpg', fit: BoxFit.fill),
        ),
        Text("dj"),
        Text("data"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.star,
              color: Colors.indigo[900],
            ),
            Icon(
              Icons.star,
              color: Colors.indigo[900],
            ),
            Icon(
              Icons.star,
              color: Colors.indigo[900],
            ),
            Icon(
              Icons.star,
              color: Colors.indigo[900],
            ),
            Icon(
              Icons.star_half,
              color: Colors.indigo[900],
            ),
            Text("4.5"),
            Text("/5.0")
          ],
        )
      ],
    ),
  );
}

Widget productdetails() {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Text("data")],
    ),
  );
}
