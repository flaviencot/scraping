require_relative '../lib/crypto'

    describe "scraping" do
  
      it "is not null" do
        expect(scraping).not_to be(nil)
      end
  
      it "is a hash" do
        expect(scraping.class).to eq("Hash")
      end
  
    end

  
