import 'package:flutter/material.dart';
import 'package:sample_design/recommendedcard.dart';

import 'firstcont.dart';
import 'mostviewed.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SampDesign(),
    );
  }
}

class SampDesign extends StatefulWidget {
  const SampDesign({super.key});

  @override
  State<SampDesign> createState() => _SampDesignState();
}

class _SampDesignState extends State<SampDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(5), child: AppBar()),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Container(
              height: 200,
              width: double.infinity,
              color: Color(0xFFD3D3D3),
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Text(
                    "Explore the world! By \nTravelling",
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  // Search Box
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: 'Where did you go?',
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: Icon(Icons.tune),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(vertical: 14),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Popular Locations",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        FirstCont(
                          name: "India",
                          image:
                              'https://rukminim2.flixcart.com/image/850/1000/xif0q/poster/b/x/u/medium-kedarnath-temple-i-kedarnath-i-wall-poster-a4-wp301a4-original-imah6enfgkpdtjhw.jpeg?q=90&crop=false',
                        ),
                        FirstCont(
                          name: "Moscow",
                          image:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYgYGvrRpK64Jp76ce2h-A2Dof48lxgLW3QA&s',
                        ),
                        FirstCont(
                          name: "USA",
                          image:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3oNVehAQFH0HBnp6t2aCAAb-F0ts52DraZA&s',
                        ),
                        FirstCont(
                          name: "Singapore",
                          image:
                              'https://static2.bigstockphoto.com/8/8/2/large1500/288789124.jpg',
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Recomended",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        RecommendedCard(
                          image:
                              'https://houssed.com/assets/Files/Blog/2024/04/discovering-15-different-types-of-houses-in-india.webp',
                          amount: '120',
                          desc: 'Caritania Lake Sea Breakfast...',
                          dna: 'Night',
                          spec: 'Private Room/4 Beds',
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        RecommendedCard(
                          image:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQ3R01GJfV3-nW366NIeBR2nDyVg4blLFeMQ&s',
                          amount: '30',
                          desc: 'Traditional Indian House...',
                          dna: 'Night',
                          spec: 'Private Room/5 Beds',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 250,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.network(
                      'https://freedesignfile.com/upload/2019/03/Girl-drinking-coffee-in-outdoor-cafe-Stock-Photo.jpg',
                      width: 350,
                      height: 250,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 30,
                    left: 20,
                    child: Text(
                      "Hosting Fee for\nas low as 1%",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 90,
                    left: 20,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                      ),
                      child: Text(
                        "Become a Host",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Most Viewed",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  MostViewed(
                    image:
                        'https://alps-resorts.com/assets/images/a/cgn-fta-0223-37-3231a694.jpg'
                        '',
                    amount: '90',
                    desc: 'Carinthia Lake Sea Breakfast Lorem...',
                    dna: 'Night',
                    spec: 'Private room/ 4 Beds',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MostViewed(
                    image:
                        'https://media-cdn.tripadvisor.com/media/photo-s/08/ee/dc/a3/seehotel-enzian.jpg',
                    amount: '300',
                    desc: 'Carinthia Lake Sea Breakfast Lorem...',
                    dna: 'Night',
                    spec: 'Private room/ 4 Beds',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MostViewed(
                    image:
                        'https://images.interhome.group/5A56365000711EDB868816DED533A1E5/tr:n-srp_hitbox_xl',
                    amount: '240',
                    desc: 'Carinthia Lake Sea Breakfast...',
                    dna: 'Night',
                    spec: 'Private room/ 5 Beds',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
