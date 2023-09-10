import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size screensize =MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('HngX-Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox.square(
                  dimension: 50,
                ),
      
                SizedBox(
                  height: 200,
                  width: 200,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(image: AssetImage('assets/profile_pic.jpg'))
                    ),              ),
                ),
            
                SizedBox(
                  height: 150,
                  width: screensize.width,
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Chijindu Edeh', style: TextStyle(fontSize: 20),),
                      Text('Track: Mobile(Flutter)'),
                      Text('Email address: ceejosh360@gmail.com'),
                      Text('Phone: 08079904793'),
                    ]
                  ),
                ),
            
                ElevatedButton(
                        onPressed: ()async{
                          await launchUrl(Uri.parse('https://github.com/Edeh-cj'));
                        }, 
                        child: const Text('Github')
                      )
              ],
            ),
          ],
        ),
      ),
    );
  }
}