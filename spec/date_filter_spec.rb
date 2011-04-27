#
# newest should return last record
# oldest should return first record
# should raise ActiveRecord::StatementInvalid for records without created_at
#

require File.expand_path('../spec_helper', __FILE__)

describe DateFilter do
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
    User.create :name => "Tony"

    User.newest.should eq User.oldest
  end
end
