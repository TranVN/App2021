import 'package:appthoviet/constant/size_screen_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'key_map.dart';
import 'package:appthoviet/Views/search_map/component/location.dart';




class SearchBox extends StatefulWidget {
  final KeyMap bloc;
  SearchBox(this.bloc);

  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    SizeConfig().init(context);
    return Container(
      height: size.height*0.19,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              IconButton(icon: Icon(Icons.close, color: Colors.black87,size: SizeConfig.widthScreen*6,),
                  onPressed: () {Navigator.pop(context);})
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Chọn địa điểm trên map",
                  style: TextStyle(
                    color: Colors.green[900],
                      fontSize: SizeConfig.widthScreen*5,
                      fontWeight: FontWeight.w900),
                ),
              ],
            ),
          ),
          SizedBox(height: size.height * 0.02),
          Stack(
            children: [
              TypeAheadField(
                textFieldConfiguration: TextFieldConfiguration(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Từ khóa tìm kiếm',
                    contentPadding: EdgeInsets.only(left: 52, ),
                    border: InputBorder.none,
                  ),
                ),
                noItemsFoundBuilder: (context) => SizedBox.shrink(),
                suggestionsCallback: (pattern) async {
                  return await widget.bloc.search(pattern);
                },
                itemBuilder: (BuildContext context, Location location) {
                  return Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom:8,left: 10,right: 10),
                          child: ListTile(

                            title: Container(
                              margin: EdgeInsets.only(bottom: 7,left: 2),
                              child: Text(
                                location.name,
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            subtitle: Text(location.formattedAddress),
                          ),
                        ),
                        Divider(height: 2,)
                      ],
                    ),
                  );
                },
                onSuggestionSelected: (Location location) {
                  widget.bloc.locationSelected(location);
                },
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: IconButton(
                    icon: Icon(
                      Icons.search_rounded,
                      color: Color(0xff00104f),
                      size: SizeConfig.widthScreen*5,
                    ),
                    onPressed: () {}),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 52,right: 30,top: 36
                ),
                child: Container(
                    height: 2,
                    color: Color(0xffE8E8E8)
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}