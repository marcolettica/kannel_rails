require "spec_helper"

describe KannelRails::Config do

  it "should be available to KannelRails" do
    KannelRails.should.respond_to? :config
    KannelRails.config.should be_an_instance_of(KannelRails::Config)
  end

  it "should get correct values" do
    KannelRails.config.kannel_url.should == "http://localhost:13013"
    KannelRails.config.username.should == "kannel"
    KannelRails.config.password.should == "rails"
    KannelRails.config.dlr_url.should == "localhost:3000"
    KannelRails.config.api_secret.should == "test"
  end

end
