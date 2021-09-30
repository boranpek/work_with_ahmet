import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/counter_page2.dart';
import 'counter_cubit.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bloc Counter App')),
      body: BlocBuilder<CounterCubit, int>(
        builder: (context, count) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondPage()),
                    );
                },
                child: Text("Sayaç Değerini Görüntüle"),
              ),
              
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                   FloatingActionButton(
                    child: const Icon(Icons.remove),
                    onPressed: () => context.read<CounterCubit>().decrement(),
                  ),
                  SizedBox(width: 10),
                  FloatingActionButton(
                    child: const Icon(Icons.add),
                    onPressed: () => context.read<CounterCubit>().increment(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}