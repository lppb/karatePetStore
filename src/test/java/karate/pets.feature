Feature: Swagger Pet Store API Testing - Exercise1

# This is an example of scenario syntax simplification with the "Background" keyword
# even though the named variable 'byStatus' is only used in the first scenario
Background:
  * def byStatus = 'findByStatus'
  * def addPet = {  "id": 777, "category": {"id": 57 ,"name": "Chihuahua" },"name": "Nico", "photoUrls": ["https://puppypics.com/whois/agood/boy.png"], "tags": [{ "id": 399,"name": "hairy chihuahua"}],"status": "available" }
  * def updatePet = {  "id": 777, "category": {"id": 57 ,"name": "Chihuahua" },"name": "Nico", "photoUrls": ["https://puppypics.com/whois/agood/boy.png"], "tags": [{ "id": 399,"name": "hairy chihuahua"}],"status": "sold" }

Scenario: Get all available pets
Given url baseUrl
And path petPath + byStatus
And param status = 'available'
When method get
Then status 200


Scenario: Add a new pet to the store
Given url baseUrl
And path petPath
And request addPet
When method post
Then status 200
And match response.id == 777
And match response.name == "Nico"


Scenario: Update previously created pet's status to sold
Given url baseUrl
And path petPath
And request updatePet
When method put
And match response.id == 777
And match response.name == "Nico"
And match response.status == "sold"
Then status 200


Scenario: Delete the previously created pet
Given url baseUrl
And path petPath + '/777'
When method delete
Then status 200
And match response.message == "777"

