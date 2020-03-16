class Scraper

    def fetch(url)
        response = Nokogiri::HTML(open(url))
        
        index = 0
        while index < response.css("td").size - 9 #last line is total and not a country
            name_of_country = response.css("td")[index].text.strip
            total_cases_of_country = response.css("td")[index + 1].text
            total_cases_deaths_country = response.css("td")[index + 3].text
            total_cases_recovered_country = response.css("td")[index + 5].text
            
            Country.new(name_of_country, total_cases_of_country, total_cases_deaths_country, total_cases_recovered_country)

            index += 9
        end

    end

end
