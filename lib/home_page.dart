import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

bool isLoading = true;


class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const Text(
              'Welcome to   ',
              style: TextStyle(color: Colors.white),
            ),

            Container(
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: const Hero(
                tag: 'logo',
                child: Text(
                  ' Tanggle',
                  style: TextStyle(color: Colors.red,fontSize: 15),
                ),
              ),
            )
          ],
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
             SizedBox(
               height: 300,
               width: 300,
               child: ClipRRect(
                 borderRadius: const BorderRadius.all(Radius.circular(10)),
                 child: Image(
                  image:  const NetworkImage(
                      'https://images.all-free-download.com/images/graphiclarge/beauty_of_nature_17_211513.jpg'),
                  fit: BoxFit.cover,
                  semanticLabel: 'Palm tree',
                  // frameBuilder: (context, child, frame ,synchro){
                  //   return Container(
                  //     height: 50,
                  //     width: 50,
                  //     color: Colors.black12,
                  //   );
                  // },
                  loadingBuilder: (context,  child,  loadingProgress){
                    ///There are two ways of writing this. The other method is below
                    // if(loadingProgress == null) //{ return child;
                      return loadingProgress == null ? child : const Center(child: SizedBox(height: 50, width: 50, child: CircularProgressIndicator(color: Colors.tealAccent,)));
                      // }
                    // return Center(
                    //   child: CircularProgressIndicator(
                    //     value: loadingProgress.expectedTotalBytes != null ? loadingProgress.cumulativeBytesLoaded /loadingProgress.expectedTotalBytes!
                    //         : null,
                    //   ),
                    // );
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
                    const SizedBox(width: 10,),
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
                              child: Container(height: 20, width: 20,
                                child: CircularProgressIndicator(color: Colors.teal,
                                  value: loadingProgress.expectedTotalBytes != null ? loadingProgress.cumulativeBytesLoaded /loadingProgress.expectedTotalBytes!
                                      : null,
                                ),
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
