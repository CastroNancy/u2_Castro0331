import 'package:flutter/material.dart';
import 'package:castro_0331/pantallas0331/panel0331/widgets0331/item_empleado.dart';

// ignore: camel_case_types
class panel_Pantalla0331 extends StatelessWidget {
  const panel_Pantalla0331({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff970000),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu, color: Colors.white),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://raw.githubusercontent.com/CastroNancy/Img_IOS/main/ox1.png"),
            ),
          )
        ],
        title: const Text(
          'Oxxo Castro 0371',
          style: TextStyle(color: Color(0xffffffff)),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(1, 4),
                    color:
                        Theme.of(context).colorScheme.primary.withOpacity(.5),
                    spreadRadius: 5,
                    blurRadius: 5,
                  )
                ]),
            child: const TextField(
              decoration: InputDecoration(
                  hintText: "Que deceas buscar?",
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: 'DancingScript',
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                  ),
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search, color: Color(0xffff0000))),
            ),
          ),
          Container(
            height: 200,
            margin: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://raw.githubusercontent.com/CastroNancy/Img_IOS/main/FlutterFlowAct12/ArticulosOxxo.png"))),
          ),
          ListTile(
            title: const Text("Top Empleados"),
            titleTextStyle: Theme.of(context).textTheme.titleLarge,
            trailing: const Icon(Icons.filter_list_outlined),
          ),
          Expanded(
              child: GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 15,
            children: [for (int i = 1; i <= 10; i++) const Itemempleados()],
          ))
        ],
      ),
    );
  }
}
