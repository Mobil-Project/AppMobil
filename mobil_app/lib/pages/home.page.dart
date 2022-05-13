import 'package:flutter/material.dart';
import '../widgets/mydrawer.widget.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  get icon => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        centerTitle: true,
        title:const Text('Home Page',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,letterSpacing: 1.2 ),

          ),
      ),

      drawer:MyDrawer(),
      body: Padding(
        padding:EdgeInsets.only(left: 15,right:15,top:15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
              children: [Container(child:GridView.count(crossAxisCount: 2,shrinkWrap: true,childAspectRatio: 2.9 / 1,
              crossAxisSpacing: 10,mainAxisSpacing:14,
                children:[
                  //1er grid
                  gridviewItem(
                      Color.fromRGBO(0, 136, 255, 1,
                      ),
                      Icons.alarm_add_outlined ,"Niveau1"
                    ),

                  //d2eme grid
                  gridviewItem(
                      Color.fromRGBO(132, 92, 238, 1,
                      ),
                      Icons.alarm_add_outlined ,"Niveau2"
                  ),
                  //3em grid
                  gridviewItem(
                      Color.fromRGBO(255, 72, 88, 1,
                      ),
                      Icons.alarm_add_outlined ,"Niveau3"
                  ),
                  //4eme grid
                  gridviewItem(
                      Color.fromRGBO(255, 186, 0, 1,
                      ),
                      Icons.alarm_add_outlined ,"Niveau4"
                  ),
                  ],
              ),
              ),
                //ajouter un container
                SizedBox(height: 35,),
                Container(
                  alignment: Alignment.topLeft,
                  child:Text("Bienvenue au Petit Bac " ,
                  style:TextStyle(

                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                  ) ,
                ),
                //ajouter un sizebox
                SizedBox(height: 20,),
                //ajoutr un autre widget
                Padding(padding: EdgeInsets.only(bottom:20,
                ),
                  child:Container(decoration: BoxDecoration(
                    color:Theme.of(context).primaryColorDark,
                    borderRadius: BorderRadius.circular(16),
                  ),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.width,
                              child: ClipRRect(
                                borderRadius:BorderRadius.circular(16,),

                              ),
                            ),
                            //ajouter un text sur l'image
                            Container(child: Padding(padding: EdgeInsets.only(left:10,
                            top:28,),
                              child: Text("Amusez-vous bien  et sans plus tarder commencez le jeu",style:TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontWeight: FontWeight.w700
                              ),)
                              ,))
                          ],
                        ),
                        SizedBox(height: 25,),
                      ],
                    ),
                  ) ,
                ),
                


              ],
          ),
        ),
      )



    );
  }
  Widget gridviewItem(color,icon,text){
    return Container
      (decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(36),
    ),
    child:Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,color:Colors.white,
          size: 30,
        ),
        SizedBox(width:4,),
        Text(text,style:TextStyle(color:Colors.white,fontSize: 18,fontWeight: FontWeight.w500,),),
      ],
    ),);

  }
}