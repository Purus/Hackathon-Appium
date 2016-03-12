def start_app
  def capabilities
      {
          "platformName" => "Android",
          "browserName" => "",
          "platformVersion" => "4.2",
		  "deviceName" => "HT295W301224",
          "app" => "D:/hackathon/Mobile/Approprice/Approprice_1.1.apk",
          "app-package" => "com.Approprice.Approprice",
          "app-activity" => "org.ninehertzindia.approprice.SplashActivity"
      }
    end
    
    http_client = ::Selenium::WebDriver::Remote::Http::Default.new
    http_client.timeout = 90
   
    
    Selenium::WebDriver.for(
        :remote,
        :desired_capabilities => capabilities,
        :url => 'http://127.0.0.1:4723/wd/hub',
        :http_client => http_client
    )
end