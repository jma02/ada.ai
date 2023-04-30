class MCQ {
  String problem;
  List<String> options;
  int correctIndex;
  MCQ(this.problem, this.options, this.correctIndex);
}

List<MCQ> problems108 = [
  MCQ(
      "What is input?",
      [
        "A function that prints information.",
        "A recursive function that prints the date.",
        "A function that lets you get information from the user.",
        "A chewy snack."
      ],
      2),
  MCQ(
      "What is an integer?",
      [
        "A whole number.",
        "A word with at least 3 letters.",
        "A function that lets you get information from the user.",
        "Cream Cheese."
      ],
      0),
  MCQ(
      "What is the console?",
      [
        "A series of concrete instructions to be carried out by a computer.",
        "A function which gives you the address of users.",
        "A function that lets you get information from the user.",
        "A text-based interface used for interacting with a computer program."
      ],
      3),
  MCQ(
      "What is a program?",
      [
        "A series of concrete instructions to be carried out by a computer.",
        "A pie baked with slugs.",
        "An omelette made without mushrooms.",
        "An square which contains no more than three hooves."
      ],
      0),
  MCQ(
      "What are floats in Computer Science?",
      [
        "The magnetic impulse which writes data to a hard drive.",
        "A data type used to represent numbers with fractional components.",
        "A camera stand.",
        "A hoofed mammal."
      ],
      1),
  MCQ("name is a string which holds 'Hermione'. Predict the output of the following code: print(name[4:7])",
      ["ione", "'ione'", "ion", "hermoine"], 2),
  MCQ("What is the value stored in 'my_var' after the following code is executed: my_var = [1,2,3] + 4",
      ["An error occurs.", "10", "[1,2,3,4]", "[1,2,3]"], 0),
  MCQ("What is an example of primitive data",
      ["An integer.", "A boolean", "A character", "All of the above."], 3),
  MCQ(
      "What is required in order to implement a recursive function?",
      [
        "A base case.",
        "The function calling itself.",
        "A function progressing towards a base case.",
        "All of the above."
      ],
      3),
  MCQ(
      "What is the difference between a recursive function and an iterative function?",
      [
        "A recursive function typically uses loops, while an iterative function calls itself.",
        "An iterative function will always bark at the mailman.",
        "A recursive function calls itself, while an iterative function typically uses loops.",
        "All of the above."
      ],
      2),
  MCQ(
      "What is a string?",
      [
        "A mutable data type.",
        "A function which calls another function.",
        "A sequence of characters enclosed in single/double quotes.",
        "An block of cheese with holes."
      ],
      2),
  MCQ("Which is an immutable data type?",
      ["A string.", "An integer.", "A float.", "A function."], 0),
];
