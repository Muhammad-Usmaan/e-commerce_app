import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app_ui/screens/home.dart';

class ProductView extends StatefulWidget {
  final Product product;
  ProductView({required this.product});

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  // Quantity Variable
  int _quantity = 1;

  // Customized Size radio variable
  int _selectedSize = 0;

  // Customized Color radio variable
  int _selectedColor = 0;

// Custom radio function for size
  Widget _selectNum(double size, int index) {
    return InkWell(
      onTap: () {
        setState(() {
          _selectedSize = index;
        });
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 3),
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: (_selectedSize == index) ? Colors.black : Colors.white,
            border: Border.all(
                style: (_selectedSize == index)
                    ? BorderStyle.none
                    : BorderStyle.solid)),
        child: Center(
          child: Text(
            '$size',
            style: TextStyle(
                fontSize: 12,
                color: (_selectedSize == index) ? Colors.white : Colors.black),
          ),
        ),
      ),
    );
  }

  // Custom radio function for Color
  Widget _selectColor(Color color, int index) {
    return InkWell(
      onTap: () {
        setState(() {
          _selectedColor = index;
        });
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 3),
        height: 20,
        width: 20,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
            border: Border.all(style: BorderStyle.none)),
        child: Center(
            child: (_selectedColor == index)
                ? Icon(
                    Icons.done,
                    color: Colors.white,
                    size: 15,
                  )
                : null),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Width of screen
    double screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 300,
                      width: screenWidth,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(widget.product.imageUrl),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 8,
                      left: 8,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_circle_left),
                        style: IconButton.styleFrom(
                            foregroundColor: Colors.black, iconSize: 32),
                      ),
                    ),
                    Positioned(
                      top: 12,
                      right: 15,
                      child: IconButton(
                        padding: EdgeInsets.all(4),
                        constraints: BoxConstraints(),
                        onPressed: () {},
                        icon: Icon(Icons.shopping_bag_outlined),
                        style: IconButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            iconSize: 18),
                      ),
                    ),
                    Positioned(
                      bottom: 12,
                      right: 15,
                      child: IconButton(
                        padding: EdgeInsets.all(4),
                        constraints: BoxConstraints(),
                        onPressed: () {},
                        icon: Icon(Icons.favorite_border),
                        style: IconButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            iconSize: 18),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.product.name,
                            style: GoogleFonts.dmSans(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Text(
                            widget.product.subText,
                            style: GoogleFonts.dmSans(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                          const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 18,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 18,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 18,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 18,
                              ),
                              Icon(
                                Icons.star_border,
                                color: Colors.black54,
                                size: 18,
                              ),
                              Text("(245 reviews)")
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 25,
                            width: 60,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 212, 211, 211),
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      if (_quantity > 1) {
                                        _quantity--;
                                      }
                                    });
                                  },
                                  child: Text(
                                    '-',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text("$_quantity"),
                                SizedBox(
                                  width: 8,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      _quantity++;
                                    });
                                  },
                                  child: Text(
                                    '+',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Available in stocks",
                            style:
                                GoogleFonts.dmSans(fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Size',
                            style: GoogleFonts.dmSans(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            width: screenWidth * 0.8,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  _selectNum(39, 1),
                                  _selectNum(39.5, 2),
                                  _selectNum(40, 3),
                                  _selectNum(40.5, 4),
                                  _selectNum(41, 5),
                                  _selectNum(41.5, 6),
                                  _selectNum(42, 7),
                                  _selectNum(42.5, 8),
                                  _selectNum(43, 9),
                                  _selectNum(43.5, 10),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Card(
                        margin: EdgeInsets.only(right: 15),
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            children: [
                              _selectColor(Colors.black, 1),
                              _selectColor(Colors.red, 2),
                              _selectColor(Colors.green, 3),
                              _selectColor(Colors.blueGrey, 4),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  // SizedBox(height: 35,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Description",
                        style: GoogleFonts.dmSans(
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text(
                          widget.product.description,
                          style: GoogleFonts.dmSans(
                              fontSize: 12, color: Colors.grey),
                        ),
                      )
                    ],
                  )
                ])
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.white, // Background color for the BottomAppBar
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), // Radius for the top left corner
              topRight: Radius.circular(20), // Radius for the top right corner
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
                offset: Offset(
                    0, -1), // Offset shadow upwards to match the BottomAppBar
              ),
            ],
          ),
          child: BottomAppBar(
            elevation: 5,
            color: Colors.transparent,
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total Price',
                      style: GoogleFonts.dmSans(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                    Text('\$${widget.product.price}',
                        style: GoogleFonts.dmSans(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold))
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.shopping_bag_rounded,
                        color: Colors.white,
                        size: 18,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text('Buy Now',
                          style: GoogleFonts.dmSans(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 15)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
