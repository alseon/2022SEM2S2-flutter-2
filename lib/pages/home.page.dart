import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:noticias/pages/results.page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double peso = 60.0;
  double estatura = 150;
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
                        Icon(Icons.man, size: 150,color: Colors.white,),
                        Text("MAN",style: TextStyle(color: Colors.white,),)
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
                        Icon(Icons.woman, size: 150,color: Colors.white,),
                        Text("WOMAN",style: TextStyle(color: Colors.white,))
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
                          estatura.toStringAsFixed(2) + " cm",
                           style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold)
                          ),
                        Slider(
                          activeColor: Colors.white,  
                          inactiveColor: Color.fromARGB(255, 138, 136, 136),
                          thumbColor: Color.fromARGB(255, 160, 35, 35),
                          min: 50,  
                          max: 250,  
                          value: estatura,  
                          onChanged: (double value) {  
                            setState(() {  
                              estatura = value;  
                            });  
                          },  
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
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold)
                          ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             IconButton(
                              onPressed: (){
                                setState(() {
                                  if(peso >= 50){
                                    peso+=1; 
                                  }
                                });
                              },
                              icon: Icon(Icons.add_circle), iconSize: 80,color: Colors.white,),
                              IconButton(
                              onPressed: (){
                                setState(() {
                                  if(peso <= 500 && peso > 50){
                                    peso-=1; 
                                 }
                                });
                              },
                              icon: Icon(Icons.remove_circle), iconSize: 80,color: Colors.white,),
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
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold)
                            ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             IconButton(
                              onPressed: (){
                                setState(() {
                                if(edad < 120){
                                  edad+=1; 
                                }
                                });
                              },
                              icon: Icon(Icons.add_circle), iconSize: 80,color: Colors.white,),
                              IconButton(
                              onPressed: (){
                                setState(() {
                                 if(edad > 10){
                                  edad-=1; 
                                }
                                });
                              },
                              icon: Icon(Icons.remove_circle), iconSize: 80,color: Colors.white,),
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
            var imc = (peso/(estatura*estatura))*10000;
            print(imc);
            var tipo;
            var color;
            var recomendacion;
            var tipos=["bajo","normal","sobrepeso","obesidad1","obesidad2","obesidad3","obesidad4"];
            var recomendaciones = ["Esta muy delgado","Buen trabajo","Debe adelgazar", "Esta en riesgo "];
            if (imc < 18.5) {
              tipo = tipos[0];
              color = Colors.orange;
              recomendacion = recomendaciones[0];
            }
            if (imc > 18.5 && imc < 24.9) {
              tipo = tipos[1];
              color = Colors.green;
              recomendacion = recomendaciones[1];
            }
            if (imc > 24.9 && imc < 29.9) {
              tipo = tipos[2];
              color = Colors.deepOrange;
              recomendacion = recomendaciones[2];
            }
             if (imc > 29.9 && imc < 34.9) {
              tipo = tipos[3];
              color = Colors.red;
              recomendacion = recomendaciones[3];
            }
            if (imc > 34.9 && imc < 39.9) {
              tipo = tipos[4];
              color = Colors.redAccent;
              recomendacion = recomendaciones[3];
            }
            if (imc > 39.9 && imc < 49.9) {
              tipo = tipos[5];
              color = Colors.redAccent;
              recomendacion = recomendaciones[3];
            }
            if (imc > 50 ) {
              tipo = tipos[6];
              color = Colors.redAccent;
              recomendacion = recomendaciones[3];
            }
            Navigator.push(context, MaterialPageRoute(builder: ((context) => results(imc:imc,estado:tipo,color: color,recomendacion: recomendacion,) )));
          },     
          child: Container(
            height: 100,
            color: Color.fromARGB(255, 187, 29, 76),
            child: Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children:[
                Text("Calcular", style: 
                  TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
                    selectionColor: Colors.white,),
              ]  
          ),
      ),
      ),]
      ),
    );
  }
}