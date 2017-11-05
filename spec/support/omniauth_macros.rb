module OmniauthMacros
  def mock_auth_hash
    OmniAuth.config.mock_auth[:linkedin] = {"provider"=>"linkedin",
      "uid"=>"D5rXR-Fk2b",
      "info"=>
      {"name"=>"Test Tester",
        "email"=>"test@test.com",
        "nickname"=>"Testing",
        "first_name"=>"Test",
        "last_name"=>"Tester",
        "location"=>
        {"country"=>{"code"=>"us"}, "name"=>"Greater Denver Area"},
        "description"=>"A real person",
        "image"=>
        "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwi_-umMx6bXAhVBw2MKHazmBKgQjRwIBw&url=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3Dc_V8ajsD9Ts&psig=AOvVaw0n_KWeoU9AJNvD-odfxQA0&ust=1509941101392153",
        "urls"=>{"public_profile"=>"https://www.linkedin.com/in/test"}},
        "credentials"=>
        {"token"=>
          "111111",
          "expires_at"=>1515027840,
          "expires"=>true},
          "extra"=>
          {"raw_info"=>
            {"emailAddress"=>"test@test.com",
              "firstName"=>"Test",
              "headline"=>"A real person",
              "id"=>"1",
              "industry"=>"Computer Software",
              "lastName"=>"Tester",
              "location"=>
              {"country"=>{"code"=>"us"}, "name"=>"Greater Denver Area"},
              "pictureUrl"=>
              "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwi_-umMx6bXAhVBw2MKHazmBKgQjRwIBw&url=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3Dc_V8ajsD9Ts&psig=AOvVaw0n_KWeoU9AJNvD-odfxQA0&ust=1509941101392153",
              "publicProfileUrl"=>"https://www.linkedin.com/in/test"}}}

            end
          end
