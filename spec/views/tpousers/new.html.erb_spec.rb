require 'spec_helper'

describe "tpousers/new" do
  before(:each) do
    assign(:tpouser, stub_model(Tpouser,
      :v => "",
      :UserId => "MyString",
      :ProfileId => "MyString",
      :Day => "",
      :New => "",
      :Total => ""
    ).as_new_record)
  end

  it "renders new tpouser form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tpousers_path, :method => "post" do
      assert_select "input#tpouser_v", :name => "tpouser[v]"
      assert_select "input#tpouser_UserId", :name => "tpouser[UserId]"
      assert_select "input#tpouser_ProfileId", :name => "tpouser[ProfileId]"
      assert_select "input#tpouser_Day", :name => "tpouser[Day]"
      assert_select "input#tpouser_New", :name => "tpouser[New]"
      assert_select "input#tpouser_Total", :name => "tpouser[Total]"
    end
  end
end
