require 'spec_helper'

describe User do
  before do
  	@user = User.new(username: "John", password: "password")
  end

  subject { @user }

  it { should respond_to(:name)}
end
