part of dashboard;

class _BottomNavbar extends StatelessWidget {
  const _BottomNavbar(
      {required this.currentIndex, required this.onSelected, Key? key})
      : super(key: key);

  final Function(int index) onSelected;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      selectedIconTheme: const IconThemeData(
        size: 28,
      ),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home),
          tooltip: "home",
          label: "home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.cloud_upload_outlined),
          activeIcon: Icon(Icons.cloud_upload),
          label: "Upload Documents",
          tooltip: "document upload",
        ),
      ],
      onTap: (value) {
        onSelected(value);
      },
    );
  }
}
