# Unit 1 Assessment: Pursuit Farms
---

![Gif](https://github.com/joinpursuit/ios-unit-1-open-book-assessment/blob/master/shopping_cart_command_line_app.gif)

### Objective
- To use a command line application to create an interactive experience
- To use your full set of skills and tools from Unit 1 to build an application

### Documentation

1. Apple's [Swift Language Reference](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language)


### 1. Introduction

You will create a command line application to simulate the experience of checking out at a supermarket, Pursuit Farms. The application will take multiple forms of information as input: payment method, item selection, and item quantity.

Here are some objects you will need in your application:

```swift
struct Cart {
  var items: [Item]
  // Add methods below as needed
}

struct Item {
  //Add the properties you need the item to have
}

enum PaymentType: Int {
  //Add cases here
}
```

You will need to get user input from the command line.  The following method will return an Integer that the user enters:

```swift
func getIntFromUser() -> Int {
    print("Enter your number here: ", terminator: "")
    while true {
        let input = readLine()
        if let input = input,
            let userNum = Int(input) {
            return userNum
        }
    }
}
```

This assessment is **open book**; you can use your notes, the guidance of classroom staff, Apple Documentation (linked above), and other sources. You may **not** work with other fellows, nor will you be allowed to simply copy code from the internet.

Your code should be your own! Be prepared to talk through each portion of your code. Add comments to help yourself and reviewers.

### 2. Payment Method

When a customer starts their transaction, they will tell the application what form of payment they will be using. The two options (or **cases** ;) ) are `cash` and `credit`.

Later, you will use this payment selection to determine how much the user pays at checkout. Cash payments receive a 4% discount at Pursuit Farms.

### 3. Fill Your Cart

You can store a "menu" or "catalog" of the items and prices in the global scope.  This will be a different piece of data than your shopping cart.

You should prompt the user to tell you what items they are buying. You should present a prompt with multiple items to select. You can create something similar to the below (but feel free to come up with your own specifics):

```
Please select your item:
1) Apples ($1.99)
2) Bananas ($1.31)
3) Cantaloupe ($3.60)
4) Dog Food ($12.55)
5) Eggs ($5.69)
```

## 4. Checkout

Allow the user to check out by entering "-1". Display to them the total cost of their purchases. If there is a discount applied to the purchase, be sure to tell them the amount they saved.


### 5. Requirements

| Criteria | Completion |
| :------: | :--------: |
|Create a Command Line App | Application runs, and takes inputs|
|Handle Input|Application handles correct and incorrect input in an intuitive way and without crashing|
|Payment Method| Application takes the user's payment method and stores that information in an object|
|Shopping Cart|Application creates the user's cart, with item selections and quantities of those items|
|Checkout|Application tells user the total cost of their shopping cart, and applies and informs of discount|
|Objects|Functionality is encapsulated in instances of objects|
|Proper Scope|Functionality is not in the global scope|
|General Coding Logic|Setup and logic are easy to follow and make sense|


## 6. Bonuses:

- Add error handling so that the user can't give an invalid number
- Prompt the user for how many items they want after selecting an item from the list
- Add an option in the first prompt of **Section 3** that allows a user to enter an item name that is not listed. The application should then perform a "Price Check," where it picks a random number between 1.0 and 10.0 to list as the price. The user can then enter the quantity.
(Hint: Look up how to get a random number in a range of Doubles)
- Add an extra input the user can provide by typing in "show cart" that shows all the items in their cart.  Then, only show the cart when they ask for it.
- Add an extra input the user can provide by typing in "show all items" that shows all the grocery items.  Then, only show the grocery items when they ask for it.
- Only let the user checkout if they have at least one item in their cart
- Rework the prompts to be Strings instead of integers
