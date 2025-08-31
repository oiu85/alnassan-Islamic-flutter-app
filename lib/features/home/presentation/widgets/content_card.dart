// import 'package:flutter/material.dart';
//
// class ContentCard extends StatelessWidget {
//   final String title;
//   final IconData icon;
//   const ContentCard({super.key, required this.title, required this.icon});
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//       elevation: 2,
//       color: Colors.amber.shade50,
//       child: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(icon, size: 50, color: Colors.amber.shade700),
//             const SizedBox(height: 10),
//             Text(
//               title,
//               textAlign: TextAlign.center,
//               style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
