require 'spec_helper'

describe "tpousers/index" do
  before(:each) do
    assign(:tpousers, [
      stub_model(Tpouser,
        :v => "",
        :UserId => "User",
        :ProfileId => "Profile",
        :Day => "",
        :New => "",
        :Total => ""
      ),
      stub_model(Tpouser,
        :v => "",
        :UserId => "User",
        :ProfileId => "Profile",
        :Day => "",
        :New => "",
        :Total => ""
      )
    ])
  end

  it "renders a list of tpousers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "User".to_s, :count => 2
    assert_select "tr>td", :text => "Profile".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
