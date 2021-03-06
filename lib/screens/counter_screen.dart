import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  	const CounterScreen( { Key? key } ) : super( key: key );

	@override
	State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
	int counter = 0;
	
	void increase() {
		counter++;
		setState(() {});
	}

	void decrease() {
		counter++;
		setState(() {});
	}

	void reset() {
		counter++;
		setState(() {});
	}

	@override
	Widget build(BuildContext context) {

		const fontSize30 = TextStyle(fontSize: 30.0);
		
		return Scaffold(
			appBar: AppBar(
				title: const Text("Counter Screen"),
				elevation: 0.0,
			),
			body: Center(
				child: Column(
					mainAxisAlignment: MainAxisAlignment.center,
					children: <Widget> [
						const Text('Clicks number', style: fontSize30 ),
						Text('$counter', style: fontSize30 )
					],
				),
			),
			floatingActionButton: CustomFloatingActionButtons( 
				increaseFunction: increase,
				decreaseFunction: decrease,
				resetFunction: reset,
			),
			floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
		);
	}
}

class CustomFloatingActionButtons extends StatelessWidget {

	final Function increaseFunction;
	final Function decreaseFunction;
	final Function resetFunction;

	const CustomFloatingActionButtons({
		Key? key, 
		required this.increaseFunction, 
		required this.decreaseFunction, 
		required this.resetFunction,
	}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return Row(
			mainAxisAlignment: MainAxisAlignment.spaceEvenly,
			children: [
				FloatingActionButton(
					child: Icon( Icons.add ),
					onPressed: () => increaseFunction(),
				),
				//const SizedBox( width: 20),
				FloatingActionButton(
					child: Icon( Icons.exposure_zero_outlined ),
					onPressed: () => resetFunction,
				),
				//const SizedBox( width: 20),
				FloatingActionButton(
					child: Icon( Icons.exposure_minus_1_outlined ),
					onPressed: () => decreaseFunction,
				),
			],
		);
	}
}