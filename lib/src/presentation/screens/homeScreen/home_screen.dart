part of screens;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

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
      body: PersistentTabView(
        context,
        navBarStyle: NavBarStyle.style6,
        resizeToAvoidBottomInset: true,
        backgroundColor: AppColors.backgroundColor,
        screens: [
          MainScreen(),
          const SizedBox(),
          const SizedBox(),
          const SizedBox(),
          const SizedBox(),
        ],
        items: [
          PersistentBottomNavBarItem(
            icon: const Icon(Elusive.home),
            title: ("Home"),
            activeColorPrimary: AppColors.mainSwatch,
            inactiveColorPrimary: AppColors.whiteColor.withOpacity(0.75),
            iconSize: 16,
            textStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: 10,
                ),
          ),
          PersistentBottomNavBarItem(
            icon: const Icon(Elusive.group),
            title: ("Community"),
            activeColorPrimary: AppColors.mainSwatch,
            inactiveColorPrimary: AppColors.whiteColor.withOpacity(0.75),
            iconSize: 16,
            textStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: 10,
                ),
          ),
          PersistentBottomNavBarItem(
            icon: const Icon(MfgLabs.newspaper),
            title: ("Channel"),
            activeColorPrimary: AppColors.mainSwatch,
            inactiveColorPrimary: AppColors.whiteColor.withOpacity(0.75),
            iconSize: 16,
            textStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: 10,
                ),
          ),
          PersistentBottomNavBarItem(
            icon: const Icon(PhosphorIcons.coin),
            title: ("Coin"),
            activeColorPrimary: AppColors.mainSwatch,
            inactiveColorPrimary: AppColors.whiteColor.withOpacity(0.75),
            iconSize: 16,
            textStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: 10,
                ),
          ),
          PersistentBottomNavBarItem(
            icon: const Icon(Elusive.bell),
            title: ("Notifications"),
            activeColorPrimary: AppColors.mainSwatch,
            inactiveColorPrimary: AppColors.whiteColor.withOpacity(0.75),
            iconSize: 16,
            textStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: 10,
                ),
          ),
        ],
        controller: _controller,
      ),
    );
  }
}
