import 'package:flutter/material.dart';

class ItemPopular extends StatelessWidget {
  final String title, image;
  const ItemPopular({Key? key, required this.title, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/$image'),
          fit: BoxFit.cover
        ),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Container(
        alignment: Alignment.bottomLeft,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black.withOpacity(.5), Colors.black.withOpacity(.1)],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            stops: const [.2, .8]
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(title, style: Theme.of(context).textTheme.titleLarge?.copyWith(
          color: Colors.white,
          letterSpacing: 1
        ),),
      ),
    );
  }
}
