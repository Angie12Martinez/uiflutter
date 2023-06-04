import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          Fondo(),
          Contenido(),
        ],
      ),
    );
  }
}

class Fondo extends StatelessWidget {
  const Fondo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 2, 27, 65),
          Color.fromARGB(255, 2, 31, 73),
        ],
        begin: Alignment.centerRight,
        end: Alignment.centerLeft
        )
      ),
    );
  }
}

class Contenido extends StatefulWidget {
  const Contenido({Key? key}) : super(key: key);

  @override
  State<Contenido> createState() => _ContenidoState();
}

class _ContenidoState extends State<Contenido> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Flexible(
                flex:1,
                child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                 // shape: BoxShape.circle,
                  color: const Color.fromARGB(42, 110, 171, 224),
                ),
              ),
              ),
             Flexible(
              flex: 1,
              child:  Image.asset(
                'lib/src/img/cap.png',
                width: 235,
                height: 200,
              ),)
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Flexible(
                flex: 1,
                child: Text(
                'Welcome to TDG!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ), 
              )
            ],
          ),
          const SizedBox(
            height: 15.0,
            width: 5,
          ),
          const Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20), 
              child: 
              Flexible(
                flex: 1,
                child: Text(
                'A one-stop portal for you to learn the latest technologies from SCRATCH',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ), 
              )
            ),
          ),

          
          const Boton(),
        ],
      ),
    );
  }
}

class Boton extends StatefulWidget {
  const Boton({Key? key}) : super(key: key);

  @override
  State<Boton> createState() => _BotonState();
}

class _BotonState extends State<Boton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: 330,
          height: 50,
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                const Color.fromARGB(255, 38, 188, 187),
              ),
            ),
            child: 
            const Flexible(
              flex: 1,
              child: Text(
              'Get Started >',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            ),
          ),
        ),
      ],
    );
  }
}