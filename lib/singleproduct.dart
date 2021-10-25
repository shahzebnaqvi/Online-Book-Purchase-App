import 'package:flutter/material.dart';

class Singleproduct extends StatelessWidget {
  const Singleproduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [productdet(context), productdetails()],
      ),
    );
  }
}

Widget productdet(context) {
  return Container(
    color: Colors.brown[100],
    height: MediaQuery.of(context).size.height * 0.6,
    width: MediaQuery.of(context).size.width,
    child: Column(
      children: [
        Image.network(
          "https://pngimg.com/uploads/book/book_PNG2105.png",
          width: 400,
          height: 100,
        ),
        Text("data"),
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
