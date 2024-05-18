import 'package:flutter/material.dart';
import 'package:roll_dice_app/dice_roller.dart';

const startAlignment = Alignment.topCenter;
/* var startAlignment = Alignment.topLeft; */
/* Alignment? startAlignment; */
/* this means it could take null or value but in this case this souldn't be take null at the bottom it needs to take a value(type of alignment) */
/* var endAlignmnet = Alignment.bottomRight; */
const endAlignmnet = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  /* GradientContainer({key}): super(key: key); */
  const GradientContainer(this.color1, this.color2,{super.key,});

  const GradientContainer.orange({super.key})
      : color1 = Colors.red,
        color2 = Colors.orange;

  final Color color1;
  final Color color2;
  

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignmnet,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}

// class GradientContainer extends StatelessWidget {
//   /* GradientContainer({key}): super(key: key); */
//   const GradientContainer({super.key, required this.color});
//   final List<Color> color;
//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: color,
//           begin: startAlignment,
//           end: endAlignmnet,
//         ),
//       ),
//       child: const Center(
//         child: MyStyledText('Yo this is what I m talking about'),
//       ),
//     );
//   }
// }


