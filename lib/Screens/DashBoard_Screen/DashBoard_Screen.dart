// import 'package:flutter/material.dart';
// import 'package:task_app/Utils/Colors/Colors_Name.dart';

// class DashBoardscreen extends StatefulWidget {
//   const DashBoardscreen({super.key});

//   @override
//   State<DashBoardscreen> createState() => _DashBoardscreenState();
// }

// class _DashBoardscreenState extends State<DashBoardscreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Text(
//           'Dashboard',
//           style: TextStyle(color: textColor),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int counter = 0; // Counter variable
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 36, 53, 85),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 141, 142, 147),
        title: const Text(
          'Quit Mate',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                print('refresh');
              },
              icon: const Icon(Icons.refresh))
        ],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15),
            Center(
              child: Container(
                height: 70,
                width: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.yellow[400],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    SizedBox(width: 30),
                    Icon(Icons.chat),
                    SizedBox(width: 20),
                    Text(
                      "How are you today?",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // -------------------------------------------------------------------------------------

            // -------------------------------------------------------------------------------------
            const SizedBox(height: 30),
            Center(
              child: Container(
                height: 230,
                width: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: const Color.fromARGB(255, 170, 250, 202),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Daily Check-in",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Icon(
                            Icons.card_giftcard_outlined,
                            color: Colors.yellow,
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "This Week",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                        ),
                      ),
                      const SizedBox(height: 100),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("Sun",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 17)),
                          Text("Mon",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 17)),
                          Text("Tue",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 17)),
                          Text("Wed",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 17)),
                          Text("Thurs",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 17)),
                          Text("Fri",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 17)),
                          Text("Sat",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 17)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "My Progress",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  Icon(
                    Icons.share_rounded,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Center(
              child: Container(
                height: 150,
                width: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: const Color.fromARGB(255, 170, 250, 202),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          SizedBox(width: 15),
                          Icon(Icons.timelapse_rounded, color: Colors.yellow),
                          SizedBox(width: 15),
                          Text(
                            "Kwitter for",
                            style: TextStyle(color: Colors.black, fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Column(
                          children: [
                            Text(
                              "48",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                            Text(
                              "hours",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 17),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "04",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                            Text(
                              "minutes",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 17),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "32",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                            Text(
                              "seconds",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 17),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 150,
                  width: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: const Color.fromARGB(255, 170, 250, 202),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.attach_money_outlined,
                              color: Colors.orange,
                            ),
                            Text(
                              "Money",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 17),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "401",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                Container(
                  height: 150,
                  width: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: const Color.fromARGB(255, 170, 250, 202),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.attach_money_outlined,
                              color: Colors.orange,
                            ),
                            Text(
                              "Packs",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 17),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "4",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Color(0xFF274472),
        shape: const CircularNotchedRectangle(),
        notchMargin: 6.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(icon: Icons.person, label: 'Profile'),
            _buildNavItem(icon: Icons.book, label: 'Diary'),
            _buildNavItem(icon: Icons.add, label: 'Add'),
            _buildNavItem(icon: Icons.bar_chart, label: 'Statistics'),
            _buildNavItem(icon: Icons.explore, label: 'Explore'),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem({required IconData icon, required String label}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 28, color: Colors.white),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(fontSize: 12, color: Colors.white),
        ),
      ],
    );
  }
}
