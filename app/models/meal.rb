require 'httparty'
class Meal
  include HTTParty
  base_uri "https://www.themealdb.com/api/json/v1/1"

  # Fetch meals by first letter
  def self.find_by_letter(letter)
    response = get("/search.php", query: { f: letter })

    if response.success?
      response.parsed_response["meals"]
    else
      []
    end
  end


  # Fetch single meal by id
  def self.find_by_id(id)
    response = get("/lookup.php", query: { i: id })

    if response.success?
      response.parsed_response["meals"]&.first
    else
      nil
    end
  end

end