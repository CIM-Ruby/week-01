
describe "Symbols", "not quite a string, not yet a constant" do
  
  it "should assignable" do
  
    value = :prince
    value.should eq :prince
    
  end
  
  it "should be a Symbol class" do
    
    value = :prince
    value.should be_kind_of Symbol
    
  end
  
  it "should not be the same as a string with the same name" do
    
    value = :prince
    value.should_not eq "prince"
    
  end
  
  context "when converting to s string" do
    
    it "should be equal to a string" do
      
      value = :prince
      
      value.to_s.should eq "prince"
      "#{value}".should eq "prince"
      
    end
    
  end
  
  context "when converting from a string" do
    
    it "should be a Symbol class" do
      
      value = "prince"
      value.to_sym.should be_kind_of Symbol
      
    end
    
    it "should be equal to the symbol" do
      
      value = "prince"
      expected_value = :prince
      
      value.to_sym.should eq expected_value
      
    end
    
  end
  
  
end