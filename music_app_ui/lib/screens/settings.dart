
import 'package:flutter/material.dart';


class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 4, 75, 133),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Settings",
                style: TextStyle(fontSize: 27, color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                  child: ElevatedButton(
                onPressed: () {},
                child: const Text("About",style: TextStyle(fontSize: 20),),
              )),
            ),
              Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                  child: ElevatedButton(
                onPressed: () {},
                child: const Text("Privacy Policy",style: TextStyle(fontSize: 20),),
              )),
            ),
              Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                  child: ElevatedButton(
                onPressed: () {},
                child: const Text("Terms and Conditions",style: TextStyle(fontSize: 20),),
              )),
            ),
              Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                  child: ElevatedButton(
                onPressed: () {},
                child: const Text("Share",style: TextStyle(fontSize: 20),),
              )),
            )
          ],
        ),
      ),
    );
  }
}
