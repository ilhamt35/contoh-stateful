import 'package:contoh_stateful/second_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
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
                        'https://wilstar.com/wp-content/uploads/2018/03/Indonesia-Arcadia-1.jpg')),
              ),
            ),
            ElevatedButton(
              child: Text('Pindah ke Layar 2'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SecondPage();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
