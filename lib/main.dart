import 'package:flutter/material.dart';

import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';


import 'package:flutter/material.dart';

void main() {
  runApp(DriverApp());
}

class DriverApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Driver App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MenuScreen(),
        '/drivers': (context) => DriversScreen(),
        '/vehicles': (context) => VehicleListScreen(),
        '/logs': (context) => LogCountScreen(),
        '/lastinfo': (context) => LastInfoScreen(),
        '/address': (context) => ShowAddressScreen(),
        '/map': (context) => ShowPinOnMapScreen(),
      },
    );
  }
}

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/drivers'),
              child: Text('Drivers'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/vehicles'),
              child: Text('Vehicle List'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/logs'),
              child: Text('Log Count'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/lastinfo'),
              child: Text('Last Info'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/address'),
              child: Text('Show Address'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/map'),
              child: Text('Show Pin on Map'),
            ),
          ],
        ),
      ),
    );
  }
}

class DriversScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drivers'),
      ),
      body: Center(
        child: Text('Drivers Mock Data Screen'),
      ),
    );
  }
}

class VehicleListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vehicle List'),
      ),
      body: Center(
        child: Text('Vehicle List Screen'),
      ),
    );
  }
}

class LogCountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log Count'),
      ),
      body: Center(
        child: Text('Log Count Screen'),
      ),
    );
  }
}

class LastInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Last Info'),
      ),
      body: Center(
        child: Text('Last Info Screen'),
      ),
    );
  }
}

class ShowAddressScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Show Address'),
      ),
      body: Center(
        child: Text('Show Address Screen'),
      ),
    );
  }
} class ShowPinOnMapScreen extends StatelessWidget { @override Widget build(BuildContext context) {

  final LatLng pinLocation = LatLng(-33.9199651, 150.9641465 ); // Example coordinates for San Francisco

    return Scaffold(
      appBar: AppBar(
        title: Text('Show Pin on Map'),
      ),
      body: Center(
        child: //  Text('Show Pin on Map Screen'),


	FlutterMap(
        options: MapOptions(
          center: pinLocation,
          zoom: 13.0,
        ),
        layers: [
          TileLayerOptions(
            urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
            subdomains: ['a', 'b', 'c'],
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                width: 40.0,
                height: 40.0,
                point: pinLocation,
                builder: (ctx) => Container(
                  child: Icon(
                    Icons.location_pin,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      ),
    );
  }
}


