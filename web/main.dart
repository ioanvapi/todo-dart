import 'dart:html';

void main() {
  // Get references to DOM elements
  final inputField = querySelector('#item-input') as InputElement;
  final addButton = querySelector('#add-button') as ButtonElement;
  final clearButton = querySelector('#clear-button') as ButtonElement;
  final itemList = querySelector('#item-list') as UListElement;

  // Function to create a new list item with a delete button
  LIElement createListItem(String text) {
    final listItem = LIElement();

    // Create a span to hold the to-do text
    final itemText = SpanElement()..text = text;

    // Create the delete button
    final deleteButton = ButtonElement()
      ..text = 'Delete'
      ..className = 'delete-btn';

    // Delete button event listener
    deleteButton.onClick.listen((_) {
      listItem.remove(); // Remove the specific list item
    });

    // Append the text and delete button to the list item
    listItem.append(itemText);
    listItem.append(deleteButton);

    return listItem;
  }

  // Event listener to add items
  addButton.onClick.listen((_) {
    final itemText = inputField.value?.trim();
    if (itemText != null && itemText.isNotEmpty) {
      final listItem = createListItem(itemText);
      itemList.children.add(listItem);
      inputField.value = ''; // Clear the input field
    }
  });

  // Event listener to clear all items
  clearButton.onClick.listen((_) {
    itemList.children.clear();
  });
}
