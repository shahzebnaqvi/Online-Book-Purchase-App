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
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [productdet(context), productdetails()],
          ),
        ));
  }
}

Widget productdetails() {
  return Container(
    padding: EdgeInsets.all(20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Description",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          "Dean on Branding presents in a compact from the twenty essential principles of branding that will lead to the creation og strong brand",
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue[900],
                ),
                onPressed: () {},
                icon: Icon(Icons.menu_book),
                label: Text("Preview")),
            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue[900],
                ),
                onPressed: () {},
                icon: Icon(Icons.reviews),
                label: Text("Reviews"))
          ],
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(double.infinity, 40),
              primary: Colors.blue[
                  900], // double.infinity is the width and 30 is the height
            ),
            onPressed: () {},
            child: Text("Buy Now For \$29.67")),
      ],
    ),
  );
}

Widget productdet(context) {
  return Container(
    color: Colors.brown[100],
    height: MediaQuery.of(context).size.height * 0.55,
    child: Column(
      children: [
        Container(
          width: 140,
          color: Colors.red,
          child: Image.asset('assets/images/image5.jpg', fit: BoxFit.fill),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(
            "Brand Strategy",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Text("Dean Warner"),
        ),
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
            Text(
              "/5.0",
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        )
      ],
    ),
  );
}
