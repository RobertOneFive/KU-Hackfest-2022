part of screens;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        leading: IconButton(
          icon: const Icon(FeatherIcons.menu),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(FeatherIcons.search),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
          const CircleAvatar(
            radius: 18,
            backgroundColor: Colors.white,
            backgroundImage: NetworkImage(
                'https://i.pinimg.com/550x/09/52/59/0952599f80ce061278a8b6de1bb434fd.jpg'),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: AppColors.backgroundColor,
        child: ListView(
          children: [
            ListTile(
              leading: const Icon(
                FeatherIcons.userCheck,
                color: Colors.white,
              ),
              title: Text(
                'Profile',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontWeight: FontWeight.w400, color: Colors.white),
              ),
            ),
            ListTile(
              leading: const Icon(
                FeatherIcons.calendar,
                color: Colors.white,
              ),
              title: Text(
                'Calendar',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontWeight: FontWeight.w400, color: Colors.white),
              ),
            ),
            ListTile(
              leading: const Icon(
                FeatherIcons.save,
                color: Colors.white,
              ),
              title: Text(
                'Saved',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontWeight: FontWeight.w400, color: Colors.white),
              ),
            ),
            ListTile(
              leading: const Icon(
                PhosphorIcons.timer,
                color: Colors.white,
              ),
              title: Text(
                'Tour History',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontWeight: FontWeight.w400, color: Colors.white),
              ),
            ),
            ListTile(
              leading: const Icon(
                PhosphorIcons.translate,
                color: Colors.white,
              ),
              title: Text(
                'Language',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontWeight: FontWeight.w400, color: Colors.white),
              ),
            ),
            ListTile(
              leading: const Icon(
                FeatherIcons.info,
                color: Colors.white,
              ),
              title: Text(
                'About',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontWeight: FontWeight.w400, color: Colors.white),
              ),
            ),
            ListTile(
              leading: const Icon(
                FeatherIcons.phoneCall,
                color: Colors.white,
              ),
              title: Text(
                'Support',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontWeight: FontWeight.w400, color: Colors.white),
              ),
            ),
            ListTile(
              leading: const Icon(
                FeatherIcons.activity,
                color: Colors.white,
              ),
              title: Text(
                'Activity Logs',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontWeight: FontWeight.w400, color: Colors.white),
              ),
            ),
            ListTile(
              leading: const Icon(
                FeatherIcons.settings,
                color: Colors.white,
              ),
              title: Text(
                'Settings and Privacy',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontWeight: FontWeight.w400, color: Colors.white),
              ),
            ),
            ListTile(
              leading: const Icon(
                FeatherIcons.helpCircle,
                color: Colors.white,
              ),
              title: Text(
                'Help',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontWeight: FontWeight.w400, color: Colors.white),
              ),
            ),
            ListTile(
              leading: const Icon(
                PhosphorIcons.pen,
                color: Colors.white,
              ),
              title: Text(
                'Report a Problem',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontWeight: FontWeight.w400, color: Colors.white),
              ),
            ),
            ListTile(
              leading: const Icon(
                FeatherIcons.logOut,
                color: Colors.white,
              ),
              title: Text(
                'Logout',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontWeight: FontWeight.w400, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: index,
        backgroundColor: const Color(0xff041F2B),
        onItemSelected: (value) {
          setState(() {
            index = value;
          });
        },
        items: [
          BottomNavyBarItem(
            icon: const Icon(Elusive.home),
            title: const Text("Home"),
            activeColor: Colors.white,
            inactiveColor: Colors.white.withOpacity(0.4),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(Elusive.group),
            title: const Text("Community"),
            activeColor: Colors.white,
            inactiveColor: Colors.white.withOpacity(0.4),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(MfgLabs.newspaper),
            title: const Text("Channel"),
            activeColor: Colors.white,
            inactiveColor: Colors.white.withOpacity(0.4),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(PhosphorIcons.coin),
            title: const Text("Coin"),
            activeColor: Colors.white,
            inactiveColor: Colors.white.withOpacity(0.4),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(Elusive.bell),
            title: const Text("Notifications"),
            activeColor: Colors.white,
            inactiveColor: Colors.white.withOpacity(0.4),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      body: PageView(
        children: [
          MainScreen(),
          const SizedBox(),
          const SizedBox(),
          const SizedBox(),
          const SizedBox(),
        ],
      ),
    );
  }
}
