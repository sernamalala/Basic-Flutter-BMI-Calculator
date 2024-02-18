// import 'package:flutter/material.dart';
//
// class HomePage extends StatefulWidget{
//   const HomePage({super.key});
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageStae extends State<HomePage>{
//   int _gender = 0, _height = 170, _age = 23, _weight = 65;
//   double _bmi = 0;
//
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text("BMI Calculator"),
//       ),
//       body: _buildUI(),
//       floatingActionButton:  FloatingActionButton(
//         onPressed: ( ) { },
//         child: const Icon(
//           Icons.calculate,
//       ),
//       ),
//     );
//   }
//
//   Widget _buildUI(){
//     return Column(
//       children: [
//         _selectGender(),
//       ],
//     );
//   }
//
//   Widget _selectGender(){
// return Container(
//   decoration: BoxDecoration(
//     color: Theme.of(context).colorScheme.primaryContainer,
//     borderRadius: BorderRadius.circular(15,
//     ),
//
//   ),
//   child: Row(
//     mainAxisSize: MainAxisSize.max,
//     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//     crossAxisAlignment: CrossAxisAlignment.center,
//     children: [
//       Column(
//         children: [
//          IconButton(
//              iconSize: 60,
//              onPressed: () {
//                setState(() {
//                  _gender = 0;
//
//                });
//              }, icon: Icon(
//            Icons.male,
//          color: _selectGender() == 0 ? Theme.of(context).colorScheme.primary : Colors.black,),),
//           const Text(
//             "Male"
//           )
//         ],
//       ),
//       Column(
//         children: [
//           IconButton(
//             iconSize: 60,
//             onPressed: () {
//               setState(() {
//                 _gender = 1;
//
//               });
//             }, icon: Icon(
//             Icons.female,
//             color: _selectGender() == 1 ? Theme.of(context).colorScheme.primary : Colors.black,),),
//           const Text(
//               "Female"
//           )
//         ],
//       )
//     ],
//   ),
// );
//   }
// }
