import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ButtonNavBarWidget extends StatefulWidget {
  const ButtonNavBarWidget({
    super.key,
    this.index = 0,
  });

  final int index;

  @override
  State<ButtonNavBarWidget> createState() => _ButtonNavBarWidgetState();
}

class _ButtonNavBarWidgetState extends State<ButtonNavBarWidget> {
  late PageController _controller;
  int _selectedIndex = 0;

  @override
  void initState() {
    _controller = PageController(initialPage: widget.index);
    super.initState();
  }

  final List<Widget> _tabView = [
    const Center(child: Text('HOME')),
    const Center(child: Text('LATEST')),
    const Center(child: Text('PLUS')),
    const Center(child: Text('NOTIFICATIONS')),
    const Center(child: Text('MENU')),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final lang = AppLocalizations.of(context)!;

    return Scaffold(
      body: PageView(
        controller: _controller,
        physics: const NeverScrollableScrollPhysics(),
        onPageChanged: (v) => setState(() => _selectedIndex = v),
        children: _tabView,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (v) => setState(() {
          _selectedIndex = v;
          _controller.animateToPage(
            v,
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeIn,
          );
        }),
        type: BottomNavigationBarType.fixed,
        iconSize: 20,
        selectedLabelStyle: theme.textTheme.bodyText2?.copyWith(
          fontSize: 9,
        ),
        unselectedLabelStyle: theme.textTheme.subtitle2?.copyWith(
          fontSize: 9,
        ),
        items: [
          BottomNavigationBarItem(
            icon: const Icon(FeatherIcons.home),
            label: lang.home,
          ),
          BottomNavigationBarItem(
            icon: const Icon(FeatherIcons.clock),
            label: lang.latest,
          ),
          BottomNavigationBarItem(
            icon: const Icon(FeatherIcons.plusCircle),
            label: lang.upgrade,
          ),
          BottomNavigationBarItem(
            icon: const Icon(FeatherIcons.bell),
            label: lang.notification,
          ),
          BottomNavigationBarItem(
            icon: const Icon(FeatherIcons.menu),
            label: lang.menu,
          ),
        ],
      ),
    );
  }
}
