Feature: greeter says hello

  In order to start learning RSpec and Cucumber
	As a reader of The RSpec Book
	I want a greeter to say Hello

	Scenario: greeter says hello
	  Given a greeter
		When I send it greet message
		Then T should see "Hello Cucumber!"
