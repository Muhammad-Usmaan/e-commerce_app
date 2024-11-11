import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "My Account",
            style:
                GoogleFonts.dmSans(fontSize: 18, fontWeight: FontWeight.w900),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: ListView(
              children: [
                Card(
                  elevation: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      contentPadding: EdgeInsets.only(left: 5),
                      leading: CircleAvatar(),
                      title: Text(
                        "H. Jane",
                        style: GoogleFonts.dmSans(
                            fontSize: 15, fontWeight: FontWeight.w700),
                      ),
                      trailing: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Edit",
                          style: GoogleFonts.dmSans(
                              color: Colors.grey,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 60,
                  child: Center(
                    child: ListTile(
                      contentPadding: EdgeInsets.only(left: 5),
                      leading: Icon(
                        Icons.history_rounded,
                        size: 30,
                      ),
                      title: Text(
                        "Orders History",
                        style: GoogleFonts.dmSans(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 1,
                  color: const Color.fromARGB(255, 236, 236, 236),
                ),
                SizedBox(
                  height: 60,
                  child: Center(
                    child: ListTile(
                      contentPadding: EdgeInsets.only(left: 5),
                      leading: Icon(
                        Icons.favorite,
                        size: 30,
                      ),
                      title: Text(
                        "Favorites",
                        style: GoogleFonts.dmSans(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 1,
                  color: const Color.fromARGB(255, 236, 236, 236),
                ),
                SizedBox(
                  height: 60,
                  child: Center(
                    child: ListTile(
                      contentPadding: EdgeInsets.only(left: 5),
                      leading: Icon(
                        Icons.payment,
                        size: 30,
                      ),
                      title: Text(
                        "Payment Method",
                        style: GoogleFonts.dmSans(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 1,
                  color: const Color.fromARGB(255, 236, 236, 236),
                ),
                SizedBox(
                  height: 60,
                  child: Center(
                    child: ListTile(
                      contentPadding: EdgeInsets.only(left: 5),
                      leading: Icon(
                        Icons.notification_important,
                        size: 30,
                      ),
                      title: Text(
                        "Notifications and Preferences",
                        style: GoogleFonts.dmSans(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 1,
                  color: const Color.fromARGB(255, 236, 236, 236),
                ),
                SizedBox(
                  height: 60,
                  child: Center(
                    child: ListTile(
                      contentPadding: EdgeInsets.only(left: 5),
                      leading: Icon(
                        Icons.settings,
                        size: 30,
                      ),
                      title: Text(
                        "Settings",
                        style: GoogleFonts.dmSans(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 1,
                  color: const Color.fromARGB(255, 236, 236, 236),
                ),
                SizedBox(
                  height: 60,
                  child: Center(
                    child: ListTile(
                      contentPadding: EdgeInsets.only(left: 5),
                      leading: Icon(
                        Icons.support_agent,
                        size: 30,
                      ),
                      title: Text(
                        "Support and Feedback",
                        style: GoogleFonts.dmSans(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 1,
                  color: const Color.fromARGB(255, 236, 236, 236),
                ),
                SizedBox(
                  height: 60,
                  child: Center(
                    child: ListTile(
                      contentPadding: EdgeInsets.only(left: 5),
                      leading: Icon(
                        Icons.logout,
                        size: 30,
                      ),
                      title: Text(
                        "Logout",
                        style: GoogleFonts.dmSans(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 1,
                  color: const Color.fromARGB(255, 236, 236, 236),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
