class GameNews::Scraper 
    
      def self.scrape_kotaku
          doc = Nokogiri::HTML(open("https://kotaku.com")

          kotaku_headline = doc.search('.content-wrapper').each do |title| 
                  headline = GameNews::Headline.new
                  
                      headline.name = title.css('h6').text.strip
                      headline.author = title.css('.item-author').text.strip
            end
         end
      end