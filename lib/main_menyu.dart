import 'package:daryo_uz2/Detals_page.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

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
        drawer: MyDrawer(context),
        appBar: AppBar(
          title:  Text(
            "daryo".tr(),
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              onPressed: () {
              },
              icon: const Icon(Icons.search),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(48.05),
            child: Container(
              color: Colors.white,
              child:  TabBar(

                  overlayColor: const MaterialStatePropertyAll(Colors.blue),
                  unselectedLabelColor: Colors.blue,
                  labelColor: Colors.blue,

                  indicatorColor: Colors.blueAccent,
                  tabs: [
                    Tab(
                      text: "endNews".tr(),
                    ),
                    Tab(
                      text: "mainNew".tr(),
                    ),
                    Tab(
                      text: "allMoreVivews".tr(),
                    ),
                  ]),
            ),
          ),
        ),
        body: TabBarView(children: [
          ListView.builder(itemBuilder: (context, index) {
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
            ]);
          }),
          endNews(context),
          theMostViewNews(context),
        ]),
      ),
    );
  }
}

Widget MyDrawer(BuildContext context) {
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
                children: [
                   Text(
                    "daryo".tr(),
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 34,
                        color: Colors.white),
                  ),
                  const SizedBox(width: 12),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape:  const BeveledRectangleBorder(
                          borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(8),
                          ),
                        )),
                    onPressed: () {
                      context.locale=const Locale("uz","UZ");
                    },
                    child:  Text(
                      "lotin".tr(),
                      style: const TextStyle(color: Colors.blue),
                    ),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.horizontal(
                        right: Radius.circular(8),
                      ),
                    )),
                    onPressed: () {
                    context.locale=const Locale("ru","RU");
                    },
                    child:  Text(
                      "kril".tr(),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children:  [
                  Text(
                    "toshkent".tr(),
                    style: const TextStyle(color: Colors.white),
                  ),
                  const SizedBox(width: 140),
                  const Icon(
                    Icons.cloud_outlined,
                    color: Colors.white,
                  ),
                  const Text(
                    "+12.0",
                    style: TextStyle(color: Colors.white),
                  ),
                  const Text(
                    "0",
                    style: TextStyle(
                        fontSize: 7,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),

                ],
              ),
const Divider(thickness: 1,color: Colors.white,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
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
          title:  Text(
            "qolla".tr(),
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          onTap: () {},
        ),
        ListTile(
          title:  Text(
            "songgi".tr(),
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          onTap: () {},
        ),
        ListTile(
          title:  Text(
            "mahalliy".tr(),
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          onTap: () {},
        ),
        ListTile(
          title:  Text(
            "dunyo".tr(),
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          onTap: () {},
        ),
        ListTile(
          title:  Text(
            "texno".tr(),
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          onTap: () {},
        ),
        ListTile(
          title:  Text(
            "tanlahabar".tr(),
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          onTap: () {},
        ),
        ListTile(
          title:  Text(
            "madaniyat".tr(),
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          onTap: () {},
        ),
        ListTile(
          title:  Text(
            "avto".tr(),
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          onTap: () {},
        ),
        ListTile(
          title:  Text(
            "sport".tr(),
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          onTap: () {},
        ),
        ListTile(
          title:  Text(
            "Foto".tr(),
            style:const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          onTap: () {},
        ),
        ListTile(
          title:  Text(
            "lifestiyle".tr(),
            style:const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          onTap: () {},
        ),
        ListTile(
          title:  Text(
            "kolumnistlar".tr(),
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          onTap: () {},
        ),
        ListTile(
          title:  Text(
            "afisha".tr(),
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
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
                  "${moduls.cloc} | 10 dekabr 2022 | ",
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
                  child: Image.asset(
                    moduls.imgUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
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
  return ListView.builder(
    itemBuilder: (context, index) {
      return Column(
        children: [
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
        ],
      );
    },
  );
}

Widget theMostViewNews(BuildContext context) {
  return ListView.builder(
    itemBuilder: (context, index) {
      return Column(
        children: [
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
        ],
      );
    },
  );
}
