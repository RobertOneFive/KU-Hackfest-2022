part of screens;

class StartTourScreen extends StatelessWidget {
  const StartTourScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: Text('StartTourScreen'),
      ),
    );
  }
}
