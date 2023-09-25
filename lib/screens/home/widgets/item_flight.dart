import 'package:flutter/material.dart';

class ItemFlight extends StatelessWidget {
  final String from, to;
  const ItemFlight({Key? key, required this.from, required this.to}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 5),
            color: Theme.of(context).colorScheme.primary.withOpacity(.2),
            blurRadius: 5,
            spreadRadius: 5
          )
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('24 Sep, 10:30'),
              const SizedBox(height: 5),
              Text(from.substring(0, 3).toUpperCase(), style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                letterSpacing: 2
              ),),
              const SizedBox(height: 5),
              Text(from),
            ],
          ),
          const Icon(Icons.flight_takeoff),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('12:00'),
              const SizedBox(height: 5),
              Text(to.substring(0, 3).toUpperCase(), style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                letterSpacing: 2
              )),
              const SizedBox(height: 5),
              Text(to),
            ],
          ),
        ],
      ),
    );
  }
}
