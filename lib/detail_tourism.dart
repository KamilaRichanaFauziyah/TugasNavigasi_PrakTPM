import 'package:flutter/material.dart';
import 'tourism_data.dart';

class DetailTourism extends StatelessWidget {
  final TourismPlace tourismPlace;
  const DetailTourism({Key? key, required this.tourismPlace}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Detail',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xf20F4EDB),
          title: Text(tourismPlace.name),
        ),
        body: Card(
          child: Column(
            children: [
              Image.network(
                tourismPlace.imageUrls[2],
                fit: BoxFit.fitWidth,
                height: 200,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.location_city),
                            SizedBox(width: 8.0),
                            Text(tourismPlace.location),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 16.0),
                    Text(tourismPlace.description),
                    SizedBox(height: 16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.access_time),
                            SizedBox(width: 8.0),
                            Text(tourismPlace.openDays),
                            SizedBox(width: 8.0),
                            Text(tourismPlace.openTime),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.attach_money),
                            SizedBox(width: 8.0),
                            Text(tourismPlace.ticketPrice),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.all(50)),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("Kembali"),
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                              horizontal: 29,
                              vertical: 18,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

