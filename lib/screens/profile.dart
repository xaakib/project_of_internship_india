import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              icon: Icon(Icons.chat_bubble_outline),
              onPressed: () {},
            ),
          ),
        ],
        elevation: 0,
      ),
      body: Column(
        children: [
          Stack(
            children: [
              ClipPath(
                clipper: MyClipper(),
                child: Container(
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.blue,
                ),
              ),
              Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 80.0,
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1610212570340-dce3cf34b288?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0N3x8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                      backgroundColor: Colors.transparent,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "ARBAAZ KADWELKAR",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "01/02/2000",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(
                            30.0) //                 <--- border radius here
                        ),
                  ),
                  child: Center(
                      child: Text(
                    "SHARE QR CODE",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  )),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(
                            30.0) //                 <--- border radius here
                        ),
                  ),
                  child: Center(
                      child: Text(
                    "HISTORY",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  )),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(
                            30.0) //                 <--- border radius here
                        ),
                  ),
                  child: Center(
                      child: Text(
                    "MY DOCTORS",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  )),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(
                            30.0) //                 <--- border radius here
                        ),
                  ),
                  child: Center(
                      child: Text(
                    "ADD REPORTS",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  )),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(
                            30.0) //                 <--- border radius here
                        ),
                  ),
                  child: Center(
                      child: Text(
                    "HELP CENTER",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  )),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 50);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 50);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
