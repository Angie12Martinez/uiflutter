import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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

class Fondo extends StatefulWidget {
  const Fondo({Key? key}) : super(key: key);

  @override
  State<Fondo> createState() => _FondoState();
}

class _FondoState extends State<Fondo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 25, 32, 61),
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Expanded(
            child: Text(
            'Sign in to TGD and continue',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: Text(
            'Enter your email and password below to continue to The Growing Developer and let the learning begin!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.5,
            ),
            textAlign: TextAlign.center, 
          ),),
          SizedBox(
            height: 20,
          ),
          Datos(),
        ],
      ),
    );
  }
}

class Datos extends StatefulWidget {
  const Datos({Key? key}) : super(key: key);

  @override
  State<Datos> createState() => _DatosState();
}

class _DatosState extends State<Datos> {
  bool obs = true;
  bool obb = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 25, 32, 61),
      ),
      child: Column(
        children: [
          Expanded(
            child: TextFormField(
            obscureText: obb,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              filled: true,
              fillColor: Color.fromARGB(42, 110, 171, 224),
              hintText: 'Username',
              hintStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              prefixIcon: Icon(
                Icons.person_pin,
                color: Colors.white,
              ),
            ),
          ),
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: TextFormField(
            obscureText: obs,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              filled: true,
              fillColor: const Color.fromARGB(42, 110, 171, 224),
              hintText: 'Password',
              hintStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              prefixIcon: IconButton(
                icon: const Icon(
                  Icons.lock,
                  color: Colors.white,
                ),
                onPressed: () {
                  setState(
                    () {
                      obs == true ? obs = false : obs = true;
                    },
                  );
                },
              ),
            ),
          ),),
          const SizedBox(
            height: 20,
          ),
          const Botones(),
        ],
      ),
    );
  }
}

class Botones extends StatefulWidget {
  const Botones({Key? key}) : super(key: key);

  @override
  State<Botones> createState() => _BotonesState();
}

class _BotonesState extends State<Botones> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 5,
        ),
        Expanded(
          child: SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                const Color.fromARGB(255, 38, 188, 187),
              ),
            ),
            child: const Text(
              'Login',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
        ), ),
        const SizedBox(
          height: 25,
          width: double.infinity,
        ),
        Expanded(
          child: SizedBox(
          width: double.infinity,
          height: 50,
          child: OutlinedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                const Color.fromARGB(255, 35, 148, 247),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'lib/src/img/cap2.png',
                  width: 30,
                  height: 30,
                ),
                const SizedBox(width: 10),
                const Text(
                  'Sing-in using Google',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ), ),
        const SizedBox(
          height: 50,
        ),
       const Expanded(
        child:  Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20), 
            child: Text(
              'G The Growing Developer',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ), ),
      ],
    );
  }
}
