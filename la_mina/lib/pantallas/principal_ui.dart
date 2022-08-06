import 'package:flutter/material.dart';
import 'package:la_mina/estilos.dart';

class PrincipalUI extends StatefulWidget {
  const PrincipalUI({Key? key}) : super(key: key);

  static const double cuadros = 150;

  @override
  State<PrincipalUI> createState() => _PrincipalUIState();
}

class _PrincipalUIState extends State<PrincipalUI> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  bool modoClaro = true;

  ModoInterface tema() {
    return modoClaro ? ModoClaro() : ModoOscuro();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: tema().colorSecundario,
          title: Text(
            'LA MINA',
            style: TextStyle(
              color: tema().colorPrimario,
              fontWeight: FontWeight.bold,
              //fontFamily: 'Simoneta',
            ),
          ),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                scaffoldKey.currentState!.openDrawer();
              },
              icon: Icon(
                Icons.menu,
                color: tema().colorPrimario,
              )),
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    modoClaro = !modoClaro;
                  });
                },
                icon: Icon(
                  modoClaro ? Icons.mode_night : Icons.sunny,
                  color: tema().colorPrimario,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.person,
                  color: tema().colorPrimario,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.exit_to_app,
                  color: tema().colorPrimario,
                ))
          ],
        ),
        drawer: Drawer(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 150,
                        child: Image.asset(
                            'assets/Imagenes/logo_transparente.png'),
                      ),
                      Row(
                        children: [
                          Icon(Icons.person, color: tema().colorPrimario),
                          const SizedBox(width: 10),
                          const Text('Mi perfil'),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.factory, color: tema().colorPrimario),
                          const SizedBox(width: 10),
                          const Text('Mis empresas'),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(Icons.settings, color: tema().colorPrimario),
                          const SizedBox(width: 10),
                          const Text('Mis preferencias'),
                        ],
                      ),
                      Row(
                        children: const [
                          Icon(Icons.warning, color: Colors.yellow),
                          SizedBox(width: 10),
                          Text('Quejas y Sugerencias'),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 40,
                        child: Image.asset('assets/Imagenes/facebook.png'),
                      ),
                      SizedBox(
                        height: 40,
                        child: Image.asset('assets/Imagenes/telegram.png'),
                      ),
                      SizedBox(
                        height: 40,
                        child: Image.asset('assets/Imagenes/twitter.png'),
                      ),
                      const SizedBox(width: 10),
                    ],
                  ),
                ]),
          ),
        ),
        body: Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: modoClaro
                    ? const AssetImage('assets/Imagenes/1.png')
                    : const AssetImage('assets/Imagenes/2.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 70, bottom: 20),
                    child: Text(
                      'COMIENZA A MINAR',
                      style: TextStyle(color: tema().colorPrimario),
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: PrincipalUI.cuadros,
                            width: PrincipalUI.cuadros,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/Imagenes/A.jpg'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Container(
                            height: PrincipalUI.cuadros,
                            width: PrincipalUI.cuadros,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/Imagenes/B.jpg'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 40),
                      /* Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: cuadros,
                            width: cuadros,
                            color: Colors.white,
                          ),
                          Container(
                            height: cuadros,
                            width: cuadros,
                            color: Colors.white,
                          ),
                        ],
                      ),*/
                    ],
                  ),
                  const SizedBox(height: 60),
                  /* const Divider(
                    height: 10,
                    color: Colors.white,
                  ),*/
                  /* Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 80,
                        child: Image.asset(
                            'assets/Imagenes/logo_transparente.png'),
                      ),
                      SizedBox(),
                      SizedBox(
                        height: 40,
                        child: Image.asset('assets/Imagenes/facebook.png'),
                      ),
                      SizedBox(),
                      SizedBox(
                        height: 40,
                        child: Image.asset('assets/Imagenes/telegram.png'),
                      ),
                      SizedBox(),
                      SizedBox(
                        height: 40,
                        child: Image.asset('assets/Imagenes/twitter.png'),
                      ),
                      SizedBox(),
                      SizedBox(),
                      SizedBox(),
                    ],
                  )*/
                ],
              ),
            )));
  }
}
