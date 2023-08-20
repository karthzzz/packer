import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:packer/data/color.dart';
import 'package:packer/screen/list_box_international.dart';
import 'package:packer/screen/list_box_local.dart';

class PackerMainScreen extends StatefulWidget {
  const PackerMainScreen({super.key});

  @override
  State<PackerMainScreen> createState() => _PackerMainScreenState();
}

class _PackerMainScreenState extends State<PackerMainScreen> {
  final _scanController = TextEditingController();

  @override
  void dispose() {
    _scanController.dispose();
    super.dispose();
  }

  void showSnack(String message) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        elevation: 2,
        duration: Duration(seconds: 2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        backgroundColor: packerColor,
        content: Text(
          message,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        title: Text(
          "Orders List",
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        surfaceTintColor: Theme.of(context).colorScheme.onPrimary,
        actions: [
          Card(
            borderOnForeground: true,
            shadowColor: Colors.black,
            elevation: 10,
            shape: RoundedRectangleBorder(
              side: const BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(10),
            ),
            surfaceTintColor: Colors.white,
            child: TextButton(
              onPressed: () {
                showSnack("signout");
              },
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(10),
                animationDuration: const Duration(milliseconds: 500),
              ),
              child: Image.asset('assets/icons/signout.jpg'),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(6),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                  color: Color.fromARGB(255, 51, 195, 195),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "ORDERS TO PACK",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "2",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineLarge!
                                    .copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                          const Spacer(),
                          Image.asset("assets/icons/cart-removebg-preview.png")
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(6),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                  color: Color.fromARGB(255, 51, 195, 195),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "INTERNATIONAL",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(
                                      color: Colors.white,
                                      fontWeight:FontWeight.bold
                                    ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "1",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineLarge!
                                    .copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                          const Spacer(),
                          Image.asset(
                            "assets/icons/flight2-removebg-preview.png",
                            width: 80,
                            height: 80,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                borderOnForeground: true,
                shadowColor: Colors.black,
                elevation: 10,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                surfaceTintColor: Colors.white,
                child: TextField(
                  controller: _scanController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    label: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/icons/bi_upc-scan.jpg"),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          "SCAN INVOICE HERE",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black.withOpacity(0.50)),
                        )
                      ],
                    ),
                    border: UnderlineInputBorder(
                      borderSide: const BorderSide(
                        style: BorderStyle.solid,
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'List',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const ListBoxInternational(
                  header: "#OB598745928347509",
                  customerAccount: "Demo Account1",
                  consigneeName: "Gs Store",
                  shipTo: "Dubai",
                  dataOrdered: "2023-07-23"),
              const ListBox(
                  header: "#OB598745928347509",
                  customerAccount: "Demo Account1",
                  consigneeName: "Ss Store",
                  shipTo: "Iraq",
                  dataOrdered: "2023-10-20"),
              const ListBox(
                  header: "#OB598745928347509",
                  customerAccount: "Demo Account1",
                  consigneeName: "Rs Store",
                  shipTo: "IR",
                  dataOrdered: "2023-7-21"),
            ],
          ),
        ),
      ),
    );
  }
}
