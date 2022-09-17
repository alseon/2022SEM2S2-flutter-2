import 'package:flutter/material.dart';
import 'package:noticias/pages/home.page.dart';

class results extends StatelessWidget {
  results({super.key, required this.imc,required this.estado,required this.color,required this.recomendacion});
  double imc ;
  String estado;
  String recomendacion;
  var color;
  //if(imc < 18.5){
    //tipo = tipos[0];
  //};
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Resultados IMC"),
      ),
      body: 
      Column(
          children: [
            Expanded(child:Container(
                color: Colors.black,
                child:Column(
                  children: [
                       Expanded(child:
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            width: 500,
                            color: Color.fromARGB(255, 37, 35, 35),
                            child:
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Container(child: Text(estado,style: TextStyle(fontSize: 20,color: color),)),
                              Container(child: Text(imc.toStringAsFixed(2),style: TextStyle(fontSize: 80,color: Colors.white),)),
                              Container(
                                child: Text("Tiene un peso corporal "+estado+", " +recomendacion
                                ,style: TextStyle(fontSize: 15,color: Colors.white),),
                              ),
                            ]
                            )
                          ),
                        )),
                        GestureDetector(
                            onTap: () {
                              print(imc);
                              Navigator.push(context, MaterialPageRoute(builder: ((context) => HomePage() )));
                            },     
                            child: Container(
                              height: 100,
                              color: Color.fromARGB(255, 187, 29, 76),
                              child: Row(
                                mainAxisAlignment:MainAxisAlignment.center,
                                children:[
                                  Text("Volver", style: 
                                    TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                      selectionColor: Colors.white,),
                                ]  
                            ),
                        ),
                        ),
                  ],
                )),
              ),

           
            
          ],
      ));
          
  }
}