import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, bottom: 8),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Features",
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const Divider(
              thickness: 1.5,
              indent: 16.0,
              endIndent: 16.0,
            ),
            const ListTile(
                title: Text(
              'Home',
              key: Key('Home'),
            )),
            ...List.generate(
              100,
              (index) => ListTile(
                title: Text(
                  "Tile $index",
                  key: Key("Tile $index"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
