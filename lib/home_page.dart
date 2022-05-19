import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

List<String> hotels = [
  'burj-al_arab.jpg',
  'burj_al_arab_hotel.jpg',
  'l_hotel.jpg',
  'Lagos _continental_hotel 75k.jpg',
  'lagos_marriott_hotel_ikeja_lagos.jpg',
  'mardan_palace_hotel_antalya_turkey.jpg',
  'mercia_hotels_&_ resort_buyukcekmece.jpg',
  'raffles_dubai.jpg',
  'raffles_hotels.jpg',
  'regent_carousel_1.jpg',
  'wild_wadi.jpg'
];

List<String> cars = [
  'Aston Martin Valhalla_03_0.jpg',
  'aston-martin-valhalla.jpg',
  'Bugatti.jpg',
  'Ford Raptor.jpg',
  'La-Voiture-Noire-BUGATTI.jpg',
  'Lexus electric suv.jpg',
  'lexus-electrified-suv.jpg',
  'P90423783_highRes_rolls-royce-boat-tai_1622170848632_1622170875668.webp',
  'RR.jpg',
  'Wrangler Jeep on toyo tires.jpg'
];



class _HomePageState extends State<HomePage> {

  var viewedImage = 'nature.jpg';
  String x = 'hotels';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to   ',
              style: TextStyle(color: Colors.white),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: const Hero(
                tag: 'logo',
                child: Text(
                  ' Tanggle',
                  style: TextStyle(color: Colors.red, fontSize: 15),
                ),
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              const SizedBox(
                height: 20,
              ),
                SizedBox(
                height: 300,
                width: 300,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: Image(
                    image: AssetImage('assets/$x/$viewedImage'),
                  //  image:  const NetworkImage(
                    //    'https://images.all-free-download.com/images/graphiclarge/beauty_of_nature_17_211513.jpg'),
                    fit: BoxFit.cover,
                    semanticLabel: 'image',
                    // frameBuilder: (context, child, frame ,synchro){
                    //   return Container(
                    //     height: 50,
                    //     width: 50,
                    //     color: Colors.black12,
                    //   );
                    // },
                    //   loadingBuilder: (context,  child,  loadingProgress){
                    ///There are two ways of writing this. The other method is below
                    // if(loadingProgress == null) //{ return child;
                    //     return loadingProgress == null ? child : const Center(child: SizedBox(height: 50, width: 50, child: CircularProgressIndicator(color: Colors.tealAccent,)));
                    // }
                    // return Center(
                    //   child: CircularProgressIndicator(
                    //     value: loadingProgress.expectedTotalBytes != null ? loadingProgress.cumulativeBytesLoaded /loadingProgress.expectedTotalBytes!
                    //         : null,
                    //   ),
                    // );
                    //},
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Row(
                children: const [
                  SizedBox(width: 30),
                  Text('Hotels', style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(width: 10),
                  Icon(
                    Icons.star,
                    size: 15,
                    color: Colors.orange,
                  ),
                  Icon(
                    Icons.star,
                    size: 15,
                    color: Colors.orange,
                  ),
                  Icon(
                    Icons.star,
                    size: 15,
                    color: Colors.orange,
                  ),
                  Icon(
                    Icons.star,
                    size: 15,
                    color: Colors.orange,
                  ),
                  Icon(
                    Icons.star,
                    size: 15,
                    color: Colors.orange,
                  )
                ],
              ),
              const SizedBox(height: 5),
              Container(
                height: 60,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    var vacImage = hotels[index];

                    return Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {
                            x = 'hotels';
                            setState(() {
                              ///this can be written outside or inside the setState
                              viewedImage = vacImage;
                            });
                            // viewedImage = vacImage;
                          },
                          child: Container(
                            height: 50,
                            width: 50,
                            child: ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              child: Image(
                                image:  AssetImage(
                                    'assets/hotels/$vacImage'),
                                fit: BoxFit.cover,
                                loadingBuilder:
                                    (context, child, loadingProgress) {
                                  if (loadingProgress == null) return child;
                                  return Center(
                                    child: Container(
                                      height: 20,
                                      width: 20,
                                      child: CircularProgressIndicator(
                                        color: Colors.teal,
                                        value: loadingProgress
                                                    .expectedTotalBytes !=
                                                null
                                            ? loadingProgress
                                                    .cumulativeBytesLoaded /
                                                loadingProgress
                                                    .expectedTotalBytes!
                                            : null,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                  itemCount: hotels.length,
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: const [
                  SizedBox(width: 30),
                  Text(
                    'Cars for hire',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.check_circle,
                    size: 18,
                    color: Colors.teal,
                  ),
                ],
              ),
              const SizedBox(height: 5),

              ///ListView builder for cars

              Container(
                height: 60,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    var carImage = cars[index];

                    return Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {
                            x = 'cars';
                            setState(() {});
                            viewedImage = carImage;
                          },
                          child: Container(
                            height: 50,
                            width: 50,
                            child: ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              child: Image(
                                image:  AssetImage(
                                    'assets/cars/$carImage'),
                                fit: BoxFit.cover,
                                loadingBuilder:
                                    (context, child, loadingProgress) {
                                  if (loadingProgress == null) return child;
                                  return Center(
                                    child: Container(
                                      height: 20,
                                      width: 20,
                                      child: CircularProgressIndicator(
                                        color: Colors.teal,
                                        value: loadingProgress
                                                    .expectedTotalBytes !=
                                                null
                                            ? loadingProgress
                                                    .cumulativeBytesLoaded /
                                                loadingProgress
                                                    .expectedTotalBytes!
                                            : null,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                  itemCount: cars.length,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Benson Akaiso',
                    style: TextStyle(color: Colors.teal, fontSize: 10),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
