part of '../app.dart';

class _BottomNavigationBar extends StatelessWidget {
  const _BottomNavigationBar();

  @override
  Widget build(BuildContext context) {
    void onPressed(MainTabView tab) {
      context.read<MainTabCubit>().update(tab);
    }

    ThemeData themeData = Theme.of(context);

    return BlocBuilder<MainTabCubit, MainTabView>(
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                offset: const Offset(0, -1),
                blurRadius: 5,
              ),
            ],
          ),
          child: BottomAppBar(
            elevation: 1,
            padding: padding(all: 0),
            color: themeData.colorScheme.surface,
            height: 72,
            child: Row(
              children: [
                Expanded(
                  child: _BottomNavbarItem(
                    icon: Icons.home_outlined,
                    activeIcon: Icons.home,
                    onPressed: () {
                      onPressed(const MainTabView.home());
                    },
                    isActive: state == const MainTabView.home(),
                  ),
                ),
                Expanded(
                  child: _BottomNavbarItem(
                    icon: Icons.account_circle_outlined,
                    activeIcon: Icons.account_circle,
                    onPressed: () => onPressed(const MainTabView.profile()),
                    isActive: state == const MainTabView.profile(),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _BottomNavbarItem extends StatelessWidget {
  final IconData activeIcon;
  final IconData icon;
  final Function() onPressed;
  final bool isActive;
  const _BottomNavbarItem({
    required this.activeIcon,
    required this.icon,
    required this.onPressed,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return InkWell(
      onTap: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            isActive ? activeIcon : icon,
            color: !isActive
                ? themeData.colorScheme.primary
                : themeData.colorScheme.onSurface,
          ),
          isActive
              ? Container(
                  margin: const EdgeInsets.only(top: 4),
                  decoration: BoxDecoration(
                      color: themeData.colorScheme.onSurface,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(2.5))),
                  height: 5,
                  width: 5,
                )
              : const SizedBox.shrink()
        ],
      ),
    );
  }
}
