import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:shopping_app_ui/screens/account.dart';
import 'package:shopping_app_ui/screens/cart.dart';
import 'package:shopping_app_ui/screens/home.dart';
import 'package:shopping_app_ui/screens/notification.dart';

class StartAppView extends StatefulWidget {
  const StartAppView({super.key});

  @override
  State<StartAppView> createState() => _StartAppViewState();
}

class _StartAppViewState extends State<StartAppView> {
  // Current page index
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    // Width of screen
    double screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        // AppBAr
        appBar: AppBar(
          leading: Container(
            height: 5,
            width: 5,
            margin: const EdgeInsets.fromLTRB(12, 8, 0, 8),
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.black),
            child: Builder(builder: (context) {
              return IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 18,
                  ));
            }),
          ),
          actions: const [
            Icon(Icons.search_outlined),
            SizedBox(
              width: 20,
            )
          ],
        ),

        // Drawer
        drawer: const Drawer(),

        // Body content
        body: getCurrentView(),
        // Bottom navigation bar
        bottomNavigationBar: Material(
          elevation: 12,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
                child: GNav(
                    onTabChange: (value) {
                      setState(() {
                        _currentPage = value;
                      });
                    },
                    selectedIndex: _currentPage,
                    gap: 8,
                    tabBackgroundColor: Color.fromARGB(255, 196, 195, 195),
                    padding: EdgeInsets.all(0),
                    tabs: [
                      GButton(
                        icon: Icons.home_outlined,
                        text: 'Home',
                        leading: Container(
                          // Wrap the icon in a background
                          decoration: BoxDecoration(
                            color: _currentPage == 0
                                ? Colors.black
                                : Colors
                                    .transparent, // Background color for active icon
                            shape: BoxShape.circle, // Makes it circular
                          ),
                          padding: EdgeInsets.all(
                              4), // Add padding to size the background
                          child: Icon(
                            _currentPage == 0
                                ? Icons.home
                                : Icons.home_outlined,
                            color:
                                _currentPage == 0 ? Colors.white : Colors.black,
                          ), // Icon color
                        ),
                      ),
                      GButton(
                        icon: Icons.shopping_cart_outlined,
                        text: 'Cart',
                        leading: Container(
                          // Wrap the icon in a background
                          decoration: BoxDecoration(
                            color: _currentPage == 1
                                ? Colors.black
                                : Colors
                                    .transparent, // Background color for active icon
                            shape: BoxShape.circle, // Makes it circular
                          ),
                          padding: EdgeInsets.all(
                              4), // Add padding to size the background
                          child: Icon(
                              _currentPage == 1
                                  ? Icons.shopping_cart
                                  : Icons.shopping_cart_outlined,
                              color: _currentPage == 1
                                  ? Colors.white
                                  : Colors.black), // Icon color
                        ),
                      ),
                      GButton(
                        icon: Icons.notifications_none,
                        text: 'Notifications',
                        leading: Container(
                          // Wrap the icon in a background
                          decoration: BoxDecoration(
                            color: _currentPage == 2
                                ? Colors.black
                                : Colors
                                    .transparent, // Background color for active icon
                            shape: BoxShape.circle, // Makes it circular
                          ),
                          padding: EdgeInsets.all(
                              4), // Add padding to size the background
                          child: Icon(
                              _currentPage == 2
                                  ? Icons.notifications
                                  : Icons.notifications_none_outlined,
                              color: _currentPage == 2
                                  ? Colors.white
                                  : Colors.black), // Icon color
                        ),
                      ),
                      GButton(
                        icon: Icons.person_outline,
                        text: 'Account',
                        leading: Container(
                          decoration: BoxDecoration(
                            color: _currentPage == 3
                                ? Colors.black
                                : Colors.transparent,
                            shape: BoxShape.circle,
                          ),
                          padding: EdgeInsets.all(4),
                          child: Icon(
                              _currentPage == 3
                                  ? Icons.person
                                  : Icons.person_outline,
                              color: _currentPage == 3
                                  ? Colors.white
                                  : Colors.black),
                        ),
                      ),
                    ]),
              )),
        ),
      ),
    );
  }

  Widget getCurrentView() {
    if (_currentPage == 0) {
      return const HomeView();
    } else if (_currentPage == 1) {
      return CartView();
    } else if (_currentPage == 2) {
      return NotificationView();
    } else {
      return AccountView();
    }
  }
}
