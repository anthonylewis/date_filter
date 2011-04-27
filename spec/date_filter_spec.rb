
require File.expand_path('../spec_helper', __FILE__)

describe DateFilter do
  before :each do
    User.delete_all
    Quality.delete_all
  end

  it "should add method newest to all models" do
    ActiveRecord::Base.should respond_to(:newest)
  end

  it "should add method oldest to all models" do
    ActiveRecord::Base.should respond_to(:oldest)
  end

  it "newest should return nil for empty table" do
    User.newest.should eq nil
  end

  it "oldest should return nil for empty table" do
    User.oldest.should eq nil
  end

  it "newest should equal oldest for single record table" do
    User.create :name => "Tom"

    User.newest.should eq User.oldest
  end

  it "newest should return last record created" do
    [ "Tom", "Dick", "Harry" ].each { |n| User.create :name => n }

    User.newest.name.should eq "Harry"
  end

  it "oldest should return first record created" do
    [ "Tom", "Dick", "Harry" ].each { |n| User.create :name => n }

    User.oldest.name.should eq "Tom"
  end

  it "should raise ActiveRecord::StatementInvalid for models without created_at" do
    expect { Quality.newest }.to raise_error ActiveRecord::StatementInvalid
    expect { Quality.oldest }.to raise_error ActiveRecord::StatementInvalid
  end
end

