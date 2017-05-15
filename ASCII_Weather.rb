require 'forecast_io'
require 'geocoder'
require_relative 'API_Key'

# Add your own API key to API_Key.rb in the same dir
# Get one here: https://developer.forecast.io/
# ForecastIO.api_key = '<your API key>'

prompt = "> "

def display_forecast
# Print the forecast
    puts "Current weather: " + @forecast['currently']['summary']
    puts
    puts "Later today: " + @forecast['minutely']['summary']
    puts
    puts "Weekly summary: " + @forecast['daily']['summary']
    puts
    puts "Powered by Forecast.io"
    puts
end

# Get zip code from the user
puts "Enter your zip code:"
print prompt
zip_code = gets.chomp()

# Zip code validation
until zip_code =~ /^\d{5}(-\d{4})?$/

  puts "Zip code should be in the format of: 12345 or 12345-1234"
  puts "Enter your zip code:"
  print prompt
  zip_code = gets.chomp()
end

# Get latitude and longitude from zip code
results = Geocoder.search(zip_code)

lat = results.first.latitude
lng = results.first.longitude

# Get forecast from forecast.io api
@forecast = ForecastIO.forecast(lat, lng)
summary = @forecast['currently']['summary']



case summary
  when "Partly Cloudy"
    # Sweet ASCII art
    puts <<PARAGRAPH
    
    
              .
            \\ | /
          '-.;;;_' _
          -==;;( `   )_
            .-(    )    `)
           (_   (_ .  _) _)


PARAGRAPH
# Print the forecast
display_forecast

  when "Mostly Cloudy"
    # Sweet ASCII art
    puts <<PARAGRAPH
    
    
                _  _
              ( `   )_
             (    )    `)
           (_   (_ .  _) _)


PARAGRAPH
# Print the forecast
display_forecast


  when "Cloudy"
    # Sweet ASCII art
    puts <<PARAGRAPH
    
    
                _  _
              ( `   )_
             (    )    `)
           (_   (_ .  _) _)


PARAGRAPH
# Print the forecast
display_forecast

  when "Overcast"
    # Sweet ASCII art
    puts <<PARAGRAPH
    
    
                _  _
              ( `   )_
             (    )    `)
           (_   (_ .  _) _)


PARAGRAPH
# Print the forecast
display_forecast


  when "Sunny"
    # Sweet ASCII art
    puts <<PARAGRAPH
    
    
         .
       \\ | /
     '-.;;;.-'
    -==;;;;;==-
     .-';;;'-.
       / | \\
         '

PARAGRAPH
# Print the forecast
display_forecast

  when "Clear"
    # Sweet ASCII art
    puts <<PARAGRAPH
    
    
         .
       \\ | /
     '-.;;;.-'
    -==;;;;;==-
     .-';;;'-.
       / | \\
         '

PARAGRAPH
# Print the forecast
display_forecast

  when "Rain"
    # Sweet ASCII art
    puts <<PARAGRAPH
    
    
                _  _
              ( `   )_
             (    )    `)
           (_   (_ .  _) _)
            /////////////
           /////////////
          /////////////


PARAGRAPH
# Print the forecast
display_forecast

  when "Heavy Rain"
    # Sweet ASCII art
    puts <<PARAGRAPH
    
    
                _  _
              ( `   )_
             (    )    `)
           (_   (_ .  _) _)
            /////////////
           /////////////
          /////////////


PARAGRAPH
# Print the forecast
display_forecast


  when "Drizzle"
    # Sweet ASCII art
    puts <<PARAGRAPH
    
    
                _  _
              ( `   )_
             (    )    `)
           (_   (_ .  _) _)
              |  |  |  |
             |  |  |  |  


PARAGRAPH
# Print the forecast
display_forecast


  when "Light Rain"
    # Sweet ASCII art
    puts <<PARAGRAPH
    
    
                _  _
              ( `   )_
             (    )    `)
           (_   (_ .  _) _)
            /  /  /  /  /
           /  /  /  /  /


PARAGRAPH
# Print the forecast
display_forecast

  when "Drizzle and Breezy"
    # Sweet ASCII art
    puts <<PARAGRAPH
    
    
                _  _
 ~~~~          ( `   )_
  ~~~~~       (    )    `)
 ~~~~~     (_   (_ .  _) _)
            /  /  /  /  /
           /  /  /  /  /


PARAGRAPH
# Print the forecast
display_forecast


  when "Thunderstorm"
    # Sweet ASCII art
    puts <<PARAGRAPH
    
    
                _  _
              ( `   )_
             (    )    `)
           (_   (_ .  _) _)
              '--\ `\--`
                 _\ _\
                 `\ \
                  _\_\
                  `\\
                    \\
                     `\


PARAGRAPH
# Print the forecast
display_forecast


  when "Snowing"
    # Sweet ASCII art
    puts <<PARAGRAPH
    
    
                _  _
              ( `   )_
             (    )    `)
           (_   (_ .  _) _)
            *    *     *
           *   *    *   *
             *  *    *


PARAGRAPH
# Print the forecast
display_forecast


  else
    # Sweet ASCII art
    puts <<PARAGRAPH
    
    
                _  _
              ( `   )_
             (    )    `)
           (_   (_ .  _) _)


PARAGRAPH
# Print the forecast
display_forecast

end
