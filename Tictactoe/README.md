#  MVVM using SwiftUI with the Combine Framework

## How MVVM works?
    ![MVVM](https://user-images.githubusercontent.com/35185482/197337663-4c74da96-d698-4345-ae2c-d5a5913af3b4.jpg)
    
### Model
- It contains data as well as logic
- It should be UI agnostic
- It should notify to ViewModel when the changes happened in Model

### ViewModel
- It should binds View with Model and represent as a mediator
- It should publish the changes happened in Model
- Also, It should process the intent which is initiated from View as a reply
- Also, It should modify the changes in the model as a reply

### View
- It is a graphical presentation of model data
- It observes the publications and get the data and rebuild user interface
- It should call function as a intent
- It should be a stateless
- It is declarative as well as reactive

## How Combine framwork helps?

1. `ObservableObject`
- It combined type alias for an object with a publisher that notifies before object has changes
2. `@Published`
- It is a combine framwork property for an object which store the data (use for Model)
3. `objectWillChanges.send()`
- `objectWillChanges` is a publisher that notify befor the object has changed.
- `send()` is a method to broadcase changes to all subscriber(s).
4. `@ObservedObject`
- It is a property wraper type for subscriber to an observable object (which is ViewModel in our case)
- It invalidat view whenever observable object have changes.

## Objective:
- Learning of SwiftUI
- MVVM architecture fundamentals using SwiftUI 
- Automatically bind the flow from `Model` to `View` and vice-a-versa using Combine framework

Happy Learning!
