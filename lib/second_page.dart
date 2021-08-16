import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: AppBar(
          flexibleSpace: Align(
            alignment: Alignment.bottomRight,
            child: Container(
              margin: EdgeInsets.all(10),
              child: Text(
                'Title',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: 'profile',
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image(
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://wilstar.com/wp-content/uploads/2018/03/Indonesia-Arcadia-1.jpg'))),
            ),
            ElevatedButton(
              child: Text('Kembali'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
