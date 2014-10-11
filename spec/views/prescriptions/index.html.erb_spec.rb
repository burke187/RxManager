require 'spec_helper'

describe "prescriptions/index" do
  before(:each) do
    assign(:prescriptions, [
      stub_model(Prescription),
      stub_model(Prescription)
    ])
  end

  it "renders a list of prescriptions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
