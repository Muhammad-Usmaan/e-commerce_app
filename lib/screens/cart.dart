import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "My Cart",
            style:
                GoogleFonts.dmSans(fontSize: 18, fontWeight: FontWeight.w900),
          ),
          SizedBox(height: 15,),
          Card(
            elevation: 4,
            child: Padding(
              padding: EdgeInsets.all(6),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Product",
                            style: GoogleFonts.dmSans(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),),
                                SizedBox(width: MediaQuery.of(context).size.width * 0.01,),
                    
                      Text("Quantity",
                            style: GoogleFonts.dmSans(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),),
                      Text("Price",
                            style: GoogleFonts.dmSans(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
