import 'package:flight_booking_app_ui_tutorial/screens/home/widgets/item_flight.dart';
import 'package:flight_booking_app_ui_tutorial/screens/home/widgets/item_popular.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/home.jpg')
              )
            ),
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black.withOpacity(.8), Colors.black.withOpacity(.1)],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
                ),
              ),
              child: RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    color: Colors.white,
                    height: 1.2,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 1
                  ),
                  children: [
                    const TextSpan(text: 'Where are you\n'),
                    TextSpan(
                      text: 'flying',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.inversePrimary
                      )
                    ),
                    const TextSpan(text: ' to?'),
                  ]
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: const Offset(0, -20),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 5),
                    color: Theme.of(context).colorScheme.primary.withOpacity(.2),
                    blurRadius: 5,
                    spreadRadius: 5
                  )
                ]
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your destination',
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(Icons.location_on_outlined, color: Colors.grey)
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                ListTile(
                  title: Text('Upcoming Trips', style: Theme.of(context).textTheme.titleLarge),
                  trailing: TextButton(
                    onPressed: () {},
                    child: const Text('Show all'),
                  ),
                ),
                SizedBox(
                  height: 120,
                  child: PageView(
                    children: const [
                      ItemFlight(from: 'Lahore', to: 'Karachi'),
                      ItemFlight(from: 'Islamabad', to: 'Multan'),
                      ItemFlight(from: 'Sargodha', to: 'Peshawar'),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                ListTile(
                  title: Text('Popular', style: Theme.of(context).textTheme.titleLarge),
                  trailing: TextButton(
                    onPressed: () {},
                    child: const Text('Show all'),
                  ),
                ),
                SizedBox(
                  height: 200,
                  child: ListView(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    scrollDirection: Axis.horizontal,
                    children: const [
                      ItemPopular(title: 'Islamabad', image: 'islamabad.jpg'),
                      ItemPopular(title: 'Lahore', image: 'lahore.jpg'),
                      ItemPopular(title: 'Karachi', image: 'karachi.jpg'),
                      ItemPopular(title: 'Islamabad', image: 'islamabad.jpg'),
                      ItemPopular(title: 'Lahore', image: 'lahore.jpg'),
                      ItemPopular(title: 'Karachi', image: 'karachi.jpg'),
                      ItemPopular(title: 'Islamabad', image: 'islamabad.jpg'),
                      ItemPopular(title: 'Lahore', image: 'lahore.jpg'),
                      ItemPopular(title: 'Karachi', image: 'karachi.jpg'),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
