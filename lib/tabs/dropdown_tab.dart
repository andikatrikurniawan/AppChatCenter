import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';

class DropdownTab extends StatelessWidget {
  const DropdownTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: DropdownSearch<(IconData, String)>(
        selectedItem: (Icons.person, 'Your Profile'),
        compareFn: (item1, item2) => item1.$1 == item2.$1,
        items: (f, cs) => [
      (Icons.person, 'Your Profile'),
      (Icons.settings, 'Setting'),
      (Icons.lock_open_rounded, 'Change Password'),
      (Icons.power_settings_new_rounded, 'Logout'),
        ],
      decoratorProps: DropDownDecoratorProps(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 6),
        filled: true,
        fillColor: Color(0xFF1eb98f),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(8),
        ),
        ),
      ),
        dropdownBuilder: (context, selectedItem) {
      return ListTile(
        leading: Icon(selectedItem!.$1, color: Colors.white),
        title: Text(
          selectedItem.$2,
          style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      );
        },
        popupProps: PopupProps.menu(
      itemBuilder: (context, item, isDisabled, isSelected) {
        return ListTile(
          contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          leading: Icon(item.$1, color: Colors.white),
          title: Text(
            item.$2,
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        );
      },
      fit: FlexFit.loose,
      menuProps: MenuProps(
        backgroundColor: Colors.transparent,
        elevation: 0,
        margin: EdgeInsets.only(top: 16),
      ),
      containerBuilder: (ctx, popupWidget) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 12),
            ),
            Flexible(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF1eb98f),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: popupWidget,
              ),
            ),
          ],
        );
      },
        ),
      ),
        ),
      ),
      ],
    );
  }
}