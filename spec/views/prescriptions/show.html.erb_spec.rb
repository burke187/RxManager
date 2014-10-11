require 'spec_helper'

describe "prescriptions/show" do
  before(:each) do
    @prescription = assign(:prescription, stub_model(Prescription))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
