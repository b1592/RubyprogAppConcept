require 'spec_helper'

describe Course do
  it "responds to some fields" do
    course = Course.new(title: "Ruby")
    expect(course.respond_to? :title).to be_true
  end
end
