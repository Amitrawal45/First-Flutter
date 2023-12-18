// import 'package:flutter/material.dart';

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int index = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.green,
//       ),
//       body: Center(
//         child: MaterialButton(
//           onPressed: () {
//             showDialog(
//               context: context,
//               builder: (context) {
//                 return AlertDialog(
//                   shadowColor: Colors.red,
//                   title: const Text("Confirm?"),
//                   content: const Text("This is message"),
//                   actions: [
//                     TextButton(
//                       onPressed: () {},
//                       child: const Text("Yes"),
//                     ),
//                     TextButton(
//                       onPressed: () {
//                         Navigator.of(context).pop();
//                       },
//                       child: const Text("No"),
//                     )
//                   ],
//                 );
//               },
//             );
//           },
//           color: Colors.red,
//           child: const Text(
//             "Hit me",
//           ),
//         ),
//       ),
//       drawer: const Drawer(),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: index,
//         onTap: (tappedIndex) {
//           index = tappedIndex;
//           debugPrint(index.toString());
//           setState(() {});
//         },
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: "",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.settings),
//             label: "",
//           )
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              onPressed: () {
                counter++;
                setState(() {});
              },
              child: const Icon(
                Icons.add,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(counter.toString()),
            const SizedBox(
              width: 20,
            ),
            FloatingActionButton(
              onPressed: () {
                counter--;
                setState(() {});
              },
              child: const Icon(Icons.remove),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter--;
          setState(() {});
        },
        child: const Icon(
          Icons.remove,
        ),
      ),
    );
  }
}
