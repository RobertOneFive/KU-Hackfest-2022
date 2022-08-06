part of screens;

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      endDrawer: Drawer(
        backgroundColor: AppColors.backgroundColor,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              const Text(
                'Tour Place',
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'KU Premises',
                  prefixIcon: Icon(
                    FeatherIcons.mapPin,
                    color: AppColors.whiteColor,
                  ),
                  hintStyle: const TextStyle(color: Colors.white),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Your Interest',
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                value: true,
                onChanged: (value) {},
                title: Text(
                  'Natural',
                  style: TextStyle(
                    color: AppColors.whiteColor,
                  ),
                ),
              ),
              CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                value: true,
                onChanged: (value) {},
                title: Text(
                  'Fresh Environemnt',
                  style: TextStyle(
                    color: AppColors.whiteColor,
                  ),
                ),
              ),
              CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                value: true,
                onChanged: (value) {},
                title: Text(
                  'Beauty of View',
                  style: TextStyle(
                    color: AppColors.whiteColor,
                  ),
                ),
              ),
              CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                value: true,
                onChanged: (value) {},
                title: Text(
                  'Cool',
                  style: TextStyle(
                    color: AppColors.whiteColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Type of Tour',
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                value: true,
                onChanged: (value) {},
                title: Text(
                  'Random Visit',
                  style: TextStyle(
                    color: AppColors.whiteColor,
                  ),
                ),
              ),
              CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                value: true,
                onChanged: (value) {},
                title: Text(
                  'Summer Holiday',
                  style: TextStyle(
                    color: AppColors.whiteColor,
                  ),
                ),
              ),
              CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                value: true,
                onChanged: (value) {},
                title: Text(
                  'Virtual Picinic',
                  style: TextStyle(
                    color: AppColors.whiteColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Location of Tour',
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Dhulikhel, Nepal',
                  prefixIcon: Icon(
                    FeatherIcons.mapPin,
                    color: AppColors.whiteColor,
                  ),
                  hintStyle: const TextStyle(color: Colors.white),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Explore Location on Map',
                style: TextStyle(color: Colors.white),
              ),
              Image.asset(
                'assets/images/map2.png',
                width: double.infinity,
                height: 90,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          _key.currentState!.openEndDrawer();
        },
        label: Row(
          children: const [
            Text('Explore'),
            SizedBox(width: 8),
            Icon(FeatherIcons.chevronRight),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color(0xff000000),
            Color(0xff041F2B),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
        child: SingleChildScrollView(
          child: Column(children: [
            Destinations(),
            const WhatsNewWidget(),
          ]),
        ),
      ),
    );
  }
}

class Destinations extends StatelessWidget {
  Destinations({Key? key}) : super(key: key);
  final List<Map> destinations = [
    {
      'name': 'KU Premises',
      'distance': '20 Km',
      'departureTime': '5:30 AM',
      'departureDate': '3rd Bhadra 2079',
      'price': 'NPR 120',
      'time': '3 hours',
      'busTime': '5:45 AM',
      'busDate': '3rd Bhadra 2079',
      'image':
          'https://scontent.fktm3-1.fna.fbcdn.net/v/t1.6435-9/79934977_3303265216372915_7040870880540360704_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=9ya4pve0On8AX-QZap1&_nc_ht=scontent.fktm3-1.fna&oh=00_AT-gthsbv-m0gJHmZTxyFldx8POPNzTjk4TKpivGtLLL2g&oe=63110B28',
    },
    {
      'name': 'Lami Dada',
      'distance': '10 Km',
      'departureTime': '7:30 AM',
      'departureDate': '5th Bhadra 2079',
      'price': 'NPR 70',
      'time': '1 hour',
      'busTime': '8:00 AM',
      'busDate': '5th Bhadra 2079',
      'image':
          'https://www.adventuregeotreks.com/assets/images/Trekking-in-Nepal/Everest/Lamidanda-to-Everest.jpg',
    },
    {
      'name': 'Bhaktapur Durbar Square',
      'distance': '10 Km',
      'departureTime': '7:30 AM',
      'departureDate': '5th Bhadra 2079',
      'price': 'NPR 70',
      'time': '1 hour',
      'busTime': '8:00 AM',
      'busDate': '5th Bhadra 2079',
      'image':
          'https://media-cdn.tripadvisor.com/media/attractions-splice-spp-720x480/0a/02/ee/c7.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                PhosphorIcons.mapPin,
                color: AppColors.greenColor,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                'Your Uploads',
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white,
                    ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            padding:
                const EdgeInsets.only(left: 15, top: 10, bottom: 0, right: 5),
            decoration: BoxDecoration(
              color: AppColors.whiteColor.withOpacity(0.05),
              borderRadius: BorderRadius.circular(20),
            ),
            child: SizedBox(
              height: 276,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context, index) {
                  Map data = destinations[index];
                  return DestinationCard(
                    data: data,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DestinationCard extends StatelessWidget {
  const DestinationCard({Key? key, required this.data}) : super(key: key);
  final Map data;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement<void, void>(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => const StartTourScreen(),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(right: 12),
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 112,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    image: DecorationImage(
                      image: NetworkImage(
                        data['image'],
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  height: 160,
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 10,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor.withOpacity(0.20),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Overview',
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 16,
                              color: AppColors.greenColor,
                            ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Icon(
                            PhosphorIcons.mapPin,
                            color: AppColors.whiteColor.withOpacity(0.75),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          SizedBox(
                            width: 100,
                            child: Text(
                              data['name'],
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                    fontSize: 16,
                                    color: AppColors.whiteColor,
                                  ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                PhosphorIcons.star,
                                color: AppColors.whiteColor.withOpacity(0.75),
                                size: 16,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              SizedBox(
                                child: Text(
                                  'Special',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                        fontSize: 14,
                                        color: AppColors.whiteColor,
                                      ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                PhosphorIcons.videoCamera,
                                size: 12,
                                color: AppColors.whiteColor.withOpacity(0.75),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              SizedBox(
                                child: Text(
                                  'Trailer',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                        fontSize: 14,
                                        color: AppColors.whiteColor,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                FeatherIcons.tag,
                                color: AppColors.whiteColor.withOpacity(0.75),
                                size: 16,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              SizedBox(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Total Cost',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .copyWith(
                                            fontSize: 10,
                                            color: AppColors.whiteColor,
                                          ),
                                    ),
                                    Text(
                                      'NPR 120',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .copyWith(
                                            fontSize: 14,
                                            color: AppColors.whiteColor,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                FeatherIcons.tablet,
                                size: 12,
                                color: AppColors.whiteColor.withOpacity(0.75),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              SizedBox(
                                child: Text(
                                  'Steps',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                        fontSize: 14,
                                        color: AppColors.whiteColor,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Icon(
                            PhosphorIcons.calendar,
                            color: AppColors.whiteColor.withOpacity(0.75),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Book Your tour',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                      fontSize: 10,
                                      color: AppColors.whiteColor,
                                    ),
                              ),
                              SizedBox(
                                child: Text(
                                  'Bhaktapur Holidays',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                        fontSize: 14,
                                        color: AppColors.whiteColor,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 100,
              right: 10,
              child: CircleAvatar(
                radius: 25,
                backgroundColor: AppColors.backgroundColor.withOpacity(0.8),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FeatherIcons.bookmark,
                    color: AppColors.greenColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WhatsNewWidget extends StatelessWidget {
  const WhatsNewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.whiteColor.withOpacity(0.05),
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'What\'s New?',
            style: Theme.of(context).textTheme.headline2!.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: AppColors.whiteColor,
                ),
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'New User Offer!',
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontWeight: FontWeight.w300,
                          fontSize: 14,
                          color: AppColors.whiteColor,
                        ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    width: 195,
                    child: Text(
                      'First user will get 25% discount\non fare for first 5 trips.\nLet\'s get started.',
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            color: AppColors.whiteColor,
                          ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Image.asset(
                'assets/images/map.png',
                width: 95,
                height: 90,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
