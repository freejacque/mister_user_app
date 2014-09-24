module RandomUser

  def self.fetch
    response = HTTParty.get("http://api.randomuser.me/")
    User.create({
          email: response["results"][0]["user"]["email"],
          name: "#{response["results"][0]["user"]["name"]["title"]}. #{response["results"][0]["user"]["name"]["first"]} #{response["results"][0]["user"]["name"]["last"]}",
          gender: response["results"][0]["user"]["gender"],
          picture: response["results"][0]["user"]["picture"]["medium"],
          dob: response["results"][0]["user"]["dob"].to_i,
          phone: response["results"][0]["user"]["phone"],
          location: "#{response["results"][0]["user"]["location"]["street"]}, #{response["results"][0]["user"]["location"]["city"]}, #{response["results"][0]["user"]["location"]["state"]} #{response["results"][0]["user"]["location"]["zip"]}",
          password: response["results"][0]["user"]["password"]
        })
  end

end
