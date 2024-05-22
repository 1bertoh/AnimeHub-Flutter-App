
import 'package:flutter/material.dart';

class SearchField extends StatefulWidget {
  const SearchField({super.key});

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: TextFormField(
        style: const TextStyle(fontSize: 20, color: Colors.black87),
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
          suffixIcon: Icon(Icons.search, size: 35, weight: 10),
          iconColor: Colors.red,
          suffixIconColor: Colors.red,
          fillColor: Colors.white,
          filled: true,
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.black54
              ),
              borderRadius: BorderRadius.all(Radius.circular(30))
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
          hintText: "Pesquisar",
          hintStyle: TextStyle(color: Color.fromARGB(150, 43, 45, 66)),

        ),
        cursorColor: Colors.red,
      ),
    );
  }
}
