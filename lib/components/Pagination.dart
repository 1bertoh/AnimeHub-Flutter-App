import 'package:flutter/material.dart';

class Pagination extends StatefulWidget {
  final int pages;
  Pagination({required this.pages, super.key});
  String currentPage = '1';

  @override
  State<Pagination> createState() => _PaginationState();
}

class _PaginationState extends State<Pagination> {

  @override
  Widget build(BuildContext context) {
    //Todo bloquear os botoes nos extremos da pagination
    return PaginationContainer(paginationItems: [
      DirectionButton(
          child: Icon(Icons.arrow_back_ios_rounded, color: widget.currentPage == '1' ? Colors.white30 : Colors.white),
          isActive: widget.currentPage == '1' ? false : true,
          changePage: () => changePage(direction: "previous")
      ),
      DropDownPagesList(page: 13),
      DirectionButton(
          child: Icon(Icons.arrow_forward_ios_rounded, color: widget.currentPage == widget.pages.toString() ? Colors.white30 : Colors.white),
          isActive: widget.currentPage == widget.pages.toString() ? false : true,
          changePage: () => changePage(direction: "next")
      ),
    ], width: 210);
  }

  Widget PaginationContainer({required List<Widget> paginationItems, double width = 270 }){

    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(5),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          colors: <Color>[
            Color(0xFF6a040f),
            Color(0xFF9d0208),
            // Color(0xFF42A5F5),
          ],
        ),
      ),
      height: 50,
      width: width,
      padding: EdgeInsets.zero,
      child: ButtonBar(
        // buttonHeight: 150,
          buttonPadding: EdgeInsets.symmetric(vertical: 5),
          alignment: MainAxisAlignment.center,
          // buttonTextTheme: ButtonTextTheme.primary,
          children: paginationItems
      ),
    );
  }

  Widget DirectionButton({required Widget child, bool isActive = true, required Function changePage}){
      void function(){changePage();}

    return Container(
      child: TextButton(

        style: TextButton.styleFrom(
          // tapTargetSize: MaterialTapTargetSize.padded,
          foregroundColor: Colors.white,
          shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(0)),
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 15),
          textStyle: const TextStyle(fontSize: 15),
        ),
        onPressed: isActive ? function : null,
        child: child,
      ),
    );
  }

  Widget DropDownPagesList({required int page}){
    List<String> pagesList = List.generate(widget.pages, (index) => (index+1).toString());
    // widget.currentPage = pagesList.first;

    return Container(
      // height: 55,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration( borderRadius: BorderRadius.circular(5)),
      child: DropdownButton<String>(
        value: widget.currentPage,
        elevation: 16,
        menuMaxHeight: 200,
        iconEnabledColor: Colors.white,
        dropdownColor: Colors.black87,
        style: const TextStyle(color: Colors.white),
        underline: Container(
          height: 2,
          color: Colors.white70,
        ),
        onChanged: (String? value) {
          print(value);
          // This is called when the user selects an item.
          setState(() {
            widget.currentPage = value!;
          });
        },
        items: pagesList.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }


  changePage({required String direction}){
    if(direction == "next"){
      int calc = int.parse(widget.currentPage) + 1;
      setState(() {
        widget.currentPage = calc.toString();
      });
    }
    else if(direction == "previous"){
      int calc = int.parse(widget.currentPage) - 1;
      setState(() {
        widget.currentPage = calc.toString();
      });
    }
  }
}
