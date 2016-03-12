Before do |scenario|
    $s = scenario.name
    $completeScenario = scenario.name
	if $s.include? ","
		@x = $s.split(",")
		$s = @x[0]
	end
	puts $s
  $driver ||= start_app
sleep 5  
end

After do |scenario|
if scenario.failed?
@var = "_#{Time.now.strftime('%Y_%m_%d_%H_%M_%S')}"
 png = $driver.screenshot_as(:png)
 path = $s.to_s + @var.to_s + '.png' 
 File.open(path, 'wb') {|io| io.write(png)}
 embed(path, 'image/png')
	
end
  $driver.quit
  $driver=nil
end
AfterStep do |scenario|
  @var = "_#{Time.now.strftime('%Y_%m_%d_%H_%M_%S')}"
 png = $driver.screenshot_as(:png)
 path = $s.to_s + @var.to_s + '.png' 
 File.open(path, 'wb') {|io| io.write(png)}
 embed(path, 'image/png')
end
