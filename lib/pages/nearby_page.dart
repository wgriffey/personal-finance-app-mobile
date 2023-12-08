import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:personalfinanceapp/components/tool_bar.dart';
import 'package:personalfinanceapp/constants/app_strings.dart';

class NearbyPage extends StatelessWidget {
  const NearbyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolBar(title: AppStrings.nearby),
      body: FlutterMap(
        options: MapOptions(
          initialCenter: LatLng(40.549010, -105.034930),
          initialZoom: 10,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'dev.fleaflet.flutter_map.example',
          ),
          MarkerLayer(
            markers: [
              Marker(
                  point: LatLng(40.549010, -105.034930),
                  height: 100,
                  width: 90,
                  child: Column(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(14))),
                        child: Text(
                          "Username",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Icon(Icons.location_on_outlined, color: Colors.black,)
                    ],
                  ))
            ],
          )
        ],
      ),
    );
  }
}
