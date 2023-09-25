import 'package:flight_booking_app_ui_tutorial/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/welcome.jpg', height: double.infinity, fit: BoxFit.cover),
          Positioned(
            top: 100, left: 0, right: 0,
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  color: Colors.white,
                  letterSpacing: 5,
                  fontWeight: FontWeight.bold
                ),
                children: [
                  TextSpan(
                    text: 'Sky',
                    style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary)
                  ),
                  const TextSpan(text: 'Plane'),
                  TextSpan(
                    text: '\nFly towards your destination!',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.white70,
                      height: 2,
                      letterSpacing: 1
                    )
                  ),
                ]
              ),
            ),
          ),
          Positioned(
            bottom: 50, right: 20, left: 20,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => const HomeScreen()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.all(15)
              ),
              child: const Text('Start your journey'),
            ),
          )
        ],
      ),
    );
  }
}
