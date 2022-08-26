import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../utils/constants.dart';
import '../../../utils/screen_helper.dart';
import 'carousel_items.dart';

class Carousel extends StatelessWidget {
  final CarouselController carouselController = CarouselController();

  Carousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double carouselContainerHeight = MediaQuery.of(context).size.height *
        (ScreenHelper.isMobile(context) ? 0.75 : .60);
    return SizedBox(
      height:ScreenHelper.isMobile(context) ?740: 560,
      width: double.infinity,
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            if(ScreenHelper.isMobile(context) ) const SizedBox(height: 100,),
            Container(
              alignment: Alignment.center,
              child: CarouselSlider(
                carouselController: carouselController,
                options: CarouselOptions(
                  // autoPlay: true,
                  viewportFraction: 1,
                  scrollPhysics: const NeverScrollableScrollPhysics(),
                  height: ScreenHelper.isMobile(context) ?740:560,
                ),
                items: List.generate(
                  carouselItems(carouselContainerHeight).length,
                  (index) => Builder(
                    builder: (BuildContext context) {
                      return Container(
                        constraints: BoxConstraints(
                          minHeight: carouselContainerHeight,
                        ),
                        child: ScreenHelper(
                          // Responsive views
                          desktop: _buildDesktop(
                            context,
                            carouselItems(carouselContainerHeight)[index].text,
                            carouselItems(carouselContainerHeight)[index].image,
                            carouselItems(carouselContainerHeight)[index].icons,
                          ),
                          tablet: _buildTablet(
                            context,
                            carouselItems(carouselContainerHeight)[index].text,
                            carouselItems(carouselContainerHeight)[index].image,
                            carouselItems(carouselContainerHeight)[index].icons,
                          ),
                          mobile: SizedBox(
                            height: 100,
                            child: _buildMobile(
                              context,
                              carouselItems(carouselContainerHeight)[index].text,
                              carouselItems(carouselContainerHeight)[index].image,
                              carouselItems(carouselContainerHeight)[index].icons,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Big screens
Widget _buildDesktop(
    BuildContext context, Widget text, Widget image, Widget icons) {
  return Center(
    child: ResponsiveWrapper(
      maxWidth: kDesktopMaxWidth,
      minWidth: kDesktopMaxWidth,
      defaultScale: false,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [text,
                const SizedBox(height: 100,),
                icons],
            ),
          ),
          Expanded(
            child: image,
          ),
        ],
      ),
    ),
  );
}

// Mid screens
Widget _buildTablet(
    BuildContext context, Widget text, Widget image, Widget icons) {
  return Center(
    child: ResponsiveWrapper(
      maxWidth: kTabletMaxWidth,
      minWidth: kTabletMaxWidth,
      defaultScale: false,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [text,
                const SizedBox(height: 150,),
                icons],
            ),
          ),
          Expanded(
            child: image,
          ),
        ],
      ),
    ),
  );
}

// SMall Screens

Widget _buildMobile(
    BuildContext context, Widget text, Widget image, Widget icons) {
  return Container(
    constraints: BoxConstraints(
      maxWidth: getMobileMaxWidth(context),
    ),
    width: double.infinity,
    child: SingleChildScrollView(
      // physics:const NeverScrollableScrollPhysics(),
      child: Column(
        children: [
          text,
          Column(
            children: [
              image,
              const SizedBox(height: 30,),
              icons,
            ],
          ),
        ],
      ),
    ),
  );
}
