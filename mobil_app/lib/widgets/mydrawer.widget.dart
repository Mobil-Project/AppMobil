import 'package:flutter/material.dart';

class  MyDrawer extends StatelessWidget {
   const MyDrawer({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final List <dynamic>menus=[
      {'title':'Acceuil','icon':Icon(Icons.home,color:Theme.of(context).primaryColor),'route':'/home'},
      {'title':'Inscription','icon':Icon(Icons.account_circle_sharp ,color:Theme.of(context).primaryColor),'route':'/profil'},
      {'title':'OCR','icon':Icon(Icons.ad_units_outlined ,color:Theme.of(context).primaryColor),'route':'/ocr'},
      {'title':'le Petit Bac','icon':Icon(Icons.assistant   ,color:Theme.of(context).primaryColor),'route':'/jeu'},
      {'title':'Les Regles du jeu','icon':Icon(Icons.article_rounded,color:Theme.of(context).primaryColor),'route':'/regles'},
      {'title':'Code QR','icon':Icon(Icons.app_registration_sharp,color:Theme.of(context).primaryColor),'route':'/qr'},

    ];
    return Drawer(
      child:Column(
        children: [

          DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                   colors: [ Colors.lightGreenAccent,
                     Theme.of(context).primaryColor],

              )

            ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
              const CircleAvatar(
                radius:50,
                backgroundImage: AssetImage("images/profil.jpg"),
              ),
              IconButton(onPressed: (){}, icon: const Icon(Icons.settings),
              color:Theme.of(context).primaryColorDark,
              )
            ],

          )
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index){
                  return ListTile(
                    onTap: (){
                      Navigator.of(context).pop();
                      Navigator.pushNamed(context, menus[index]['route']);
                    },
                    leading:menus[index]['icon'],
                    title:Text("${menus[index]['title']}", style:TextStyle(color:Theme.of(context).primaryColor)),

                  );

                },

                separatorBuilder: (_,index){
                  return Divider(
                    height: 1,
                    color:Theme.of(context).primaryColor,
                  );
                },
                itemCount: menus.length
            ),
          )
        ],
      ) ,


    );
  }
}
