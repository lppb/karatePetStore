# karatePetStore - Coding Challenge

This is the API Automation exercise of the coding challenge. I chose Karate for simplicity's sake and to show that business readable scenarios  
are compatible with technical language in a simple, maintainable and cohesive package. More often than not, Page Factory and Object Repository  
pattern approaches leave huge step definition files behind for the sake of BDD. These files can grow huge and sometimes step definitions are not  
used more than a couple of times. Karate only requires a configuration file, the structured feature files, and a simple runner class. It might not be as  
business readable as traditional Gherkin, but it sure is simpler. Additionally, I've chosen karate for both API and UI Automation testing to show that  
it's a powerful, clean and simple tool to achieve both ends of the spectrum, and it's compatible with CI/CD.

PetStore API : https://petstore.swagger.io/

Dependencies:

- Java JDK 11 at minimum

- Maven

- IntelliJ IDEA, Eclipse IDE or Visual Studio Code

- Optional: for ease of use, the Gherkin plugin is recommended

Running Tests:
Clone the repo and build the project:

Run command inside project folder : ( make sure maven is installed)

    mvn clean install 

Running individual tests:

Test scenarios are included in **/src/test/java/karate/store.feature**

You can run individual scenarios there if you have the Gherkin plugin installed.
Otherwise, to run the whole suite again, run this command:

    mvn test

After the project has been built and tests have passed, you can access the test summary report in **/target/surefire-reports/karate-summary.html**
