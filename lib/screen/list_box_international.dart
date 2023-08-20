import 'package:flutter/material.dart';
import 'package:packer/data/color.dart';
import 'package:packer/widget/order_information.dart';

class ListBoxInternational extends StatelessWidget {
  final String header;
  final String customerAccount;
  final String consigneeName;
  final String shipTo;
  final String dataOrdered;

  const ListBoxInternational(
      {super.key,
      required this.header,
      required this.customerAccount,
      required this.consigneeName,
      required this.shipTo,
      required this.dataOrdered});

  @override
  Widget build(BuildContext context) {
    return Card(
        borderOnForeground: true,
        shadowColor: Colors.black,
        elevation: 5,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(10),
        ),
        surfaceTintColor: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (ctx) => OrderInformation()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 3),
                        child: Text(
                          header,
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                  color: packerColor,
                                  fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Image.asset("assets/icons/redFilght.jpg"),
                      ),
                    ],
                  )),
            ),
            const Divider(color: Colors.black, thickness: 0.5),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: Table(
                children: [
                  // ignore: prefer_const_constructors
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 5),
                      child: Text(
                        'Date Ordered',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(color: Color.fromARGB(104, 0, 0, 0)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, right: 5),
                      child: Text(
                        "Customer",
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            color: const Color.fromARGB(104, 0, 0, 0)),
                      ),
                    )
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text(
                        dataOrdered,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Text(
                        customerAccount,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 5),
                      child: Text(
                        'Consignee Name',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(color: Color.fromARGB(104, 0, 0, 0)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, right: 5),
                      child: Text(
                        "Ship To",
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            color: const Color.fromARGB(104, 0, 0, 0)),
                      ),
                    )
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text(
                        consigneeName,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Text(
                        shipTo,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                  ])
                ],
              ),
            ),
          ],
        ));
  }
}
