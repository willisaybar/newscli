class Cli

        def call
                puts "Hello! I\'m here to keep you updated on the latest Coronavirus news."
                puts "I will display information in your country"
                puts "Make sure to wash your hands!"
                puts "If you would like to see the list of country names at anytime, type \"list\""
                puts "When you are finished, you can type \"Exit\""
                #Welcome mesage
                #call menu
                menu
                #Country.display
                
        end

        def menu
                #instructions
                puts "What Country would you like more information on?" 
                #receive command from user
                input = gets.strip.downcase
                #do request
                while input != "exit"
                        my_found_country = Country.all.find{|country| country.name.downcase == input} # return Country instantiation
                        #country found
                        if my_found_country != nil
                                my_found_country.display_information
                        #country not found
                        elsif my_found_country == nil && input != "exit"
                                puts "I\'m sorry this country does not exist, please try again."    
                        end

                        #displays all country names
                        if input == "list"
                                Country.display
                        end
                
                        input = gets.strip.downcase
                end
        end


        
end