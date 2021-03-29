import 'package:appthoviet/constant/size_screen_config.dart';
import 'package:flutter/material.dart';

import 'package:geocoder/geocoder.dart';

import 'component/key_map.dart';
import 'component/picker_map.dart';
import 'component/search_map.dart';





class MainMap extends StatefulWidget {
  @override
  _MainMapState createState() => _MainMapState();
}

class _MainMapState extends State<MainMap> {
  KeyMap _pickerMapBloc;
  Address _address;

  @override
  void initState() {
    super.initState();
    _pickerMapBloc = KeyMap.getInstance();
    _pickerMapBloc.addressController.stream.listen((Address address) {
      _address = address;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    double padding = _size.width * 0.035;
    SizeConfig().init(context);
    return GestureDetector(

      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          resizeToAvoidBottomInset: false,

          body: Column(
            children: [
              Container(
                width: _size.width,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: SearchBox(_pickerMapBloc),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Stack(
                  children: [
                    PickerMap(_pickerMapBloc),
                    Align(alignment: Alignment.bottomCenter ,
                    child: Container(
                      width: SizeConfig.widthScreen*60,
                      child: RaisedButton(
                        color: Colors.green[600],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        onPressed: () {
                          if (_address != null) {
                            Navigator.pop(context, _address);
                          } else {
                            Navigator.pop(context);
                          }
                        },

                        child: Text(
                          "Chọn",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: SizeConfig.widthScreen*4.5,
                          ),
                        ),
                      ),
                    ))

                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
  @override
  void dispose() {
    super.dispose();
    _pickerMapBloc.dispose();
  }

}