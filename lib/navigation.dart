import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:restaurant/src/pages/home.dart';
import 'package:restaurant/src/pages/menu.dart';
import 'package:restaurant/src/pages/more.dart';
import 'package:restaurant/src/pages/notifications.dart';
import 'package:restaurant/src/core/utils/constants.dart';
import 'package:restaurant/src/widgets/text_styles.dart' as styles;
 


class NavigationPage extends StatefulWidget {
  NavigationPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {

  int _cIndex = 0;

  void _incrementTab(index) {
    setState(() {
      _cIndex = index;
    });
  }

  Widget callPage(int _selectedBar){
    switch (_selectedBar) {
      case 0 : return HomePage();
      case 1 : return MenuPage();
      case 2 : return MorePage();
      case 3 : return NotificationsPage(); 

      break;
      default:
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: this.callPage(this._cIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _cIndex,
        type: BottomNavigationBarType.fixed , 
        iconSize: 20,
        unselectedLabelStyle: styles.ThemeText.bottomBardeselected,
        selectedLabelStyle: styles.ThemeText.bottomBar,
        selectedItemColor: Constants.pink, 
        unselectedItemColor: Colors.blueGrey.withOpacity(0.7),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Feather.book_open),
              title: new Text('')
          ),
          BottomNavigationBarItem(
              icon: Icon(Feather.octagon),
              title: new Text('')
          ),
          BottomNavigationBarItem(
              icon: Icon(Feather.bell),
              title: new Text('')
          ),
          BottomNavigationBarItem(
              icon: Icon(Feather.align_center),
              title: new Text('')
          ), 
        ],
        onTap: (index){
          _incrementTab(index);
        },
      ),
    );
  }



}
