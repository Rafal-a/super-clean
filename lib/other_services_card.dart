import 'package:flutter/material.dart';


class OtherServicesCard extends StatefulWidget {
    final String  title ;

  const OtherServicesCard({
    super.key,
    required this.title,
});
  @override
  State<OtherServicesCard> createState() => _OtherServicesCardState();
}


class _OtherServicesCardState extends State<OtherServicesCard> {
  String title = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withAlpha(50),
              blurRadius: 6,
              offset: const Offset(0, 3),
            )
          ]
        ),
        child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(12.0),
          child: Row(
            children: [
              Expanded(flex: 1,
                  child: Image.asset('images/test_image.png',
                  fit: BoxFit.cover,
                  height: double.infinity,
                  ),
              ),
              Expanded(
                flex: 1,
                  child: Padding(padding: EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.title,textAlign: TextAlign.end,)
                    ],
                  ),)
              )
            ],
          ),
    ),
    );
  }
}
