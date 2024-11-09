import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app_ui/screens/productDetails.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  // Offer container Object
  Widget offerContainer(String offerPercentage, String imageUrl) {
    return Container(
      margin: const EdgeInsets.only(right: 12.0),
      width: 320,
      height: 170,
      decoration: BoxDecoration(
          image:
              DecorationImage(image: NetworkImage(imageUrl), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "$offerPercentage% Off",
              style: GoogleFonts.dmSans(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
            Text(
              "on everything today",
              style: GoogleFonts.dmSans(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 8,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Get Now",
                style: GoogleFonts.dmSans(),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, foregroundColor: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "use code BUYFS",
              style: GoogleFonts.dmSans(
                color: const Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }

  // Products List
  final List products = [
    Product(
        name: 'The Mark Jacobs',
        subText: 'Traveller Tote',
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRS-xZIED782mD15--y91B9LJsGvpcqTG_lQQ&s',
        price: '195.00',
        description:
            "Elegant and versatile, this leather tote bag is crafted from premium, full-grain leather. With ample space and a minimalist design, it's perfect for carrying your essentials in style. Featuring sturdy handles, a secure zipper closure, and an interior pocket for organization, this tote seamlessly blends function with fashion—ideal for work, travel, or everyday use."),
    Product(
        name: 'Axel Arigato',
        subText: 'Clean 90 triple sneakers',
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNS-LpJ5MsusCNRvH38bgUavsCCKvURY7prA&s',
        price: '245.0',
        description:
            "Sleek and comfortable, these sneakers are designed to keep up with your active lifestyle. Made with breathable materials and cushioned soles, they provide all-day comfort and support. With a modern look and versatile design, these sneakers are perfect for both casual outings and athletic activities, making them an essential addition to any wardrobe."),
    Product(
        name: 'Zanels High',
        subText: 'Minimal luxury',
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSL2i0arQ_L-xe4BY8zDtAnT__BmRCUN977lA&s',
        price: '215.0',
        description:
            "Lightweight and stylish, these sandals are perfect for warm-weather comfort. Crafted with soft straps and a cushioned footbed, they offer excellent support for all-day wear. Their versatile design makes them easy to pair with any outfit, whether you're headed to the beach, running errands, or enjoying a casual day out. Your go-to choice for effortless style and relaxation"),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            // Offer Containers
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  offerContainer("50",
                      'https://plus.unsplash.com/premium_photo-1683121271931-669e09a55414?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cGVvcGxlJTIwc2hvcHBpbmd8ZW58MHx8MHx8fDA%3D'),
                  offerContainer('70',
                      'https://media.istockphoto.com/id/1214561965/photo/young-man-in-shopping-looking-for-presents-consumerism-fashion-lifestyle-concept.jpg?s=612x612&w=0&k=20&c=G1n6f4oQ6om156yTJgdKiQ8_Mn6KqtKAHHXDY0-4f3Q=')
                ],
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "New Arrivals",
                  style: GoogleFonts.dmSans(
                      fontSize: 18, fontWeight: FontWeight.w900),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "See all",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: const Color.fromARGB(255, 104, 104, 104),
                        decoration: TextDecoration.underline,
                      ),
                    ))
              ],
            ),
            Container(
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductView(
                                    product: product,
                                  )),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        width: 150,
                        child: Column(
                          children: [
                            Expanded(
                              child: Stack(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: NetworkImage(product.imageUrl),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  Positioned(
                                      top: 6,
                                      right: 6,
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.favorite_border,
                                            color: Colors.white,
                                          ),
                                          padding: EdgeInsets.all(6),
                                          constraints: BoxConstraints(),
                                          iconSize: 15,
                                          style: IconButton.styleFrom(
                                            backgroundColor: Colors.black,
                                          )))
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      product.name,
                                      style: GoogleFonts.dmSans(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ),
                                  Text(
                                    product.subText,
                                    style: GoogleFonts.dmSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                  ),
                                  Text(
                                    "\$${product.price}",
                                    style: GoogleFonts.dmSans(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular",
                  style: GoogleFonts.dmSans(
                      fontSize: 18, fontWeight: FontWeight.w900),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "See all",
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: const Color.fromARGB(255, 104, 104, 104),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return Card(
                    elevation: 10,
                    child: ListTile(
                      onTap: (){
                         Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductView(
                                    product: product,
                                  )),
                        );
                      },
                      leading: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image(
                            image: NetworkImage(product.imageUrl,
                            ),
                            height: 50,
                            width: 50,
                            fit: BoxFit.cover,
                          )),
                      title: Text(product.name,
                      style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 16
                          ),),
                      subtitle: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(product.subText,
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey
                          ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 18,
                              ),
                              SizedBox(width: 6,),
                              Text('(4.3)')
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Product {
  final String name;
  final String subText;
  final String imageUrl;
  final String price;
  final String description;

  Product({
    required this.name,
    required this.subText,
    required this.imageUrl,
    required this.price,
    required this.description,
  });
}
