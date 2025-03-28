flutter
what is flutter
is a UI framework that has packages, to write cross platform apps
flutter transforms the code into platform specific machine code
so there is a collection of tools that helps to create cross platofrom code of fluter

flutter is not a programming language, it is a framework that uses dart for programming
framework is collection of packages, functions that we use in the code

what happens when we run the flutter
code is parsed from top to bottom by the dart
after parsing the code is compiled to platform specific ios or android code
compilatin is done by the dart and the flutter tools

About Main Function

- main entry point of the application
- gets executed automatically by dart when executing the complied app in the target device

runApp()
should be called inside the main
it tells flutter what to display in the UI
provided by the flutter
it accepts widget or widget tree

Flutter Ui is created by combining and nesting the widgets

What is widget?
a UI which should be display in the screen

const

- helps dart to optimize the tuntine performance of the app
- when we mark the widget it sis sotred internally n the divice memory and improves performance by reusing it from memory
- when it is used next time it is used fomr the memory rather than creating second memory object
- avoid duplication

All widgets are objects in flutter
objects are data structures that are stored in memory

StatelessWidget

- class provided from flutter
- extending this adds data and logic required by the flutter in order to use as widget
- its state is not changed
  does not have mutable state. It's called "stateless" because, once created, it cannot change its properties.
- StatelessWidgets have a build method that defines the widget's appearance based on the input properties. This method is called whenever the widget needs to be rebuilt.
- flutter will call the build method once our widget is found inside of another widget
- and by flutter this context in the build will get meta info about the widget like where this is placed etc.
- flutter is calling this widget, and flutter takes the returned widget and makes sure that widget is reflected in the UI

why using const in hte custom class
we says that this class able to optmised and can be stored in memory, and also reused

super.key

- super.key is used to forward the key parameter (which is an object used to identify a widget) from a subclass constructor to its superclass constructor
- Keys are crucial for Flutter's state management; they ensure that the framework can identify and re-use existing widgets correctly during rebuilds, preventing unnecessary re-initialization and ensuring data persistence.
-
