import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/utils/constants.dart';
import 'package:my_portfolio/utils/utils.dart';

import '../../../models/carousel_item_model.dart';

List<CarouselItemModel> carouselItems(double carouselContainerHeight) =>
    List.generate(
      AppConstants.socialLoginDatas.length,
      (index) => CarouselItemModel(
        icons:   Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: AppConstants.socialLoginDatas
              .map((e) => InkWell(
            onTap: e.onTap,
            child: Container(
              width: 40,
              height: 40,
              margin: const EdgeInsets.all(10),
              child: Image.asset(e.title,color: kPrimaryColor,),
            ),
          ))
              .toList(),
        ),
        text: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Mobile Application Developer",
                style: GoogleFonts.josefinSans(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w900,
                  fontSize: 18.0,
                  letterSpacing: 2,
                ),
              ),
              const SizedBox(
                height: 18.0,
              ),
              Text(
                "Saif ahmed".toUpperCase(),
                style: GoogleFonts.josefinSans(
                  fontSize: 40.0,
                  fontWeight: FontWeight.w900,
                  height: 1.3,
                  letterSpacing: 2.3,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                children: const [
                  Text(
                    "Software Engineer, ",
                    style: TextStyle(
                      color: kCaptionColor,
                      fontSize: 15.0,
                      height: 1.0,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.location_on,
                    color: kCaptionColor,
                    size: 14,
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    "Egypt",
                    style: TextStyle(
                      color: kCaptionColor,
                      fontSize: 15.0,
                      height: 1.0,
                    ),
                  )
                ],
              ),

            ],
          ),
        ),
        image: Image.asset(
          AppConstants.personSvg,
          // width:  700.0,
        ),
      ),
    );
