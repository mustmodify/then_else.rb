require File.dirname(__FILE__) + '/../lib/then_else.rb'

describe ThenElse do
  it 'calls the then block if the object results to true' do
    result = 'yes'
    @outcome = nil

    result.then do
      @outcome = 'hello'
    end

    @outcome.should == 'hello'
  end

  it 'calls the else block if the object results to false' do
    result = false
    @outcome = nil

    result.then do
      @outcome = 'then'
    end.else do
      @outcome = 'else'
    end
    
    @outcome.should == 'else'
  end

  it 'also responds to otherwise' do
    find_user = nil

    find_user.otherwise do
      @outcome = 'no such user' 
    end

    @outcome.should == 'no such user'
  end
end
