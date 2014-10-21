require "spec_helper"

describe Namely::Client do
  describe "#profiles" do
    it "successfully requests a list of user profiles" do
      VCR.use_cassette("get_profiles") do
        expect(client.profiles["meta"]["status"]).to eq 200
      end
    end
  end

  def client
    Namely::Client.new(
      access_token: TEST_ACCESS_TOKEN,
      site_name: TEST_SITE_NAME
    )
  end
end
