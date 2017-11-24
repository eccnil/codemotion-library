# Codemotion Workshop

## Requirements
* Github account
* Java 8
* IntelliJ IDEA (enterprise edition recommended but community would also work)
* [For Windows only] git bash
* [Optional] TravisCI linked to your Github account
* [Optional] Codecov linked to your Github account

## Setup local environment

Go to the library-monolith directory:

`cd library-monolith`

To run:

`$ ./gradlew bootRun`

To edit with IntelliJ:

`$ ./gradlew idea`

`$ open codemotion-library.ipr`

To run tests:

`$ ./gradlew test`

To see the coverage

`$ ./gradlew check`
`$ open build/reports/jacoco/test/html/index.html`

## Exercise 1: add more tests
Look at the jacoco report to understand the parts of the code that need more coverage.

*Hint:*
Try creating a test for the method _borrow_ in the _CatalogController_

To check a possible solution for the exercise, execute the following commands:
`$ git fetch`
`$ git checkout 1_monolith_with_tests`

## Exercise 2: re-organize monolith and create clear separation of packages
The goal of this exercise is to end up with three distinct packages that express the different bounded contexts:

```
es.codemotion.madrid.library.borrow
es.codemotion.madrid.library.catalog
es.codemotion.madrid.library.rating
```

*Hint:*
Use refactoring techniques like _composing methods_ and _moving features between objects_. Don't be afraid of _organizing data_.

To check a possible solution for the exercise, execute the following command:
`$ git checkout 2_monolith_with_packages`

## Exercise 3: extract the first microservice
Choose one of the existing package and create a new microservice for the rating functionality. Use the service template already included in this repo.

Once the functionality works on its own, modify the code in the monolith to call the new service. Remember to test all the steps and remove any unused code after the changes.

*Hint:*
You should change the code in the _CatalogController_

To check a possible solution for the exercise, execute the following command:
`$ git checkout 3_monolith_and_microservice`
