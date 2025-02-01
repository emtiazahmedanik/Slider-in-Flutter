import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myair/utils/textStyle.dart';

class SecondPage extends StatefulWidget {
  SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final List<Icon> buttoniconList = [
    Icon(Icons.access_alarms_sharp),
    Icon(Icons.rocket_outlined),
    Icon(Icons.offline_bolt),
    Icon(Icons.add_call)
  ];

  final List<String> buttonLabelList = [
    'Super Deals',
    'Minutes',
    'Bundles',
    'Internet'
  ];
  int _selectedButtonIndex1 = 0;
  int _selectedButtonIndex2 = 0;
  int _key1 = 1;
  int _key2 = 2;
  double _currentslidervalue = 20.0;
  double _currentadaptiveslider = 10.0;

  void _onButtonPressed1(int index)=>setState(() {
    _selectedButtonIndex1 = index;
  });
  void _onButtonPressed2(int index)=>setState(() {
    _selectedButtonIndex2 = index;
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromRGBO(162, 35, 51, 1.0),
            Color.fromRGBO(116, 24, 152, 1.0)
          ])),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Offers',
              style: CustomTextStyle.customStyle(
                  size: 16, color: Colors.white, weight: FontWeight.w800),
            ),
            Container(
              height: screenHeight * 0.035,
              child: ElevatedButton(
                onPressed: () {},
                child: Text.rich(TextSpan(
                    text: 'Balance: ',
                    style: CustomTextStyle.customStyle(
                        size: 12,
                        color: Colors.black45,
                        weight: FontWeight.w400),
                    children: [
                      TextSpan(
                          text: '0.73',
                          style: CustomTextStyle.customStyle(
                              size: 12,
                              color: Colors.deepPurpleAccent,
                              weight: FontWeight.w800))
                    ])),
              ),
            ),
            Icon(
              Icons.search,
              color: Colors.white,
            )
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            //borderRadius: BorderRadius.only(topRight: Radius.circular(54),topLeft:Radius.circular(54) ),
            gradient: LinearGradient(colors: [
          Color.fromRGBO(162, 35, 51, 1),
          Color.fromRGBO(116, 24, 152, 1)
        ], begin: Alignment.centerLeft, end: Alignment.centerRight)),
        child: Container(
          decoration: BoxDecoration(
              color: Color.fromRGBO(224, 247, 250, 1.0),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(24), topLeft: Radius.circular(24))),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: 5,
                    children: [
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shadowColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                side: BorderSide(
                                    color: Colors.black12, width: 1))),
                        onPressed: () {},
                        label: Text(
                          'Super Deals',
                          style: CustomTextStyle.customStyle(
                              size: 14,
                              color: Colors.black,
                              weight: FontWeight.w400),
                        ),
                        icon: Icon(
                          Icons.access_alarms_sharp,
                          color: Colors.black,
                        ),
                      ),
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shadowColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                side: BorderSide(
                                    color: Colors.black12, width: 1))),
                        onPressed: () {},
                        label: Text(
                          'Minutes',
                          style: CustomTextStyle.customStyle(
                              size: 14,
                              color: Colors.black,
                              weight: FontWeight.w400),
                        ),
                        icon: Icon(
                          Icons.access_alarms_sharp,
                          color: Colors.black,
                        ),
                      ),
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shadowColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                side: BorderSide(
                                    color: Colors.black12, width: 1))),
                        onPressed: () {},
                        label: Text(
                          'Redeem',
                          style: CustomTextStyle.customStyle(
                              size: 14,
                              color: Colors.black,
                              weight: FontWeight.w400),
                        ),
                        icon: Icon(
                          Icons.access_alarms_sharp,
                          color: Colors.black,
                        ),
                      ),
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shadowColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                side: BorderSide(
                                    color: Colors.black12, width: 1))),
                        onPressed: () {},
                        label: Text(
                          'Internet',
                          style: CustomTextStyle.customStyle(
                              size: 14,
                              color: Colors.black,
                              weight: FontWeight.w400),
                        ),
                        icon: Icon(
                          Icons.access_alarms_sharp,
                          color: Colors.black,
                        ),
                      ),
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shadowColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                side: BorderSide(
                                    color: Colors.black12, width: 1))),
                        onPressed: () {},
                        label: Text(
                          'Points',
                          style: CustomTextStyle.customStyle(
                              size: 14,
                              color: Colors.black,
                              weight: FontWeight.w400),
                        ),
                        icon: Icon(
                          Icons.access_alarms_sharp,
                          color: Colors.black,
                        ),
                      ),
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shadowColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                side: BorderSide(
                                    color: Colors.black12, width: 1))),
                        onPressed: () {},
                        label: Text(
                          'Bundles',
                          style: CustomTextStyle.customStyle(
                              size: 14,
                              color: Colors.black,
                              weight: FontWeight.w400),
                        ),
                        icon: Icon(
                          Icons.access_alarms_sharp,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  width: double.infinity,
                  height: screenHeight * 0.055,
                  child: buildListView(iconlist: buttoniconList,labellist: buttonLabelList,selectedindex: _selectedButtonIndex1,key: _key1),
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 3,
                  children: [
                    ElevatedButton.icon(
                      label: Text('Price'),
                      icon: Icon(Icons.compare_arrows_rounded),
                      onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black38,
                        side: BorderSide(color: Colors.black12,width: 1),
                        shadowColor: Colors.transparent
                      ),

                    ),
                    Container(
                      height: screenHeight*0.055,
                      width: screenWidth*0.66,
                      child: buildListView(iconlist: buttoniconList, labellist: buttonLabelList,selectedindex: _selectedButtonIndex2,key: _key2),

                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('My Packs',style: CustomTextStyle.customStyle(size: 16, color: Colors.black, weight: FontWeight.w600),),
                    Container(
                      child: Row(
                        spacing: 3,
                        children: [
                          Text('See more',style:CustomTextStyle.customStyle(size: 14, color: Colors.purple.shade400, weight: FontWeight.w600)),
                          Icon(Icons.arrow_forward_ios_rounded,color: Colors.purple.shade400,size: 14,)
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Column(
                        spacing: 0,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                child: Text('Validity',style: CustomTextStyle.customStyle(size: 14, color: Colors.black54, weight: FontWeight.w400),),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                child: Text(_currentslidervalue.toString(),style: CustomTextStyle.customStyle(size: 14, color: Colors.black54, weight: FontWeight.w400)),
                              )
                            ],
                          ),
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              trackHeight: 10,
                              tickMarkShape: SliderTickMarkShape.noTickMark,
                              activeTrackColor: Colors.teal,
                              
                            ),
                            child: Slider(
                                value: _currentslidervalue,
                                onChanged: (value){
                                  setState(() {
                                    _currentslidervalue=value;
                                  });
                                },
                              min: 10,
                              max: 50,
                              divisions: 4,
                              label: _currentslidervalue.toString(),
                              thumbColor: Colors.blue,
                              autofocus: false,
                          
                            ),
                          ),
                        ],
                      ),
                      Slider.adaptive(
                          value: _currentadaptiveslider,
                          onChanged: (value){
                            setState(() {
                              _currentadaptiveslider = value;
                            });
                          },
                        min: 5,
                        max: 20,
                        divisions: 4,
                        label: _currentadaptiveslider.toString(),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  ListView buildListView({required List<Icon> iconlist,required List<String> labellist,required int selectedindex,required int key}) {
    return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(colors: [
                                Color.fromRGBO(154, 42, 51, 1.0),
                                Color.fromRGBO(76, 47, 147, 1.0)
                              ])
                            ),
                            child: Padding(
                              padding:index==selectedindex? const EdgeInsets.all(1.0):const EdgeInsets.all(0.0),
                              child: ElevatedButton.icon(
                                onPressed: () {
                                  key==_key1 ? _onButtonPressed1(index): _onButtonPressed2(index);
                                },
                                label: Text(labellist[index]),
                                icon: iconlist[index],
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    backgroundColor: Colors.white,
                                    iconColor: Colors.black38,
                                    shadowColor: Colors.transparent),
                              ),
                            ),
                          ),
                        ));
  }
}

