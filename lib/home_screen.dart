import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Map Screen'),
      ),
      body: GoogleMap(
        mapType: MapType.satellite,
        onTap: (LatLng? latLng) {
          print(latLng);
        },
        zoomControlsEnabled: true,
        zoomGesturesEnabled: true,
        onMapCreated: (GoogleMapController controller) {},
        trafficEnabled: true,
        initialCameraPosition: const CameraPosition(
          zoom: 16,
          target: LatLng(23.757021981157543, 90.38991156130523),
        ),
        markers: <Marker>{
          const Marker(
            markerId: MarkerId('initial-position'),
            position: LatLng(23.757021981157543, 90.38991156130523),
          ),
          Marker(
            markerId: const MarkerId('home'),
            position: const LatLng(23.755467461652067, 90.39232704788446),
            infoWindow: InfoWindow(
                title: 'Home',
                onTap: () {
                  print('on tap home');
                }),
            icon: BitmapDescriptor.defaultMarkerWithHue(
              BitmapDescriptor.hueBlue,
            ),
            draggable: true,
          ),
        },//
        circles: <Circle>{
           Circle(
            circleId: CircleId('dengue-circle'),
            fillColor: Colors.red.withOpacity(0.3),
            center: LatLng(23.757021981157543, 90.38991156130523),
            radius: 300,
             strokeWidth: 1,
             strokeColor: Colors.black
          ),
          Circle(
              circleId: CircleId('blue-circle'),
              fillColor: Colors.red.withOpacity(0.3),
              center: LatLng(23.757021981157543, 90.38991156130523),
              radius: 300,
              strokeWidth: 1,
              strokeColor: Colors.black
          ),
        },
      ),
    );
  }
}
