import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Welcome to Tanggle',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 40,
            ),
             Container(
               height: 300,
               width: 300,
               child: ClipRRect(
                 borderRadius: const BorderRadius.all(Radius.circular(10)),
                 child: Image(
                  image:  const NetworkImage(
                      'https://images.all-free-download.com/images/graphiclarge/beauty_of_nature_17_211513.jpg'),
                  fit: BoxFit.cover,
                  loadingBuilder: (context,  child,  loadingProgress){
                    if(loadingProgress == null) return child;
                    return Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null ? loadingProgress.cumulativeBytesLoaded /loadingProgress.expectedTotalBytes!
                            : null,
                      ),
                    );
                  },
            ),
               ),
             ),
            const SizedBox(height: 20),
            Container(
              color: Colors.tealAccent,
              height: 100,
              child: ListView.builder(
                scrollDirection:Axis.horizontal,
                itemBuilder: (context, index){
                return Row(
                  children: [
                    SizedBox(width: 10,),
                    Container(
                      height: 70,
                      width: 70,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        child: Image(
                          image:  const NetworkImage(
                              'https://images.all-free-download.com/images/graphiclarge/beauty_of_nature_17_211513.jpg'),
                          fit: BoxFit.cover,
                          loadingBuilder: (context,  child,  loadingProgress){
                            if(loadingProgress == null) return child;
                            return Center(
                              child: CircularProgressIndicator(
                                value: loadingProgress.expectedTotalBytes != null ? loadingProgress.cumulativeBytesLoaded /loadingProgress.expectedTotalBytes!
                                    : null,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                );
              },
              itemCount: 5,),
            ),
          ],
        ),
      ),
    );
  }
}
