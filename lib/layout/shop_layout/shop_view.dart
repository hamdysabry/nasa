// // import 'package:flutter/material.dart';

// // class ShopView extends StatefulWidget {
// //   @override
// //   _ShopViewState createState() => _ShopViewState();
// // }

// // class _ShopViewState extends State<ShopView> {
// //   // List of image paths (replace with your own images)
// //   final List<String> images = [
// //     "assets/images/image7.png",
// //     "assets/images/image8.png",
// //     "assets/images/image9.png",
// //     "assets/images/image10.png",
// //     "assets/images/image11.png",
// //     "assets/images/image12.png",
// //     "assets/images/image13.png",
// //     "assets/images/image14.png",
// //     "assets/images/image15.png",
// //     "assets/images/image16.png",
// //     "assets/images/image17.png",
// //     "assets/images/image18.png",
// //     "assets/images/image19.png",
// //   ];

// //   // List to hold the product count for each item
// //   late List<int> productCounts;

// //   @override
// //   void initState() {
// //     super.initState();
// //     // Initialize the count list with 0 for each item
// //     productCounts = List<int>.filled(images.length, 0);
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Shop'),
// //         backgroundColor: Color(0xff8940CB),
// //       ),
// //       body: Container(
// //         decoration: BoxDecoration(
// //           image: DecorationImage(
// //             image: AssetImage("assets/images/image_1.jpg"),
// //             fit: BoxFit.cover,
// //           ),
// //         ),
// //         child: Padding(
// //           padding: const EdgeInsets.all(8.0),
// //           child: GridView.builder(
// //             itemCount: images.length,
// //             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// //               crossAxisCount: 2, // Number of columns
// //               crossAxisSpacing: 10.0, // Spacing between columns
// //               mainAxisSpacing: 10.0, // Spacing between rows
// //               childAspectRatio: 0.7, // Adjust child size to fit image + counter
// //             ),
// //             itemBuilder: (context, index) {
// //               return Card(
// //                 shape: RoundedRectangleBorder(
// //                   borderRadius: BorderRadius.circular(15),
// //                 ),
// //                 elevation: 5,
// //                 child: Column(
// //                   children: [
// //                     Expanded(
// //                       child: GestureDetector(
// //                         onTap: () {
// //                           // Handle image tap here
// //                           print('Tapped on item $index');
// //                         },
// //                         child: Container(
// //                           decoration: BoxDecoration(
// //                             borderRadius: BorderRadius.circular(15),
// //                             image: DecorationImage(
// //                               image: AssetImage(images[index]),
// //                               fit: BoxFit.cover,
// //                             ),
// //                           ),
// //                         ),
// //                       ),
// //                     ),
// //                     Padding(
// //                       padding: const EdgeInsets.symmetric(vertical: 5.0),
// //                       child: Text(
// //                         'Product ${index + 1}', // Placeholder for product name
// //                         style: TextStyle(
// //                           fontWeight: FontWeight.bold,
// //                           fontSize: 16,
// //                         ),
// //                       ),
// //                     ),
// //                     Row(
// //                       mainAxisAlignment: MainAxisAlignment.center,
// //                       children: [
// //                         IconButton(
// //                           icon: Icon(Icons.remove),
// //                           onPressed: () {
// //                             setState(() {
// //                               if (productCounts[index] > 0) {
// //                                 productCounts[index]--;
// //                               }
// //                             });
// //                           },
// //                         ),
// //                         Text(
// //                           productCounts![index].toString(),
// //                           style: TextStyle(
// //                             fontSize: 18,
// //                             fontWeight: FontWeight.bold,
// //                           ),
// //                         ),
// //                         IconButton(
// //                           icon: Icon(Icons.add),
// //                           onPressed: () {
// //                             setState(() {
// //                               productCounts[index]++;
// //                             });
// //                           },
// //                         ),
// //                       ],
// //                     ),
// //                   ],
// //                 ),
// //               );
// //             },
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:nasa_app/layout/shop_layout/product_info.dart';

// class ShopView extends StatefulWidget {
//   @override
//   _ShopViewState createState() => _ShopViewState();
// }

// class _ShopViewState extends State<ShopView> {
//   // List of image paths (replace with your own images)
//   final List<String> images = [
//     "assets/images/image7.png",
//     "assets/images/image8.png",
//     "assets/images/image9.png",
//     "assets/images/image10.png",
//     "assets/images/image11.png",
//     "assets/images/image12.png",
//     "assets/images/image13.png",
//     "assets/images/image14.png",
//     "assets/images/image15.png",
//     "assets/images/image16.png",
//     "assets/images/image17.png",
//     "assets/images/image18.png",
//     "assets/images/image19.png",
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Shop'),
//         backgroundColor: Color(0xff8940CB),
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage("assets/images/image_1.jpg"),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: GridView.builder(
//             itemCount: images.length,
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2, // Number of columns
//               crossAxisSpacing: 10.0, // Spacing between columns
//               mainAxisSpacing: 10.0, // Spacing between rows
//               childAspectRatio: 0.7, // Adjust child size to fit image + button
//             ),
//             itemBuilder: (context, index) {
//               return Card(
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//                 elevation: 5,
//                 child: Column(
//                   children: [
//                     Expanded(
//                       child: GestureDetector(
//                         onTap: () {
//                           // Handle image tap here
//                           print('Tapped on item $index');
//                         },
//                         child: Container(
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(15),
//                             image: DecorationImage(
//                               image: AssetImage(images[index]),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(vertical: 5.0),
//                       child: Text(
//                         'Product ${index + 1}', // Placeholder for product name
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 16,
//                         ),
//                       ),
//                     ),
//                     ElevatedButton(
//                       style: ButtonStyle(
//                           backgroundColor:
//                               MaterialStateProperty.all(Color(0xff1B0B87))),
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) =>
//                                 ProductInfoScreen(index: index),
//                           ),
//                         );
//                       },
//                       child: Text('Buy', style: TextStyle(color: Colors.white)),
//                     ),
//                   ],
//                 ),
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class ShopView extends StatefulWidget {
  @override
  _ShopViewState createState() => _ShopViewState();
}

class _ShopViewState extends State<ShopView> {
  // List of image paths (replace with your own images)
  final List<String> images = [
    // "assets/images/image7.png",
    // "assets/images/image8.png",
    // "assets/images/image9.png",
    // "assets/images/image10.png",
    // "assets/images/image11.png",
    // "assets/images/image12.png",
    // "assets/images/image13.png",
    // "assets/images/image14.png",
    // "assets/images/image15.png",
    // "assets/images/image16.png",
    // "assets/images/image17.png",
    // "assets/images/image18.png",
    // "assets/images/image19.png",
    "assets/shop/DRAGON_SCALEMODEL_FRONT_600x.png",
    "assets/shop/DRAGON_STARMAN_PLUSHIE_BOTH_2_600x.png",
    "assets/shop/DRAGON_STARMAN_PLUSHIE_BOTH_3_600x.png",
    "assets/shop/hotstage_600x (1).png",
    "assets/shop/hotstage_booster_1_600x.png",
    "assets/shop/Kisses_from_space_book_600x.png",
    "assets/shop/Polaris_Dawn_Mission_Patch_a3182692-c1de-4064-859a-e6da83fc56c5_600x.png",
    "assets/shop/POLARISDAWN_ZGI_BACK_3ebdef76-db09-4576-8262-5501bdbc22f3_600x.png",
    "assets/shop/POLARISDAWN_ZGI_FRONT_600x.png",
    "assets/shop/DRAGON_SCALEMODEL_FRONT_600x.png",
    "assets/shop/DRAGON_STARMAN_PLUSHIE_BOTH_2_600x.png",
    "assets/shop/DRAGON_STARMAN_PLUSHIE_BOTH_3_600x.png",
    "assets/shop/hotstage_600x (1).png",
    "assets/shop/hotstage_600x.png",
    "assets/shop/hotstage_booster_1_600x.png",
    "assets/shop/Kisses_from_space_book_600x.png",
    "assets/shop/Polaris_Dawn_Mission_Patch_a3182692-c1de-4064-859a-e6da83fc56c5_600x.png",
    "assets/shop/POLARISDAWN_ZGI_BACK_3ebdef76-db09-4576-8262-5501bdbc22f3_600x.png",
    "assets/shop/POLARISDAWN_ZGI_FRONT_600x.png",
    "assets/shop/SPACEX_DRAGON_SCALEMODEL_CLOSEUP2_600x.png",
    "assets/shop/SPACEX_DRAGONPIN_ANGLED_600x.png",
    "assets/shop/SPACEX_DRAGONPIN_FRONT_600x.png",
    "assets/shop/SpaceX_Launchday_Socks_600x.png",
    "assets/shop/SPACEX_RSF_RESILIENCE_BOX_TOP_600x.png",
    "assets/shop/SPACEX_RSF_RESILIENCE_MODELSHOT_1_600x.png",
    "assets/shop/SPACEX_STARFIGURE_CLOSEUP_600x.png",
    "assets/shop/SPACEX_STARFIGURE_FRONT_QUARTER_RIGHT_600x.png",
    "assets/shop/SpaceX_Starship_Flight4_Patch_600x.png",
    "assets/shop/SpaceX_Starship_Flight4_Tshirt_600x.png",
    "assets/shop/SpaceX_Unisex_Polaris_Dawn_Tshirt_Back_600x.png",
    "assets/shop/SpaceX_Unisex_Polaris_Dawn_Tshirt_Front_600x.png",
    "assets/shop/SpaceXBoosterFullyStacked_600x.png",
    "assets/shop/SpaceXCrewBlackDetal_600x.png",
    "assets/shop/SpaceXCrewBlackFront_600x.png",
    "assets/shop/SpaceXHolidaySweaterDragonCloseup_600x.png",
    "assets/shop/SpaceXHolidaySweaterDragonFront_600x.png",
    "assets/shop/SpaceXHolidaySweaterFalconDetail_600x.png",
    "assets/shop/SpaceXHolidaySweaterFalconFront_b10b5ab4-86c5-4c84-a32e-e7e31f573abe_600x.png",
    "assets/shop/SpaceXMemesStreetSign2_600x.png",
    "assets/shop/SpaceXMemesStreetSignIRL_600x.png",
    "assets/shop/SpaceXStarshipFlight2Patch_e4da0f89-3dd7-4a62-9d2d-bc4227ebaa85_600x.png",
    "assets/shop/SpaceXStarshipFlight3Patch_600x.png",
    "assets/shop/SpacexYearofDragonTeeBlackBack_600x.png",
    "assets/shop/SpacexYearofDragonTeeBlackFront_600x.png",
    "assets/shop/StarlinkAnywhereTumblerMiniMilitaryGreen_9c37bb5c-dd35-44cd-ae4a-bcb0f47ecd68_600x.png",
    "assets/shop/StarlinkAnywhereTumblerMiniMilitaryGreenNoCap_6f18c05f-4bb3-4f3e-a6db-39c4cb658c63_600x.png",
    "assets/shop/STARSHIP_STICKERPACK_grid_800x_21aac1c3-1f2b-4f2a-8ccf-5a8e36e41750_600x.png",
    "assets/shop/STARSHIP_STICKERPACK_INPACKAGING_800x_7e0c3098-86d0-441c-8fd9-7dc172e1996e_600x.png",
    "assets/shop/Starship_Torch_smpres_photo_72867c75-60cd-41c2-b0cb-de310df5708b_600x.jpg",
    "assets/shop/StarshipBoosterOpenedPackaging_600x.png",
    "assets/shop/STARSHIPFLIGHT2_MENS-BLACK-BACK_600x.png",
    "assets/shop/STARSHIPFLIGHT2_MENS-BLACK-FRONT_600x.png",
    "assets/shop/STARSHIPFLIGHT3_UNISEX-BLACK-BACK_600x.png",
    "assets/shop/STARSHIPFLIGHT3_UNISEX-BLACK-FRONT_600x.png",
    "assets/shop/STARSHIPFLIGHT4_UNISEX-BLACK-FRONT_600x.png",
    "assets/shop/STARSHIPTESTFLIGHT_MENS-BLACK-FRONT_600x.png",
    "assets/shop/STARSHIPTESTFLIGHTPATCH_600x.png",
    "assets/shop/SX_Launchday_Socks_2_600x.png",
    "assets/shop/torch_smore_web_600x.jpg",
    "assets/shop/Unknown-1_600x.png",
    "assets/shop/Unknown-2_600x.png",
    "assets/shop/XCollectionLongSleeveBlackDetail_600x.png",
    "assets/shop/XCollectionLongSleeveBlackFront_600x.png"
  ];

  void _showProductDialog(BuildContext context, int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          // title: Text('Product ${index + 1}'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(images[index], fit: BoxFit.cover),
              SizedBox(height: 10),
              Text(
                'This product belongs to Astronova \n avalibale pieces ${index + 1}', // Placeholder for description
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                // Show confirmation message
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Your order is confirmed')),
                );
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('Confirm'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shop', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff1B0B87),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/image_1.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            itemCount: images.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Number of columns
              crossAxisSpacing: 10.0, // Spacing between columns
              mainAxisSpacing: 10.0, // Spacing between rows
              childAspectRatio: 0.7, // Adjust child size to fit image + button
            ),
            itemBuilder: (context, index) {
              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                elevation: 5,
                child: Column(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          // Handle image tap here
                          print('Tapped on item $index');
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(images[index]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Text(
                        'Product ${index + 1}', // Placeholder for product name
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xff1B0B87)),
                      ),
                      onPressed: () {
                        _showProductDialog(context, index);
                      },
                      child: Text('Buy', style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
