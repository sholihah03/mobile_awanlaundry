import 'package:flutter/material.dart';

class ViewStack extends StatefulWidget {
  @override
  _ViewStackState createState() => _ViewStackState();
}

class _ViewStackState extends State<ViewStack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[backgroundHeader(), summaryCash()],
            ),
            cardDetail('Bayar Listrik', 'Pembayaran tagihan listrik bulanan', '200.000', 'out'),
            cardDetail('Gaji', 'Gaji bulanan diterima', '5.000.000', 'in'),
            cardDetail('Hiburan', 'Nonton bioskop', '75.000', 'out'),
          ],
        ),
      ),
    );
  }

  Widget cardDetail(String title, String description, String price, String type) {
    return Card(
      margin: EdgeInsets.only(top: 15, left: 15, right: 15),
      elevation: 8,
      child: ListTile(
        leading: Icon(
          type == 'out'
              ? Icons.subdirectory_arrow_left
              : Icons.subdirectory_arrow_right,
          color: type == 'out' ? Colors.redAccent : Colors.lightGreen,
        ),
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(description),
        trailing: Text(
          "Rp $price",
          style: TextStyle(
              color: type == 'out' ? Colors.redAccent : Colors.lightGreen),
        ),
      ),
    );
  }

  Widget summaryCash() {
    return Positioned(
      top: 180,
      left: 20,
      child: Container(
        width: 370,
        height: 140,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text("Penghasilan"),
                  SizedBox(height: 5), // Gantikan Divider dengan SizedBox untuk memberikan jarak
                  Text(
                    "Rp 550.000",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Text("Pengeluaran"),
                  SizedBox(height: 5), // Gantikan Divider dengan SizedBox untuk memberikan jarak
                  Text(
                    "Rp 260.000",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget backgroundHeader() {
    return Container(
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.pinkAccent,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 60, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Diyanto",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "08562427920",
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}



// // import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';

// class ViewStack extends StatefulWidget {
//   @override
//   _ViewStackState createState() => _ViewStackState();
// }

// class _ViewStackState extends State<ViewStack> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Column(
//           children: <Widget>[
//             Stack(
//               children: <Widget>[backgroundHeader(), summaryCash()],
//             ),
//             cardDetail('Makan Siang', 'Beli Makan Di Warteg', '10.000', 'out'),
//             cardDetail('Bonus', 'Dapat Bonus Proyek', '500.000', 'in'),
//             cardDetail('Beli Baju', 'Baju Kemeja Kantor', '250.000', 'out'),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget cardDetail(title, description, proce, type) {
//     return Card(
//       margin: EdgeInsets.only(top: 15, left: 15, right: 15),
//       elevation: 8,
//       child: ListTile(
//         leading: Icon(
//           type == 'out'
//               ? Icons.subdirectory_arrow_left
//               : Icons.subdirectory_arrow_right,
//           color: type == 'out' ? Colors.redAccent : Colors.lightGreen,
//         ),
//         title: Text(
//           title,
//           style: TextStyle(fontWeight: FontWeight.bold),
//         ),
//         subtitle: Text(description),
//         trailing: Text(
//           "Rp $price",
//           style: TextStyle(
//               color: type == 'out' ? Colors.redAccent : Colors.lightGreen),
//         ),
//       ),
//     );
//   }

//   Widget summaryCash() {
//     return Positioned(
//       top: 180,
//       left: 20,
//       child: Container(
//         width: 370,
//         height: 140,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(30),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.only(top: 30.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               Column(
//                 children: <Widget>[
//                   Text("Penghasilan"),
//                   Divider(),
//                   Text(
//                     "Rp 500.000",
//                     style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//                   ),
//                 ],
//               ),
//               Column(
//                 children: <Widget>[
//                   Text("Pengeluaran"),
//                   Divider(),
//                   Text(
//                     "Rp 260.000",
//                     style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget backgroundHeader() {
//     return Container(
//       height: 300,
//       width: double.infinity,
//       decoration: BoxDecoration(
//         color: Colors.pinkAccent,
//         borderRadius: BorderRadius.only(
//           bottomLeft: Radius.circular(30),
//           bottomRight: Radius.circular(30),
//         ),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.only(top: 60, left: 20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Text(
//               "Diyanto",
//               style: TextStyle(
//                   fontSize: 25,
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold),
//             ),
//             Text(
//               "08562427920",
//               style: TextStyle(
//                 fontSize: 15,
//                 color: Colors.white,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
