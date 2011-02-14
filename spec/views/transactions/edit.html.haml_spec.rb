require 'spec_helper'

describe "transactions/edit.html.haml" do
  before(:each) do
    @transaction = assign(:transaction, stub_model(Transaction,
      :amount => 1.5,
      :description => "MyString",
      :total => 1.5
    ))
  end

  it "renders the edit transaction form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => transactions_path(@transaction), :method => "post" do
      assert_select "input#transaction_amount", :name => "transaction[amount]"
      assert_select "input#transaction_description", :name => "transaction[description]"
      assert_select "input#transaction_total", :name => "transaction[total]"
    end
  end
end
