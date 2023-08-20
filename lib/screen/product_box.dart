import 'package:flutter/material.dart';

class ProductDetailBox extends StatefulWidget {
  const ProductDetailBox(
      {required this.header,
      required this.consigneeName,
      required this.p1,
      required this.p2,
      super.key});

  final String header;
  final String consigneeName;
  final String p1;
  final String p2;

  @override
  State<ProductDetailBox> createState() => _ProductDetailBoxState();
}

class _ProductDetailBoxState extends State<ProductDetailBox> {
  bool isTap2 = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: true,
      shadowColor: Colors.black,
      elevation: 10,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.black),
        borderRadius: BorderRadius.circular(10),
      ),
      surfaceTintColor: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              widget.header,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Table(
            border: TableBorder.all(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
            ),
            children: [
              TableRow(children: [
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 8, left: 8, right: 30, bottom: 8),
                    child: Text(
                      widget.consigneeName,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    widget.p1,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isTap2 = !isTap2;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      isTap2 ? "3.0" : widget.p2,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: isTap2 ? Colors.green : Colors.red),
                    ),
                  ),
                ),
              ])
            ],
          )
        ],
      ),
    );
  }
}
