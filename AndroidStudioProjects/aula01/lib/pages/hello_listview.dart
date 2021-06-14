import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Dog {
  String nome;
  String foto;

  Dog(this.nome, this.foto);
}

class HelloListview extends StatefulWidget {
  @override
  _HelloListviewState createState() => _HelloListviewState();
}

class _HelloListviewState extends State<HelloListview> {
  bool gridView = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ListView"),
          actions: [
            IconButton(
                onPressed: () {
                  print("Lista");
                  setState(() {
                    gridView = false;
                  });
                },
                icon: Icon(Icons.list)),
            IconButton(
                onPressed: () {
                  print("Grid");
                  setState(() {
                    gridView = true;
                  });
                },
                icon: Icon(Icons.grid_on))
          ],
          centerTitle: false,
        ),
        body: _body());
  }

  _body() {
    List<Dog> dogs = [
      Dog("Jack Russel", "assets/images/dog1.png"),
      Dog("Labrador", "assets/images/dog2.png"),
      Dog("Pug", "assets/images/dog3.png"),
      Dog("Rottweiler", "assets/images/dog4.png"),
      Dog("Pastor", "assets/images/dog5.png"),
    ];

    if (gridView) {
      return GridView.builder(
          itemCount: dogs.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return _itemView(dogs, index);
          });
    } else {
      return ListView.builder(
          itemCount: dogs.length,
          itemExtent: 350,
          itemBuilder: (context, index) {
            return _itemView(dogs, index);
          });
    }
  }

  _itemView(List<Dog> dogs, int index) {
    Dog dog = dogs[index];
    return Stack(
      fit: StackFit.expand,
      children: [
        _img(dog.foto),
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            margin: EdgeInsets.all(12),
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
                color: Colors.black45, borderRadius: BorderRadius.circular(20)),
            child: Text(
              dog.nome,
              style: TextStyle(
                fontSize: 26,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }

  _img(String asset) {
    return Image.asset(
      asset,
      fit: BoxFit.fill,
    );
  }
}
