class GradientBackground extends StatelessWidget{

Color c1 = Colors.blue;
Color c2 = Colors.purple;
Widget? child;
  const GradientBackground({super.key, this.child})
  GradientBackground.amber({super.key, this.child}) :
  c1 = Colors.amber;
  c2 = Colors.deepOrange;

  GradientBackground.custom({super.key, required this.c1, required this.c2, this.child})
  @override
  Widget build(BuildContext context){
    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                c1, c2
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child:child
        )
  }
}