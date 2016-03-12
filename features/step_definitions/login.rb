
Given(/^I am on the Main screen$/) do
	home = $driver.find_elements(:class, 'android.widget.EditText')
	$wait.until {home}
end
When (/^I enter product name and click on GO$/) do
	productName = $driver.find_elements(:class, 'android.widget.EditText')
	productName[0].send_keys("pen")
    system("adb shell input keyevent 66")
    sleep 10
end

Then (/^click on any product name which is displaying$/) do

		productList = $driver.find_elements(:class, 'android.widget.ImageView')
		productList[2].click
sleep 4

end
Then (/^I click on email image$/) do
sleep 10
system("adb shell input keyevent 4")
sleep 2
	usr = $driver.find_elements(:class, 'android.widget.ImageView')
	usr[3].click
end
Then (/^uncheck both  Enter your email id and defuult email id radio btns$/) do
sleep 10
	checkbox = $driver.find_elements(:class, 'android.widget.CheckBox')
	checkbox[0].click
    end
Then (/^click on submit$/) do
	btn = $driver.find_elements(:class, 'android.widget.Button')
	system("adb shell input keyevent 66")
	#btn[0].click
end
Then (/verify proper validation message is displaying$/) do
fail("expected message not displaying, its for blank input also email displaying email sent successfully")
end

Then (/^verify The Product details page displayed$/) do

sleep 5
	okbtn = $driver.find_elements(:class, 'android.widget.Button')
	buttontxt = okbtn[0].text
	text1 = $driver.find_elements(:class, 'android.widget.TextView')
	popuptxt = text1[1].text
	if buttontxt== "Ok" && popuptxt == "No products found"
	fail("after clicking on product name its displaying as no product found, expected: its hsould navigate to product available sites page")
	else
	puts "Navigated to Expected page"
	end
end

Then (/^click on binate product$/) do
pdtname = $driver.find_elements(:class, 'android.widget.TextView')
pdtname[1].click
sleep 6
end


Then (/^I enter dummyproduct name and click on GO$/) do
	productName = $driver.find_elements(:class, 'android.widget.EditText')
	productName[0].send_keys("&&&&")
    system("adb shell input keyevent 66")
 
end


Then (/^verify Products are not displaying$/) do
sleep 15
		productList = $driver.find_elements(:class, 'android.widget.ImageView')
		productList1 = productList[2].displayed?
if productList1 == true
raise("The Products are displaying for the dummy search (&&&&), Expected : it should not display any products")
else
puts "NO Prodcts are displaying for dummy search(&&&&)"
end
end


Then (/^I enter binate name and click on GO$/) do
	productName = $driver.find_elements(:class, 'android.widget.EditText')
	productName[0].send_keys("Big Nate: Welcome to My World(AMP!Comics for Kids")
    system("adb shell input keyevent 66")
    sleep 10
end


Then (/^Verify The Right Product Displaying$/) do
		productList = $driver.find_elements(:class, 'android.widget.ImageView')
		producttext = productList[2].text
		puts producttext
		if producttext.include? "Pen"
		puts "Correct Product is displaying"
		else
		raise("Correct Product is not displaying after searching the product")
		end
end