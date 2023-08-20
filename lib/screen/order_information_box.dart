import 'package:flutter/material.dart';

class OrderInformationBox extends StatelessWidget {
  final String header;
  final String customerClient;
  final String invoiceNo;
  final String customerName;
  final String country;
  final String city;
  final String shippingMethod;
  final String notes;

  const OrderInformationBox({super.key, required this.header, required this.customerClient, required this.invoiceNo, required this.customerName, required this.country, required this.city, required this.shippingMethod, required this.notes});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                header,
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        const Divider(color: Colors.black, thickness: 0.5),
        Table(
          border: TableBorder(
              horizontalInside: BorderSide(color: Colors.black.withOpacity(0.5))),
          children: [
             
            TableRow(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Text("Customer (Cilent)"),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  customerClient,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
            ]),
            TableRow(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Text('Invoice No:'),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  invoiceNo,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
            ]),
            TableRow(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Text('Customer Name'),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  customerName,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
            ]),
            TableRow(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Text("Country"),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  country,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
            ]),
            TableRow(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Text("City"),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  city,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
            ]),
            TableRow(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Text("Shipping Method"),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  shippingMethod,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
            ]),
            TableRow(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Text("Notes"),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  notes,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
            ]),
          ],
        ),
        const Divider(color: Colors.black, thickness: 0.5),
      ],
    );
  }
}
