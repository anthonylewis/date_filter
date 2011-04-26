#
# newest should return nil for empty table
# oldest should retrun nil for empty table
# newest should equal oldest for single record table
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
end
