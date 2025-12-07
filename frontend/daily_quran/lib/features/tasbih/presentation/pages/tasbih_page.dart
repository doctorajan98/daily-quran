import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Bloc imports
import 'package:daily_quran/features/tasbih/presentation/bloc/tasbih_bloc.dart';
import 'package:daily_quran/features/tasbih/presentation/bloc/tasbih_event.dart';
import 'package:daily_quran/features/tasbih/presentation/bloc/tasbih_state.dart';

class TasbihPage extends StatefulWidget {
  const TasbihPage({super.key});

  @override
  State<TasbihPage> createState() => _TasbihPageState();
}

class _TasbihPageState extends State<TasbihPage> {
  var currentTasbihCount = 0;
  var currentDzikrIndex = 0;

  var dzikrList = [
    'Subhan Allah', 
    'Al-hamdu Lillah', 
    'Allahu Akbar',
    ];

  @override
  void initState() {
    super.initState();
    currentTasbihCount = context.read<TasbihBloc>().state.count;
    currentDzikrIndex = context.read<TasbihBloc>().state.dzikrIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tasbih Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () {
                  context.read<TasbihBloc>().add(TasbihResetPressed());
                },
                icon: Icon(Icons.refresh),
              ),
            ),
            BlocBuilder<TasbihBloc, TasbihState>(
              builder: (context, state) {
                return Padding( 
                  padding: EdgeInsets.all(20),
                    child:Text(
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    dzikrList[state.dzikrIndex],
                  ),
                );
              },
            ),
            BlocBuilder<TasbihBloc, TasbihState>(
              builder: (context, state) {
                return Text(
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  'Count: ${state.count}',
                );
              },
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                context.read<TasbihBloc>().add(TasbihIncrementPressed());
              },
              style: ElevatedButton.styleFrom(
                iconSize: 24,
                backgroundColor: Theme.of(context).colorScheme.primary,
                foregroundColor: Theme.of(context).colorScheme.onPrimary,
              ),
              icon: Icon(Icons.add),
              label: Text('Increment'),
            ),
          ],
        )
      ),
    );
  }
}