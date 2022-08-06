part of screens;

class WorldScreen extends StatelessWidget {
  const WorldScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
      ),
      body: const Center(child: Text('World Screen')),
    );
  }
}
