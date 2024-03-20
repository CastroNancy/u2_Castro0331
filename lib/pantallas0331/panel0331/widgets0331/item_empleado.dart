import 'package:flutter/material.dart';

class Itemempleados extends StatefulWidget {
  const Itemempleados({Key? key}) : super(key: key);

  @override
  State<Itemempleados> createState() => _ItemempleadosState();
}

class _ItemempleadosState extends State<Itemempleados> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xffececec),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 5),
              color: Theme.of(context).colorScheme.primary.withOpacity(.5),
              spreadRadius: 5,
              blurRadius: 5,
            )
          ]),
      child: Column(
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
                "https://raw.githubusercontent.com/CastroNancy/Img_IOS/main/persona1.png"),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Nuestros Empleados",
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
              children: List.generate(
                  5,
                  (index) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 18,
                      ))),
        ],
      ),
    );
  }
}
