require 'spec_helper'

describe teacher do 

	it "should have a name" do
		s = Teacher.new(name: "test teacher")
		s.name.should == "test teacher"
		s.valid?.should be_true
	end
	
end