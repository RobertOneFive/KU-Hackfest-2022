part of screens;

class StartTourScreen extends StatefulWidget {
  const StartTourScreen({Key? key}) : super(key: key);

  @override
  State<StartTourScreen> createState() => _StartTourScreenState();
}

class _StartTourScreenState extends State<StartTourScreen> {
  final FocusNode destinationFocusNode = FocusNode();

  final FocusNode fromFocusNode = FocusNode();

  final TextEditingController destinationController = TextEditingController();

  final TextEditingController fromController = TextEditingController();

  @override
  void initState() {
    super.initState();
    destinationController.text = 'KU Premises';
    fromController.text = 'Dhulikhel, Nepal';
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color(0xff000000),
              Color(0xff041F2B),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: AppColors.whiteColor,
                      ),
                      onPressed: () => Navigator.pop(context),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(
                                FeatherIcons.mapPin,
                                size: 18,
                                color: AppColors.whiteColor,
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                child: TextFormField(
                                  controller: destinationController,
                                  focusNode: destinationFocusNode,
                                  textInputAction: TextInputAction.next,
                                  style: const TextStyle(
                                    color: Colors.white,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: 'Where From',
                                    hintStyle: Theme.of(context)
                                        .textTheme
                                        .bodyText1
                                        ?.copyWith(color: AppColors.whiteColor)
                                        .copyWith(
                                          color:
                                              AppColors.whiteColor.withOpacity(
                                            0.5,
                                          ),
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    width: 2.0,
                                    color: AppColors.whiteColor,
                                  ),
                                ),
                                child: const Icon(
                                  Icons.circle,
                                  size: 14,
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                child: TextFormField(
                                  controller: fromController,
                                  focusNode: fromFocusNode,
                                  style: const TextStyle(
                                    color: Colors.white,
                                  ),
                                  textInputAction: TextInputAction.next,
                                  decoration: InputDecoration(
                                    hintText: 'Where To',
                                    hintStyle: Theme.of(context)
                                        .textTheme
                                        .bodyText1
                                        ?.copyWith(color: AppColors.whiteColor)
                                        .copyWith(
                                          color:
                                              AppColors.whiteColor.withOpacity(
                                            0.5,
                                          ),
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    PopupMenuButton<String>(
                      onSelected: (value) {},
                      itemBuilder: (BuildContext context) {
                        return {
                          'Map Info',
                          'Search along route',
                          'Share your trip',
                          'Add to Homepage'
                        }.map((String choice) {
                          return PopupMenuItem<String>(
                            value: choice,
                            child: Text(choice),
                          );
                        }).toList();
                      },
                    ),
                  ],
                ),
              ),
              Destinations(),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Share Anything',
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        hintText: 'What\'s on your mind?',
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white.withOpacity(0.5)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white.withOpacity(0.5)),
                        ),
                        hintStyle: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.copyWith(color: AppColors.whiteColor)
                            .copyWith(
                              color: AppColors.whiteColor.withOpacity(
                                0.5,
                              ),
                            ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const WorldScreen(),
                              ));
                        },
                        child: const Text(
                          'Start Tour',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
