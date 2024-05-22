import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/models/project.dart';
import 'package:my_portfolio/pages/home/components/about.dart';
import 'package:my_portfolio/pages/home/components/carousel.dart';
import 'package:my_portfolio/pages/home/components/footer.dart';
import 'package:my_portfolio/pages/home/components/header.dart';
import 'package:my_portfolio/pages/home/components/portfolio_stats.dart';
import 'package:my_portfolio/pages/home/components/project.dart';
import 'package:my_portfolio/pages/home/components/service.dart';
import 'package:my_portfolio/provider/home.dart';
import 'package:my_portfolio/provider/theme.dart';
import 'package:my_portfolio/utils/globals.dart';
import 'package:my_portfolio/utils/screen_helper.dart';
import 'package:my_portfolio/widgets/switch.dart';

import '../../utils/constants.dart';
import '../../utils/utils.dart';

class Home extends ConsumerStatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  ConsumerState<Home> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home>
    with SingleTickerProviderStateMixin {
  late HomeProvider _homeProvider;
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    _homeProvider = ref.read(homeProvider);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Widget _buildPage() {
    return Stack(
      children: [
        ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: ScreenHelper.isDesktop(context)
                      ? 30
                      : ScreenHelper.isTablet(context)
                          ? 70
                          : 20,
                ),
                Carousel(
                  key: _homeProvider.homeKey,
                ),

                AboutSection(
                  key: _homeProvider.aboutKey,
                ),
                // ServiceSection(
                //   key: _homeProvider.servicesKey,
                // ),
                SizedBox(
                  key: _homeProvider.portfolioKey,
                  height: 100.0,
                ),
                Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Portfolio",
                      style: GoogleFonts.josefinSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 36,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Here are some of my Previous Work :)",
                      style: GoogleFonts.josefinSans(
                        color: Colors.grey[400],
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    )
                  ],
                )),
                ProjectSection(
                  projects: ProjectModel.projects,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 28.0),
                  child: PortfolioStats(),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                Center(
                  child: Text(
                    "Fawry responsibility is limited to payment collection. For any related issue please contact us",
                    style: TextStyle(
                      fontSize: 16,

                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                         //open this link
                        Utilty.openUrl("https://sites.google.com/view/terms-and-privac/%D8%A7%D9%84%D8%B5%D9%81%D8%AD%D8%A9-%D8%A7%D9%84%D8%B1%D8%A6%D9%8A%D8%B3%D9%8A%D8%A9");


                      },
                      child: Text(
                        "Terms And Condition",
                        style: TextStyle(
                          color: ref.watch(themeProvider).isDarkMode
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Utilty.openUrl("https://sites.google.com/view/sz40/privacy-policy");

                      },
                      child: Text(
                        "Personal Policies",
                        style: TextStyle(
                          color: ref.watch(themeProvider).isDarkMode
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Utilty.openUrl("https://sites.google.com/view/s400s/%D8%A7%D9%84%D8%B5%D9%81%D8%AD%D8%A9-%D8%A7%D9%84%D8%B1%D8%A6%D9%8A%D8%B3%D9%8A%D8%A9");
                      },
                      child: Text(
                        "Refund Policy",
                        style: TextStyle(
                          color: ref.watch(themeProvider).isDarkMode
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Footer(
                  key: _homeProvider.contactKey,
                )
              ],
            ),
          ),
        ),
        Header(
          themeSwitch: ThemeSwitcher(
              clipper: const ThemeSwitcherBoxClipper(),
              builder: (context) {
                return CustomSwitch(
                  value: ref.watch(themeProvider).isDarkMode,
                  onChanged: (val) {
                    ref.read(themeProvider).changeTheme(val);
                    ThemeSwitcher.of(context).changeTheme(
                        theme: ref.read(themeProvider).getCurrentTheme,
                        isReversed: false // default: false
                        );
                  },
                );
              }),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return ThemeSwitchingArea(
      child: Scaffold(
        key: Globals.scaffoldKey,
        endDrawer: Drawer(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 24.0,
              ),
              child: ListView.separated(
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    onTap: () {
                      if (Globals.scaffoldKey.currentState != null) {
                        if (Globals.scaffoldKey.currentState!.isEndDrawerOpen) {
                          Navigator.pop(context);
                          _homeProvider.scrollBasedOnHeader(
                              HeaderRow.headerItems[index]);
                        }
                      }
                    },
                    leading: Icon(
                      HeaderRow.headerItems[index].iconData,
                    ),
                    title: Text(
                      HeaderRow.headerItems[index].title,
                      style: const TextStyle(),
                    ),
                    trailing: HeaderRow.headerItems[index].isDarkTheme != null
                        ? HeaderRow.headerItems[index].isDarkTheme!
                            ? SizedBox(
                                width: 50,
                                child: CustomSwitch(
                                  value: ref.watch(themeProvider).isDarkMode,
                                  onChanged: (val) {
                                    ref.read(themeProvider).changeTheme(val);
                                    ThemeSwitcher.of(context).changeTheme(
                                        theme: ref
                                            .read(themeProvider)
                                            .getCurrentTheme,
                                        isReversed: false // default: false
                                        );
                                  },
                                ),
                              )
                            : null
                        : null,
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    height: 10.0,
                  );
                },
                itemCount: HeaderRow.headerItems.length,
              ),
            ),
          ),
        ),
        body: _buildPage(),
      ),
    );
  }
}
