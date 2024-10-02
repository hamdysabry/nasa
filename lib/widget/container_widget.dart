// import 'package:flutter/material.dart';

// class ContainerWidget extends StatelessWidget {
//   final String imagepath;
//   final String title;

//   ContainerWidget(ContainerWidget containerWidget,
//       {required this.imagepath, required this.title});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: GestureDetector(
//         onTap: () {
//           // Show information when the image is clicked
//           showDialog(
//             context: context,
//             builder: (BuildContext context) {
//               return AlertDialog(
//                 title: const Text(' Information'),
//                 content: Text(title),
//                 actions: <Widget>[
//                   TextButton(
//                     onPressed: () {
//                       Navigator.of(context).pop(); // Close the dialog
//                     },
//                     child: const Text('OK'),
//                   ),
//                 ],
//               );
//             },
//           );
//         },
//         child: Image.asset(
//           imagepath, // Replace with your image asset path
//           width: 300,
//           height: 300,
//           fit: BoxFit.cover,
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  final String imagepath;
  final String title;

  const ContainerWidget(
      {super.key, required this.imagepath, required this.title});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          // Show information when the image is clicked
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                backgroundColor: Color(0xff1B0B87),
                //  icon: Icon(Icons.info),
                title: Row(
                  children: [
                    const Icon(Icons.info, color: Colors.white),
                    SizedBox(width: 10),
                    const Text('Info',
                        style: TextStyle(
                          color: Colors.white,
                        )),
                  ],
                ),
                content: Text(title,
                    style: TextStyle(
                      color: Colors.white,
                    )), // Displays the title when the image is clicked
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(); // Close the dialog
                    },
                    child: const Text('OK',
                        style: TextStyle(
                          color: Colors.white,
                        )),
                  ),
                ],
              );
            },
          );
        },
        child: Container(
          margin:
              const EdgeInsets.all(10.0), // Add some margin for better spacing
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(0, 4),
                blurRadius: 4,
              )
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.asset(
              imagepath, // Display image
              width: 300,
              height: 300,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
