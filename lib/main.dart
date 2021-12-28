import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Additional information',
      theme: ThemeData(
        // primarySwatch: Colors.blue,
      ),


      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

            title: Text('Addional information'),

            centerTitle: true,

            leading: Icon(Icons.arrow_back)
        ),


//
      body: Column(
          children:[
            ListTile(
                leading: Icon(Icons.share),
                title: Text('Share Dukan App'),
                trailing: IconButton(
                    icon: Icon(Icons.arrow_forward),
                    onPressed:(){

                    }
                )
            ),

            ListTile(
                leading: Icon(Icons.language),
                title: Text('Change Language'),
                trailing: IconButton(
                    icon: Icon(Icons.arrow_forward),
                    onPressed:(){

                    }
                )
            ),


             ListTile(
              leading: Icon(Icons.whatshot_outlined),
              title: Text('WhatsApp Chat Support'),
              trailing: IconButton(
                icon: Icon(Icons.toggle_on),
                onPressed: (){

                }
              ),
              ),

            ListTile(
              leading: Icon(Icons.lock),
              title: Text('Privacy Policy'),

            ),



            ListTile(
              leading: Icon(Icons.star_border_outlined),
              title: Text('Rate Us'),
            ),

            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Sign Out'),
            ),


            Expanded(
                child: Align(
                    alignment:Alignment.bottomCenter,
                    child: Column(
                        mainAxisSize:MainAxisSize.min,
                        children: [
                          Text('Version'),
                          Text('2.4.2', style: Theme.of(context).textTheme.bodyText2
                          !.copyWith(fontWeight: FontWeight.bold))
                        ]
                    )
                )
            )
          ]
      ),

    );
  }
}
