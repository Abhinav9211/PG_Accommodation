//Created by Abhinav_21MCA3014
import 'package:abhinav_pg_accommodation_system/pg.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TravelApp(),
  ));
}

class TravelApp extends StatefulWidget {
  @override
  _TravelAppState createState() => _TravelAppState();
}

class _TravelAppState extends State<TravelApp> {
  List<String> urls = [
    "https://content3.jdmagicbox.com/comp/kurali/s4/0172px172.x172.180118132300.t9s4/catalogue/scholar-s-pg-gharuan-kurali-guest-house-yzb05jbau9.jpg",
    "https://content.jdmagicbox.com/comp/chandigarh/k8/0172px172.x172.191226220525.m4k8/catalogue/pg-for-girls-chandigarh-sector-32d-chandigarh-paying-guest-accommodations-2k04m1b3i7.jpg?clr=46202d",
    "https://lh3.googleusercontent.com/proxy/ovCSxeucYYoir_rZdSYq8FfCHPeot49lbYqlk7nXs7sXjqAfbZ2uw_1E9iivLT85LwIZiGSnXuqkdbQ_xKFhd91M7Y05G94d",
    "https://q-xx.bstatic.com/xdata/images/hotel/max500/216968639.jpg?k=a65c7ca7141416ffec244cbc1175bf3bae188d1b4919d5fb294fab5ec8ee2fd2&o=",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREsHDXPmZqJr8w2auIsl-U93n6QtAKE0V_0G5MQ37Heb8kWtYTc-HtaK9AjKSoDPodOJULx93YcNo&usqp=CAU&ec=48600113",
    "https://img.staticmb.com/mbphoto/pg/grd2/cropped_images/2022/Jun/08/Photo_h400_w540/GR2-296113-1391495_400_540.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAUdtGmzzfvDLQN0Z0FCsdwbE2rut06ehhq9XUDmw-6SE9ogDkYQJPRtoE5RGFPqmkxgdfBLqx3XQ&usqp=CAU&ec=48600113",
    "https://scontent.fpat1-1.fna.fbcdn.net/v/t39.30808-6/328343367_568394898668608_4475319798677916601_n.jpg?stp=dst-jpg_p843x403&_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=1S6OWwzONoIAX-62GHw&_nc_ht=scontent.fpat1-1.fna&oh=00_AfDocTYHrRgNlKQNXZxZbF4oLSUmiPeI_UIZ9uzM9Lga8g&oe=64343608",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F7FF),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFFF6F7FF),
        title: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome to Abhinav's PG Accommodation System ",
              style: TextStyle(
                color: Color.fromARGB(232, 212, 18, 18),
                fontSize: 26.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "\nPick your PG for stay",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Material(
              elevation: 10.0,
              borderRadius: BorderRadius.circular(30.0),
              shadowColor: Color(0x55434343),
              child: TextField(
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  hintText: "Search for PG, Hostel...",
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black54,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 30.0),
            DefaultTabController(
              length: 3,
              child: Expanded(
                child: Column(
                  children: [
                    TabBar(
                      indicatorColor: Color(0xFFFE8C68),
                      unselectedLabelColor: Color(0xFF555555),
                      labelColor: Color(0xFFFE8C68),
                      labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
                      tabs: [
                        Tab(
                          text: "Trending",
                        ),
                        Tab(
                          text: "Hostels",
                        ),
                        Tab(
                          text: "Favorites",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      height: 300.0,
                      child: TabBarView(
                        children: [
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                pg(urls[0], "Sonali's PG", "Patna", 5),
                                pg(urls[4], "Elite homes| Boys PG",
                                    "Kharar Mohali", 3),
                                pg(urls[1], "Girls PG", "Chandigarh", 4),
                              ],
                            ),
                          ),
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                pg(urls[5], "Girls Hostel",
                                    "Chandigarh University", 4),
                                pg(urls[6], "Boys Hostel",
                                    "Chandigarh University", 5),
                              ],
                            ),
                          ),
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                pg(urls[0], "Sonali's PG", "Patna", 5),
                                pg(urls[6], "Boys Hostel",
                                    "Chandigarh University", 5),
                                pg(urls[7], "Sonali_21MCA3023", "21MCA/4A", 5),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Color(0xFFB7B7B7),
        selectedItemColor: Color(0xFFFE8C68),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: ("BookMark"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: ("Destination"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: ("Notification"),
          ),
        ],
      ),
    );
  }
}
