import 'package:flutter/material.dart';

class AppThemes {
  static const primaryColor = Color(0xFF006400);
  static const primaryLightColor = Color(0xFFFFECDF);
  static const kPrimaryGradientColor = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFF006400),
      Color(0xFF588157),
    ],
  );
  static const dividerColor = Color.fromRGBO(117, 117, 117, 1);
  static const kprimaryBoxdecoration = BoxDecoration(
    color: Colors.green,
    shape: BoxShape.circle,
    gradient: AppThemes.kPrimaryGradientColor,
    boxShadow: [
      BoxShadow(
        offset: Offset(0, 6),
        blurRadius: 10,
        color: Color.fromARGB(255, 176, 176, 176),
      ),
    ],
  );
  static final appThemeData = ThemeData(
    primarySwatch: Colors.grey,
    backgroundColor: const Color(0xFFE5E5E5),
    dividerColor: dividerColor,
    appBarTheme: const AppBarTheme(
      color: Colors.transparent,
      //  foregroundColor: Colors.green,
      centerTitle: true,
      elevation: 0,
    ),
  );
  //Small Text
  static const bodyText1 = TextStyle(
    color: primaryColor,
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );
  static const appBarTextStyle = TextStyle(
    color: AppThemes.primaryColor,
    fontWeight: FontWeight.w800,
  );
  //Big Text
  static const bodyText2 = TextStyle(
    color: primaryColor,
    fontWeight: FontWeight.w900,
    fontSize: 15,
    letterSpacing: 0.1,
  );
  static const titleStyle = TextStyle(
    color: primaryColor,
    fontWeight: FontWeight.w900,
    fontSize: 15,
  );
  static const pricingStyle = TextStyle(
    overflow: TextOverflow.ellipsis,
    color: Colors.grey,
    fontSize: 10,
    decoration: TextDecoration.lineThrough,
  );
  static const descriptionStyle = TextStyle(
    overflow: TextOverflow.ellipsis,
    color: Colors.grey,
    fontSize: 10,
  );
}

//Default BoxDecoration
extension BoxdeCorationExtention on BoxDecoration {
  BoxDecoration get defaultBoxdecoration {
    return BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          offset: const Offset(0, 6),
          blurRadius: 10,
          color: const Color(0xFFB0B0B0).withOpacity(0.2),
        ),
      ],
      borderRadius: BorderRadius.circular(8),
    );
  }
}

//Default Image BoxDecoration
extension ImageBoxdeCorationExtention on BoxDecoration {
  BoxDecoration defaultImageBoxdeCorationExt(String str) {
    return BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          offset: const Offset(0, 6),
          blurRadius: 10,
          color: const Color(0xFFB0B0B0).withOpacity(0.2),
        ),
      ],
      borderRadius: BorderRadius.circular(8),
      image: DecorationImage(
        image: AssetImage(
          str,
        ),
        fit: BoxFit.contain,
      ),
    );
  }
}
/**
 * ************************Bottom Navigation Bar **************************
   bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.grey,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
    ),
    ***********************Floating action Button***************************
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
    ),
 */