import 'dart:html';

void main() {
  // Get references to DOM elements
  final inputField = querySelector('#item-input') as InputElement;
  final addButton = querySelector('#add-button') as ButtonElement;
  final clearButton = querySelector('#clear-button') as ButtonElement;
  final itemList = querySelector('#item-list') as UListElement;

  // Event listener to add items
  addButton.onClick.listen((_) {
    final itemText = inputField.value?.trim();
    if (itemText != null && itemText.isNotEmpty) {
      final listItem = LIElement()..text = itemText;
      itemList.children.add(listItem);
      inputField.value = ''; // Clear the input field
    }
  });

  // Event listener to clear all items
  clearButton.onClick.listen((_) {
    itemList.children.clear();
  });
}
