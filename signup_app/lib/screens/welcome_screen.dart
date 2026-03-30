import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WelcomeScreen extends StatelessWidget {
	const WelcomeScreen({super.key});

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: const Text('Welcome'),
				backgroundColor: Colors.purple,
			),
			body: Center(
				child: Column(
					mainAxisAlignment: MainAxisAlignment.center,
					children: [
						AnimatedTextKit(
							animatedTexts: [
								TypewriterAnimatedText(
									'Welcome to our Signup App!',
									textStyle: const TextStyle(
										fontSize: 28,
										fontWeight: FontWeight.bold,
										color: Colors.purple,
									),
									speed: const Duration(milliseconds: 100),
								),
							],
							totalRepeatCount: 1,
							pause: const Duration(milliseconds: 500),
						),
						const SizedBox(height: 20),
						DefaultTextStyle(
							style: const TextStyle(
								fontSize: 18,
								color: Colors.black,
							),
							child: AnimatedTextKit(
								animatedTexts: [
									FadeAnimatedText('Get started today'),
									FadeAnimatedText('Create your account'),
									FadeAnimatedText('Join us now'),
								],
								repeatForever: true,
								pause: const Duration(milliseconds: 1000),
							),
						),
						const SizedBox(height: 50),
						ElevatedButton(
							onPressed: () {
								Navigator.pushNamed(context, '/signup');
							},
							style: ElevatedButton.styleFrom(
								backgroundColor: Colors.purple,
								padding: const EdgeInsets.symmetric(
									horizontal: 40,
									vertical: 12,
								),
							),
							child: const Text(
								'Go to Signup',
								style: TextStyle(fontSize: 18),
							),
						),
					],
				),
			),
		);
	}
}
