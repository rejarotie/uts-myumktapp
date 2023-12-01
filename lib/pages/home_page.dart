import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
//creating static list data

List catNames = [
  "SIP LK",
  "BERKAS",
  "SI HRD",
  "APPLE",
  "SARPRAS",
  "SURAT",
  "PAPERLESS",
];

List<Color> catColors = [
  const Color(0xffffcf2f),
  const Color(0xff6fe08d),
  const Color(0xff61cf2f),
  const Color(0xff618dfd),
  const Color(0xffff8dfd),
  const Color(0xffffe08fd),
  const Color(0xff78e667),
];

List<Icon> catIcons = [
  const Icon(Icons.rotate_90_degrees_cw_outlined, color: Colors.white, size: 30),
  const Icon(Icons.folder,color: Colors.white, size: 30),
  const Icon(Icons.settings, color: Colors.white, size: 30),
  const Icon(Icons.apple_rounded,color: Colors.white, size: 30),
  const Icon(Icons.apartment, color: Colors.white, size: 30),
  const Icon(Icons.folder_copy, color: Colors.white, size: 30),
  const Icon(Icons.book, color: Colors.white, size: 30),
];

List catName = [
  "INSENTIF",
  "SIKAD",
  "SIKEMAS",
  "SIMPEL",
];

List<Color> catColor = [
  const Color(0xff618dfd),
  const Color(0xffff8dfd),
  const Color(0xffffe08fd),
  const Color(0xff78e667),
];

List<Icon> catIcon = [
  const Icon(Icons.star, color: Colors.white, size: 30),
  const Icon(Icons.school,color: Colors.white, size: 30),
  const Icon(Icons.computer, color: Colors.white, size: 30),
  const Icon(Icons.sanitizer_rounded,color: Colors.white, size: 30),
];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
              color: Color.fromRGBO(12, 49, 142, 0.965),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Headers(),
              const SizedBox(height: 20,),
                  Identfy(),
      const SizedBox(height: 10,),
      IdentifyColors(),
              ],
            ),
      ),
      SearchWidget(),
      const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Text("Kepegawaian",
           style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            letterSpacing: 1,
            wordSpacing: 2,
           ), 
           ),
        ],
      ),
      Menus(catNames: catNames, catColors: catColors, catIcons: catIcons, catName: catName, catColor: catColor, catIcon: catIcon),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        iconSize: 30,
        selectedItemColor: const Color(0xff674aef),
        selectedFontSize: 18,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Whislist'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
      );

}
}

class Menus extends StatelessWidget {
  const Menus({
    super.key,
    required this.catNames,
    required this.catColors,
    required this.catIcons,
    required this.catName,
    required this.catColor,
    required this.catIcon,
  });

  final List catNames;
  final List<Color> catColors;
  final List<Icon> catIcons;
  final List catName;
  final List<Color> catColor;
  final List<Icon> catIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 15,right: 15, bottom: 20),
      child: Column(children: [
        GridView.builder(
          itemCount: catNames.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            childAspectRatio: 1.1,
            ), 
          itemBuilder: (context, index){
            return Column(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: catColors[index],
                    shape: BoxShape.rectangle,
                  ),
                  child: Center(
                    child: catIcons[index],
                    ),
                ),
                const SizedBox(height: 10),
                Text(
                  catNames[index],
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.7),
                  ),
                  )
              ],
            );
          },
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Akademik",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1,
                  wordSpacing: 2,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10,right: 10, bottom: 5),
            child: Column(children: [
              GridView.builder(
                itemCount: catName.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 0.2,
                   ), 
                itemBuilder: (context, index){
                  return Column(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: catColor[index],
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: catIcon[index],
                    ),
                ),
                const SizedBox(height: 20),
                Text(
                  catName[index],
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.7),
                  ),
                  )
              ],
            );
                }
              ),
            ],
            ), 
            ),
      ]
      ),
      );
  }
}

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
    margin: const EdgeInsets.only(top: 15, bottom: 20, left: 10, right: 10),
    width: MediaQuery.of(context).size.width,
    height: 50,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 239, 235, 235),
      borderRadius: BorderRadius.circular(10),       
    ),
    child: TextFormField(
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: "Serach Here....",
        hintStyle: TextStyle(
          color: Colors.black.withOpacity(0.5),
        ),
        prefixIcon: const Icon(
          Icons.search,
          size: 25,
        )
      ),
    ),
        );
  }
}

class IdentifyColors extends StatelessWidget {
  const IdentifyColors({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 3, bottom: 5, top: 3,),
      child: 
      TextFormField(
        style: 
        const TextStyle(
          fontSize: 10,
          letterSpacing: 1,
          color: Colors.white,
            ),
          ),          
        );
  }
}

class Identfy extends StatelessWidget {
  const Identfy({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 3, bottom: 35),
      child: Text(
            "Welcome, REZA ANDRIYANTI", 
      style: TextStyle(
            fontSize: 20, 
                fontWeight: FontWeight.w600,
                letterSpacing: 1,
                wordSpacing: 2,
                color: Colors.white,
             ),
          ),
        );
  }
}

class Headers extends StatelessWidget {
  const Headers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image(
          image: AssetImage('asset/logoumkt.png'),
          height: 55,
          ),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.notifications,
          size: 30, 
          color: Colors.white 
        ),
        Icon(
          Icons.person, 
          size: 30, 
          color: Colors.white 
          ),
        ],
      )
    ],
                  );
  }
}