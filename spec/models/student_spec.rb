require 'spec_helper'

describe Student do
  it "responds to some fields" do
    student = Student.new(first_name: "Geert", last_name: "Kapteijns", email: "info@rubyprog.nl")
    expect(student.respond_to? :email).to be_true
    expect(student.respond_to? :first_name).to be_true
    expect(student.respond_to? :last_name).to be_true
  end
end
