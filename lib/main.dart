import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "BMI Calculator",
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  final _height = TextEditingController();
  final _weight = TextEditingController();
  double? _bmi;

  String _message = "Please enter your weight and your height.";

  void _calculateBMI(double height, double weight) {
    setState(() {
      _bmi = weight / (height * height);
      _message = _getMessage(_bmi);
    });
  }

  String _getMessage(double? bmi) {
    if (bmi == null) {
      return "Please enter your weight and your height.";
    } else if (bmi < 18.5) {
      return "Your BMI is: $bmi (Underweight) 😔";
    } else if (bmi >= 18.5 && bmi < 24.9) {
      return "Your BMI is: $bmi (Normal) 🙂";
    } else if (bmi >= 24.9 && bmi < 29.9) {
      return "Your BMI is: $bmi (Overweight) 😕";
    } else {
      return "Your BMI is: $bmi (Obese) 😞";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF363B4E),
      appBar: AppBar(
        backgroundColor: const Color(0xFF363B4E),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.favorite, color: Colors.pink),
            Text('BMI Calculator', style: TextStyle(color: Colors.white)),
            Icon(Icons.favorite, color: Colors.pink),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 20),
              TextField(
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                decoration: const InputDecoration(
                  labelText: "Height (m):",
                  prefixIcon: Icon(Icons.height, color: Colors.pink),
                ),
                controller: _height,
              ),
              const SizedBox(height: 20),
              TextField(
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                decoration: const InputDecoration(
                  labelText: "Weight (kg):",
                  prefixIcon: Icon(Icons.fitness_center, color: Colors.purple),
                ),
                controller: _weight,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  double height = double.tryParse(_height.text) ?? 0;
                  double weight = double.tryParse(_weight.text) ?? 0;
                  _calculateBMI(height, weight);
                },
                child: const Text("Calculate BMI"),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.blue[900],
                ),
              ),
              const SizedBox(height: 30),
              Text(
                _message ?? "",
                style: const TextStyle(color: Colors.white, fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
