require 'spec_helper'

describe "tpousers/edit" do
  before(:each) do
    @tpouser = assign(:tpouser, stub_model(Tpouser,
      :v => "",
      :UserId => "MyString",
      :ProfileId => "MyString",
      :Day => "",
      :New => "",
      :Total => ""
    ))
  end

  it "renders the edit tpouser form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tpousers_path(@tpouser), :method => "post" do
      assert_select "input#tpouser_v", :name => "tpouser[v]"
      assert_select "input#tpouser_UserId", :name => "tpouser[UserId]"
      assert_select "input#tpouser_ProfileId", :name => "tpouser[ProfileId]"
      assert_select "input#tpouser_Day", :name => "tpouser[Day]"
      assert_select "input#tpouser_New", :name => "tpouser[New]"
      assert_select "input#tpouser_Total", :name => "tpouser[Total]"
    end
  end
end
