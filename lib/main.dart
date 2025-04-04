import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'firstcont.dart';
import 'mostviewed.dart';
import 'recommendedcard.dart';

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
  final List<Map<String, String>> popularLocations = [
    {
      "name": "India",
      "image":
          "https://rukminim2.flixcart.com/image/850/1000/xif0q/poster/b/x/u/medium-kedarnath-temple-i-kedarnath-i-wall-poster-a4-wp301a4-original-imah6enfgkpdtjhw.jpeg?q=90&crop=false"
    },
    {
      "name": "Moscow",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYgYGvrRpK64Jp76ce2h-A2Dof48lxgLW3QA&s"
    },
    {
      "name": "USA",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3oNVehAQFH0HBnp6t2aCAAb-F0ts52DraZA&s"
    },
    {
      "name": "Singapore",
      "image": "https://static2.bigstockphoto.com/8/8/2/large1500/288789124.jpg"
    }
  ];

  final List<Map<String, String>> recommendedPlaces = [
    {
      "image":
          "https://houssed.com/assets/Files/Blog/2024/04/discovering-15-different-types-of-houses-in-india.webp",
      "amount": "120",
      "desc": "Caritania Lake Sea Breakfast...",
      "dna": "Night",
      "spec": "Private Room/4 Beds"
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQ3R01GJfV3-nW366NIeBR2nDyVg4blLFeMQ&s",
      "amount": "30",
      "desc": "Traditional Indian House...",
      "dna": "Night",
      "spec": "Private Room/5 Beds"
    }
  ];

  final List<Map<String, String>> mostViewedPlaces = [
    {
      "image":
          "https://alps-resorts.com/assets/images/a/cgn-fta-0223-37-3231a694.jpg",
      "amount": "90",
      "desc": "Carinthia Lake Sea Breakfast Lorem...",
      "dna": "Night",
      "spec": "Private room/ 4 Beds"
    },
    {
      "image":
          "https://media-cdn.tripadvisor.com/media/photo-s/08/ee/dc/a3/seehotel-enzian.jpg",
      "amount": "300",
      "desc": "Carinthia Lake Sea Breakfast Lorem...",
      "dna": "Night",
      "spec": "Private room/ 4 Beds"
    },
    {
      "image":
          "https://images.interhome.group/5A56365000711EDB868816DED533A1E5/tr:n-srp_hitbox_xl",
      "amount": "240",
      "desc": "Carinthia Lake Sea Breakfast...",
      "dna": "Night",
      "spec": "Private room/ 5 Beds"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(5), child: AppBar()),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _buildSearchBox(context),
            const SizedBox(height: 40),
            _buildSection("Popular Locations", _buildPopularLocations()),
            _buildSection("Recommended", _buildRecommendedPlaces()),
            const SizedBox(height: 20),
            _buildHostingBanner(context),
            const SizedBox(height: 20),
            _buildSection("Most Viewed", _buildMostViewedPlaces()),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchBox(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.grey[100], // Light background color
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Explore the world! By\nTravelling",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              Expanded(
                flex: 7,
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 4,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Where did you go?',
                      hintStyle: TextStyle(color: Colors.grey[600]),
                      prefixIcon:
                          const Icon(Icons.search, color: Colors.black54),
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 14, horizontal: 20),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                flex: 1,
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 4,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.tune, color: Colors.black54),
                    onPressed: () {
                      // Add filter functionality here
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPopularLocations() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: popularLocations.map((place) {
          return FirstCont(name: place["name"]!, image: place["image"]!);
        }).toList(),
      ),
    );
  }

  Widget _buildRecommendedPlaces() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: recommendedPlaces.map((place) {
          return RecommendedCard(
            image: place["image"]!,
            amount: place["amount"]!,
            desc: place["desc"]!,
            dna: place["dna"]!,
            spec: place["spec"]!,
          );
        }).toList(),
      ),
    );
  }

  Widget _buildMostViewedPlaces() {
    return Column(
      children: mostViewedPlaces.map((place) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: MostViewed(
            image: place["image"]!,
            amount: place["amount"]!,
            desc: place["desc"]!,
            dna: place["dna"]!,
            spec: place["spec"]!,
          ),
        );
      }).toList(),
    );
  }

  Widget _buildHostingBanner(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width * 0.9;
    double screenWidth1 = MediaQuery.of(context).size.width * 0.88;
    double screenHeight = screenWidth * 0.65;

    return Container(
      width: screenWidth1,
      height: screenHeight,
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
          // Background Image
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              'https://freedesignfile.com/upload/2019/03/Girl-drinking-coffee-in-outdoor-cafe-Stock-Photo.jpg',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          // Text
          Positioned(
            top: screenHeight * 0.15,
            left: screenWidth1 * 0.08,
            child: const Text(
              "Hosting Fee for\nas low as 1%",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            top: screenHeight * 0.45,
            left: screenWidth1 * 0.08,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                "Become a Host",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSection(String title, Widget child) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 10),
          child,
        ],
      ),
    );
  }
}
