import 'package:flutter/material.dart';
import 'detail_tourism.dart';
import 'tourism_data.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tourismPlaceList.length,
      itemBuilder: (BuildContext context, int index){
        return TourismPlaceCard(tourismPlace: tourismPlaceList[index]);
      },
    );
  }
}

class TourismPlaceCard extends StatelessWidget {
  final TourismPlace tourismPlace;

  const TourismPlaceCard({Key? key, required this.tourismPlace}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GestureDetector(
          onTap: () => {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailTourism(tourismPlace: tourismPlace);
            }))
          },
      child:Card(
      child: Column(
        children: [
          Image.network(
            tourismPlace.imageUrls[1],
            fit: BoxFit.fitWidth,
            height: 200,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tourismPlace.name,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleLarge,
                ),

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

