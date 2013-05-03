require 'spec_helper'

describe Course do

	subject { Course.create(name: "test course") }

	its(:name) { should == "test course"}

	it "requires a name" do
		c = Course.new
		c.valid?.should be_false
	end

	it "has some students" do
		andy = Student.create(name: "Andy")
		sukumar = Student.create(name: "Sukumar")
		subject.students << andy
		subject.students << sukumar
		subject.students.count.should == 2
	end

	
	
end