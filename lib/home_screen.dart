import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late GoogleMapController googleMapController;
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
        }, //
        circles: <Circle>{
          Circle(
              circleId: const CircleId('dengue-circle'),
              fillColor: Colors.red.withOpacity(0.3),
              center: const LatLng(23.757021981157543, 90.38991156130523),
              radius: 300,
              strokeWidth: 1,
              strokeColor: Colors.black),
          Circle(
              circleId: const CircleId('blue-circle'),
              fillColor: Colors.red.withOpacity(0.3),
              center: const LatLng(23.757021981157543, 90.38991156130523),
              radius: 300,
              strokeWidth: 1,
              strokeColor: Colors.black,
              visible: true,
              onTap: () {
                print('Entered into dangue zone');
              }),
        },
        polylines: <Polyline>{
          const Polyline(
              polylineId: PolylineId('random'),
              color: Colors.amber,
              width: 4,
              jointType: JointType.round,
              points: <LatLng>[
                LatLng(23.762324580195234, 90.38996066898108),
                LatLng(23.75992281933135, 90.39168935269117),
                LatLng(23.760035129566162, 90.39367586374283),
                LatLng(23.761606235258594, 90.39191029965878),
              ])
        },
        polygons: <Polygon>{
          Polygon(
              polygonId: const PolygonId('poly_id'),
              fillColor: Colors.pink.withOpacity(0.4),
              strokeWidth: 2,
              points: const <LatLng>[
                LatLng(23.762324580195234, 90.38996066898108),
                LatLng(23.75992281933135, 90.39168935269117),
                LatLng(23.760035129566162, 90.39367586374283),
                LatLng(23.761606235258594, 90.39191029965878),
              ])
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          googleMapController.animateCamera(
              CameraUpdate.newCameraPosition(const CameraPosition(
            zoom: 17,
            target: LatLng(23.757021981157543, 90.38991156130523),
          )));
        },
        child: const Icon(Icons.location_history),
      ),
    );
  }
}
