class CucumberGreeter
  def greet
	  "Hello Cucumber!"
	end
end

Given /^a greeter$/ do
  @greeter = CucumberGreeter.new
end

When /^I send it greet message$/ do
  @message = @greeter.greet
end

Then /^T should see "([^"]*)"$/ do |greeting|
  @message.should == greeting
end

