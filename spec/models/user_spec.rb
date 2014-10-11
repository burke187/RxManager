require 'spec_helper'

describe User do
  before do
  	@user = User.new(username: "John", password: "password")
  end

  subject { @user }

  it { should respond_to(:username) }
  it { should be_valid }

  describe "when username is not present" do
  	before { @user.username = " " }
  	it { should_not be_valid }
  end
  describe "when username is already taken" do
    before do
      user_with_same_name = @user.dup
      user_with_same_name.username = @user.username.upcase
      user_with_same_name.save
    end

    it { should_not be_valid }
  end
end
