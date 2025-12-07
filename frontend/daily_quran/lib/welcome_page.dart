import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// Widgets imports
import 'package:daily_quran/widgets/feature_box.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

  final PageController _controller = PageController(viewportFraction: 0.6);

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
      });
    });
  }

 @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Welcome to Daily Quran",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Center(
            child:SizedBox(
              height: 150,
              child: PageView(
                controller: _controller, 
                children: [
                  FeatureBox(icon: Icons.add_circle, title: "Tasbih", onTap: () {
                    context.go('/tasbihPage');
                  }),

                  FeatureBox(icon: Icons.menu_book, title: "Quran", onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Quran Coming Soon"), duration: Duration(seconds: 1)));
                  }),

                  FeatureBox(icon: Icons.star, title: "Asmaul Husna", onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Asmaul Husna Coming Soon"), duration: Duration(seconds: 1)));
                  }),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}