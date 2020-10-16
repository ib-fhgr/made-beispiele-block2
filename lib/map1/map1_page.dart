import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:http/http.dart' as http;
import 'package:latlong/latlong.dart';

class Map1App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: FlutterMap(
          options: MapOptions(
            center: LatLng(46.853057, 9.512644),
            zoom: 13.0,
          ),
          layers: [
            TileLayerOptions(
                urlTemplate:
                    "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                subdomains: ['a', 'b', 'c']),
            MarkerLayerOptions(markers: [
              Marker(
                  width: 80,
                  height: 80,
                  point: LatLng(46.853057, 9.512644),
                  builder: (context) =>
                      Container(child: Icon(Icons.location_pin)))
            ])
          ],
        ),
      ),
    );
  }
}
