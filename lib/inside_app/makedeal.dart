import 'package:flutter/material.dart';

class MakeDeal extends StatefulWidget {
  @override
  _MakeDealState createState() => _MakeDealState();
}

class Category {
  int id;
  String name;

  Category(
    this.id,
    this.name,
  );

  static List<Category> getCategories() {
    return <Category>[
      Category(
        1,
        'Art',
      ),
      Category(
        2,
        'Design',
      ),
      Category(
        3,
        'Photography',
      ),
      Category(
        4,
        'Brand',
      ),
    ];
  }
}

class _MakeDealState extends State<MakeDeal> {
  final TextEditingController controller = new TextEditingController();
  String result = '';
  List<Category> _categories = Category.getCategories();
  List<DropdownMenuItem<Category>> _dropdownMenuItems;
  Category _selectedCategory;

  @override
  void initState() {
    _dropdownMenuItems = buildDropdownMenuItems(_categories);
    _selectedCategory = _dropdownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<Category>> buildDropdownMenuItems(List categories) {
    List<DropdownMenuItem<Category>> items = List();
    for (Category category in categories) {
      items.add(
        DropdownMenuItem(
          value: category,
          child: Text(category.name),
        ),
      );
    }
    return items;
  }

  onChangedDropdownMenuItem(Category selectedCategory) {
    setState(() {
      _selectedCategory = selectedCategory;
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(62),
        child: AppBar(
          centerTitle: true,
          elevation: 1,
          backgroundColor: Color.fromRGBO(244, 217, 66, 1),
          title: Text(
            'Create Deal',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 900,
          child: Column(
            children: <Widget>[
              Container(
                width: height,
                height: width,
                color: Colors.grey[300],
                child: IconButton(
                  icon: Icon(
                    Icons.add_a_photo,
                    color: Colors.white70,
                    size: 150,
                  ),
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                  right: 210,
                ),
                child: DropdownButton(
                  value: _selectedCategory,
                  items: _dropdownMenuItems,
                  onChanged: onChangedDropdownMenuItem,
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: TextField(
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  decoration: InputDecoration(
                    labelText: 'Title',
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: TextField(
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  decoration: InputDecoration(
                    labelText: 'Description',
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: TextField(
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  decoration: InputDecoration(
                    labelText: 'Deals Offerment',
                  ),
                  onSubmitted: (String str) {
                    setState(() {
                      result = result + '\n' + str;
                    });
                    controller.text = '';
                  },
                  controller: controller,
                ),
              ),
              new Text(result),
              Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                ),
                child: Container(
                  width: 200,
                  child: RaisedButton(
                    elevation: 5,
                    splashColor: Colors.purpleAccent,
                    padding: EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    color: Color.fromRGBO(244, 217, 66, 1),
                    child: Text(
                      'DONE',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
