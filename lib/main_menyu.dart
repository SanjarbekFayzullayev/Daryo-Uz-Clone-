import 'package:daryo_uz2/Detals_page.dart';
import 'package:flutter/material.dart';

import 'Moduls/Modul.dart';

class MainMenyu extends StatefulWidget {
  const MainMenyu({Key? key}) : super(key: key);

  @override
  State<MainMenyu> createState() => _MainMenyuState();
}

class _MainMenyuState extends State<MainMenyu> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          title: const Text(
            "Daryo",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
          ],

          bottom:
          PreferredSize(
            preferredSize: const Size.fromHeight(48.05),
                 child: Container(
                   color: Colors.white,
                   child: const TabBar(

                       overlayColor: MaterialStatePropertyAll(Colors.blue),
                     unselectedLabelColor: Colors.blue,
                     labelColor: Colors.blue,

                     indicatorColor: Colors.blue,

                     tabs: [
                       Tab(
                         text: "So'nggi Yangliklar",
                       ),
                       Tab(
                         text: "Asosiy Yangliklar",
                       ),
                       Tab(
                         text: "Eng ko'p ko'rilganlar",
                       ),
                     ]),),
               ),
        ),
        body: TabBarView(children: [
          ListView.builder(itemBuilder: (context, index) {
           return Column(children:
            [
              MyAppMain(
                context,
                listModul[0],
              ),
              MyAppMain(
                context,
                listModul[1],
              ),
              MyAppMain(
                context,
                listModul[2],
              ),
              MyAppMain(
                context,
                listModul[3],
              ),
              MyAppMain(
                context,
                listModul[4],
              ),
              MyAppMain(
                context,
                listModul[5],
              ),
              MyAppMain(
                context,
                listModul[6],
              ),
              MyAppMain(
                context,
                listModul[7],
              ),
              MyAppMain(
                context,
                listModul[8],
              ),
              MyAppMain(
                context,
                listModul[9],
              ),
              MyAppMain(
                context,
                listModul[10],
              ),
            ]);

          }),
          endNews(context),
          theMostViewNews(context),
        ]),
      ),
    );
  }
}

Widget MyDrawer() {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: const BoxDecoration(color: Colors.blue),
          duration: Duration.zero,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Text(
                    "Daryo",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 34,
                        color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: const [
                  Text(
                    "Toshkent",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(width: 140),
                  Icon(
                    Icons.cloud_outlined,
                    color: Colors.white,
                  ),
                  Text(
                    "+12.0",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "0",
                    style: TextStyle(
                        fontSize: 7,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: const [
                Icon(Icons.monetization_on_outlined, color: Colors.white),
                Text(
                  "10769.78",
                  style: TextStyle(color: Colors.white),
                ),
                Icon(Icons.euro, color: Colors.white),
                Text(
                  "12166.62",
                  style: TextStyle(color: Colors.white),
                ),
                Icon(Icons.offline_bolt_outlined, color: Colors.white),
                Text(
                  "146.17",
                  style: TextStyle(color: Colors.white),
                ),
              ]),
            ],
          ),
        ),
        ListTile(
          tileColor: Colors.blue,
          title: const Text(
            "Qo'lanma ekranini ko'rsatish",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          onTap: () {},
        ),
        ListTile(
          title: const Text(
            "So'nggi yangiliklar",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          onTap: () {},
        ),
        ListTile(
          title: const Text(
            "Mahalliy",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          onTap: () {},
        ),
        ListTile(
          title: const Text(
            "Dunyo",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          onTap: () {},
        ),
        ListTile(
          title: const Text(
            "Texnalogiyalar",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          onTap: () {},
        ),
        ListTile(
          title: const Text(
            "Tanlangan habarlar",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          onTap: () {},
        ),
        ListTile(
          title: const Text(
            "Madaniyat",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          onTap: () {},
        ),
        ListTile(
          title: const Text(
            "Avto",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          onTap: () {},
        ),
        ListTile(
          title: const Text(
            "Sport",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          onTap: () {},
        ),
        ListTile(
          title: const Text(
            "Foto",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          onTap: () {},
        ),
        ListTile(
          title: const Text(
            "Lifestiyle",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          onTap: () {},
        ),
        ListTile(
          title: const Text(
            "Kolumnistlar",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          onTap: () {},
        ),
        ListTile(
          title: const Text(
            "Afisha",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          onTap: () {},
        ),
      ],
    ),
  );
}

Widget MyAppMain(BuildContext context, Moduls moduls) {
  return InkWell(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetalsPage(
              moduls: moduls,
            ),
          ));
    },
    child: Card(
      margin: const EdgeInsets.all(1.0),
      elevation: 72,
      child: Expanded(
        child: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  moduls.widgetTuype,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue),
                ),
                const SizedBox(
                  width: 110,
                ),
                Text(
                  moduls.cloc + " | 10 dekabr 2022 | ",
                  style: const TextStyle(color: Colors.grey),
                ),
                const Icon(Icons.visibility, color: Colors.blue),
                Text(moduls.viewNumbers)
              ],
            ),
            Row(

              children: [
                Container(
                  color: Colors.yellow,
                  height: 120,
                  width: 110,
                  child: Image.asset(moduls.imgUrl,fit: BoxFit.cover,),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 270,
                  height: 130,
                  child: Text(
                    moduls.anonsTitle,
                    style: const TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

Widget endNews(BuildContext context) {
  return ListView.builder(itemBuilder: (context, index) {
    return Column( children: [
      MyAppMain(
        context,
        listModul[10],
      ),
      MyAppMain(
        context,
        listModul[4],
      ),
      MyAppMain(
        context,
        listModul[7],
      ),
      MyAppMain(
        context,
        listModul[3],
      ),
      MyAppMain(
        context,
        listModul[2],
      ),
      MyAppMain(
        context,
        listModul[5],
      ),
      MyAppMain(
        context,
        listModul[0],
      ),
      MyAppMain(
        context,
        listModul[8],
      ),
      MyAppMain(
        context,
        listModul[6],
      ),
      MyAppMain(
        context,
        listModul[9],
      ),
      MyAppMain(
        context,
        listModul[1],
      ),
    ],);
  },

  );
}

Widget theMostViewNews(BuildContext context) {
  return ListView.builder(itemBuilder: (context, index) {
    return Column(children: [
      MyAppMain(
        context,
        listModul[0],
      ),
      MyAppMain(
        context,
        listModul[1],
      ),
      MyAppMain(
        context,
        listModul[2],
      ),
      MyAppMain(
        context,
        listModul[3],
      ),
      MyAppMain(
        context,
        listModul[4],
      ),
      MyAppMain(
        context,
        listModul[5],
      ),
      MyAppMain(
        context,
        listModul[6],
      ),
      MyAppMain(
        context,
        listModul[7],
      ),
      MyAppMain(
        context,
        listModul[8],
      ),
      MyAppMain(
        context,
        listModul[9],
      ),
      MyAppMain(
        context,
        listModul[10],
      ),
    ],);
  },

  );
}
