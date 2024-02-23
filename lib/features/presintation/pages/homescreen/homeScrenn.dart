import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:i_baza/features/presintation/pages/homescreen/widgets/tab_item.dart';

import '../../../../assets/widgets/icons.dart';
import '../katalog_screen/katalog_page.dart';
import '../profile/profile.dart';
import '../profile/profile_main_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NaviBar(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Home Page'),
    );
  }
}

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Search Page'),
    );
  }
}

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Text('not completedd')
      );
  }
}

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Cart Page'),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: ProfileScreen(),
    );
  }
}

class NaviBar extends StatefulWidget {
  const NaviBar({super.key});

  @override
  State<NaviBar> createState() => _NaviBarState();
}

class _NaviBarState extends State<NaviBar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const CatalogScreen(),
    const NotificationsPage(),
    const CartPage(),
    const ProfileMainScreen(),
  ];



  @override
  Widget build(BuildContext context) {
    final bottomNavTheme = Theme.of(context).bottomNavigationBarTheme.copyWith(
      selectedIconTheme: const IconThemeData(size: 30),
      unselectedIconTheme: const IconThemeData(size: 30),
      selectedLabelStyle: const TextStyle(fontSize: 12),
      unselectedLabelStyle: const TextStyle(fontSize: 12),
    );

    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar:SizedBox(
          width: double.maxFinite,
          height: 60 + MediaQuery.of(context).padding.bottom,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:
              [

                TapBarItem(
                    selected: _selectedIndex == 0,
                    icon: AppIcons.main,
                    title: "Asosiy",
                    onTap: (){
                      _selectedIndex = 0;
                      setState(() {

                      });
                    }
                ),
                TapBarItem(
                    selected:_selectedIndex == 1,
                    icon: AppIcons.catalog,
                    title: "Katalog",
                    onTap: (){
                      _selectedIndex = 1;
                      setState(() {

                      });
                    }
                ),
                TapBarItem(
                    selected: _selectedIndex == 2,
                    icon: AppIcons.orders,
                    title: "Buyurtmalar",
                    onTap: (){
                      _selectedIndex = 2;
                      setState(() {

                      });
                    }
                ),
                TapBarItem(
                    selected: _selectedIndex == 3,
                    icon: AppIcons.bin,
                    title: "Savatcha",
                    onTap: (){
                      _selectedIndex = 3;
                      setState(() {

                      });
                    }
                ),
                TapBarItem(
                    selected: _selectedIndex == 4,
                    icon: AppIcons.profile,
                    title: "Profil",
                    onTap: (){
                      _selectedIndex = 4;
                      setState(() {

                      });
                    }
                ),
              ]
          )
      ),
    );
  }
}
