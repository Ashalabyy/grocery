import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Container(
      width: deviceSize.width * 0.8,
      height: deviceSize.height * 0.18,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.red.withOpacity(0.1),
            offset: const Offset(0, 5),
            blurRadius: 6,
          )
        ],
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: [
          Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: deviceSize.width * 0.8,
                  height: deviceSize.height * 0.18,
                  decoration: BoxDecoration(
                    color: const Color(0xFF40916c).withOpacity(0.9),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Row(
                  children: [
                    SizedBox(
                      width: deviceSize.width * 0.5,
                      height: deviceSize.height * 0.18,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Save on all products'.toUpperCase(),
                              style: const TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                  fontSize: 14),
                            ),
                            const Text(
                              '40 %',
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.yellow,
                                  fontSize: 50),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: deviceSize.width * 0.3,
                      height: deviceSize.height * 0.18,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/choise2.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
