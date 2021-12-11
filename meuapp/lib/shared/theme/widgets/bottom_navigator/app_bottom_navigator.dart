import 'package:flutter/material.dart';

import '../../app_theme.dart';

class AppBottomNavigator extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onChanged;
  const AppBottomNavigator({
    Key? key,
    required this.currentIndex,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 26, left: 26, bottom: 14),
      child: Container(
        height: 76,
        decoration: BoxDecoration(color: AppTheme.colors.textEnabled, borderRadius: BorderRadius.circular(12)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                onChanged(0);
              },
              child: Container(
                width: 40,
                height: 40,
                child: Icon(
                  Icons.home,
                  color: currentIndex == 0 ? AppTheme.colors.textEnabled : AppTheme.colors.iconInactive,
                ),
                decoration: BoxDecoration(
                    color: currentIndex == 0 ? AppTheme.colors.primary : AppTheme.colors.background, borderRadius: BorderRadius.circular(12)),
              ),
            ),
            InkWell(
              onTap: () {
                onChanged(1);
              },
              child: Container(
                width: 40,
                height: 40,
                child: Icon(
                  Icons.add,
                  color: currentIndex == 1 ? AppTheme.colors.textEnabled : AppTheme.colors.iconInactive,
                ),
                decoration: BoxDecoration(
                    color: currentIndex == 1 ? AppTheme.colors.primary : AppTheme.colors.background, borderRadius: BorderRadius.circular(12)),
              ),
            ),
            InkWell(
              onTap: () {
                onChanged(2);
              },
              child: Container(
                width: 40,
                height: 40,
                child: Icon(
                  Icons.person_outline,
                  color: currentIndex == 2 ? AppTheme.colors.textEnabled : AppTheme.colors.iconInactive,
                ),
                decoration: BoxDecoration(
                    color: currentIndex == 2 ? AppTheme.colors.primary : AppTheme.colors.background, borderRadius: BorderRadius.circular(12)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
