module Namely
  class Profile < RestfulModel
    def self.endpoint
      "profiles"
    end

    def self.resource_name
      "profiles"
    end
  end
end
