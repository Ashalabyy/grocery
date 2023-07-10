import 'package:flutter/material.dart';
import '../../constants/app_theme.dart';

class PopularProductItem extends StatelessWidget {
  const PopularProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.all(6),
      width: deviceSize.width * 0.42,
      decoration: const BoxDecoration().defaultBoxdecoration,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      decoration:
                          const BoxDecoration().defaultImageBoxdeCorationExt(
                        'assets/images/on2.jpg',
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: const EdgeInsets.all(6),
                      height: deviceSize.width * 0.08,
                      width: deviceSize.width * 0.08,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        gradient: AppThemes.kPrimaryGradientColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Text(
              maxLines: 1,
              'Grapes',
              style: AppThemes.titleStyle,
            ),
            SizedBox(
              height: deviceSize.height * 0.01,
            ),
            const Text(
              maxLines: 2,
              'Grapes are fleshy, rounded fruits that grow in clusters made up of many fruits of greenish, yellowish or purple skin. The pulp is juicy and sweet,',
              style: AppThemes.descriptionStyle,
            ),
            SizedBox(
              height: deviceSize.height * 0.01,
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 2),
                  child: Text(
                    maxLines: 1,
                    'EGP',
                    style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.2,
                      fontSize: 10,
                      color: Color(0xFF023047),
                    ),
                  ),
                ),
                const Text(
                  '55.49',
                  style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 0.2,
                    fontSize: 13,
                    color: Color(0xFF023047),
                  ),
                ),
                SizedBox(
                  width: deviceSize.width * 0.01,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 2.0),
                  child: Text(
                    'EGP 667.95',
                    style: AppThemes.pricingStyle,
                  ),
                ),
                const Spacer(),
                Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.06,
                  decoration: BoxDecoration(
                    color: Colors.orange.withOpacity(0.2),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.favorite_border,
                    size: 15,
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
