import 'package:first_page/constants/color_constants.dart';
import 'package:first_page/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterWidget extends StatelessWidget {
  const CounterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int value = 0;
    return Row(
      children: [
        Container(
          alignment: Alignment.center,
          height: 60,
          width: 60,
          color: BackgroundColor.buttonColor,
          child: Text(value.toString()),
        ),
        Spacer(),
        FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            context.read<CounterCubit>().increment();
          },
        ),
        const SizedBox(width: 8),
        FloatingActionButton(
          child: const Icon(Icons.remove),
          onPressed: () {
            context.read<CounterCubit>().decrement();
          },
        ),
      ],
    );
  }
}
