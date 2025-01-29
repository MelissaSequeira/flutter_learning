// import "package:flutter/material.dart";

// void main()=>runApp(firstApp());
// class firstApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       home:Scaffold(
//         appBar:AppBar(
//           title:Text("First Flutter App"),
//         ),
//       body:Center(
//         child:Text("Helloo Melissa"),
//       )
//       ) 
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text(
//             "First Flutter App", 
//             style: TextStyle(
//               color: const Color.fromARGB(255, 102, 75, 73), // This makes the text red
//             ),
//           ),
//         ),
//         body: Center(
//           child: ElevatedButton(onPressed: (){
//             print("Button pressed!!");
//           }, child: Text("Button")),
//         ),
//       ),
//     );
//   }
// }

import "package:flutter/material.dart";

void main()=>runApp(const app());
class app extends StatelessWidget{
  const app({super.key});
   @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:appStateful(),
    );
  }
}
class appStateful extends StatefulWidget{
  const appStateful({super.key});
  @override
  State<appStateful> createState()=> _appStatefulState(); 
}
class _appStatefulState extends State<appStateful>{
  int _count=0;
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:Text("Incrementer"),
      ),
      body:Text("U pressed the button $_count times" ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>setState(()=>_count++),
        tooltip:"increment",
      ),
      
    );
  }
}