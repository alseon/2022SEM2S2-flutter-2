import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:noticias/pages/results.page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double peso = 50.0;
  int estatura = 150;
  int edad = 12;
  bool genero = false;//0 mujer 1 hombre

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculo IMC"),
      ),
      body: 
      Column(children: [
        Expanded(child: Container(
          color: Colors.black,
          child: Row(
            children: [
              Expanded(child: 
                Padding(padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Container(
                    child:Column( 
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.man, size: 150,),
                        Text("MAN")
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color.fromARGB(255, 90, 90, 88),
                    ),
                  ),
                )
              ),
              Expanded(child:
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Container(
                    child:Column( 
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.woman, size: 150,),
                        Text("WOMAN")
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color.fromARGB(255, 90, 90, 88),
                    ),
                  ),
                )
              ),
          ]),
        ), 
        ),
         Expanded(child: Container(
          color: Colors.black,
          child: 
            Container(
               child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Estatura"),
                        Text(
                          estatura.toString(),
                           style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold)
                          ),
                        
                      ]),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Color.fromARGB(255, 90, 90, 88),
                ),
              ),
        )
        ),
         Expanded(child: Container(
          color: Colors.black,
          child: Row(
            children: [
              Expanded(child: 
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Container(
                    
                     child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Peso"),
                        Text(
                          peso.toString(),
                           style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold)
                          ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             IconButton(
                              onPressed: (){
                                setState(() {
                                 peso+=1; 
                                });
                                
                                print(peso);
                              },
                              icon: Icon(Icons.add_circle), iconSize: 80,),
                              IconButton(
                              onPressed: (){
                                setState(() {
                                 peso-=1; 
                                });
                                print(peso);
                              },
                              icon: Icon(Icons.remove_circle), iconSize: 80,),
                          ],
                        )
                      ]),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color.fromARGB(255, 90, 90, 88),
                    ),
                  ),
                )
              ),
              Expanded(child:
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Edad"),
                        Text(
                          edad.toString(),
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold)
                            ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             IconButton(
                              onPressed: (){
                                setState(() {
                                 edad+=1; 
                                });
                              },
                              icon: Icon(Icons.add_circle), iconSize: 80,),
                              IconButton(
                              onPressed: (){
                                setState(() {
                                 edad-=1; 
                                });
                              },
                              icon: Icon(Icons.remove_circle), iconSize: 80,),
                          ],
                        )
                      ]),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color.fromARGB(255, 90, 90, 88),
                    ),
                  ),
                )
              ),
          ]),
        )
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: ((context) => results() )));
          },     
          child: Container(
            height: 100,
            color: Color.fromARGB(255, 187, 29, 76),
            child: Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children:[
                Text("Calcular", style: 
                  TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
              ]  
          ),
      ),
      ),]
      ),
    );
  }
}