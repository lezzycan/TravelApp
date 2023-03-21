## TravelApp.mobile# TravelApp.mobile

## Overview

  This is the **TravelApp** Android app project repository, written with pure [Flutter](https://flutter.dev/).

## Project Description

  TravelApp-Mobile is a mobile application that provides a service where its users can buy every material they need online instead of working down the shop.

## Hosted App Link

   _N.B Once there is a stable build, it would be hosted on appetize and the link would be appended_
   [Here]()

## Code Style

  **i. Naming Convention:**

|Naming Convention|Effective Style|Example|
|-----------------|---------------|-------|
|Classes, enum types,typedefs,and type parameters,etensions|PascalCase|An example is HomeScreen|
|Libraries, packages, directories, and source files, import prefixes|snake_case|An example is home_screen|
|Class members, top-level definitions, variables, parameters, and named parameters, constants|camelCase|An example is verifiedUser|

  **ii. Style Rule**

- Always declare return types in your methods.
- Put required named parameters first.
- Always require non-null named parameters (required).
- All reusable components. should start with Afm meaning (**Ecm**) to ensure code uniformity. e.g
Trv.bigSpacing(),
- Use absolute imports for external packages and use relative imports for files in project.[Here's Why](https://dart-lang.github.io/linter/lints/prefer_relative_imports.html)
- Indent your code where appropriate `(e.g Use two-space indentation.)`
       Click [Here](https://medium.com/@chukwuemeka.ezeokwelume/2-vs-4-spaces-or-tabs-for-writing-code-e82da3aa5b8d) to know more

### Cloning Repo

- Clone the project.  
- Click on the "Code" button on the Repo page.
- Copy the URL for the forked Repo "https://github.com/your-github-username/zc_app.git"
- Open your Code Editor and  run `git clone` "https://github.com/your-github-username/zc_app.git"
  
## Project Architecture and State Management

This project will follow a [Bloc pattern](https://www.geeksforgeeks.org/mvvm-model-view-viewmodel-architecture-pattern-in-android/) with a slight variation due to the peculiarities of the Flutter Framework. This project will follow the [Block  Archiecture by Felix Angelov], for flutter. Its pattern follows the concept of Bloc architectural pattern just without [Two way binding](https://developer.android.com/topic/libraries/data-binding/two-way). The state management to be used with this project is provider, Mainly because it is the recommended state management to be used with **Bloc Architecture**

