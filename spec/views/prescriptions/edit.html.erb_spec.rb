require 'spec_helper'

describe "prescriptions/edit" do
  before(:each) do
    @prescription = assign(:prescription, stub_model(Prescription))
  end

  it "renders the edit prescription form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", prescription_path(@prescription), "post" do
    end
  end
end
