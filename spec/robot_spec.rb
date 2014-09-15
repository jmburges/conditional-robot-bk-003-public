describe Robot do

  let(:robot) { Robot.new }
  
  context "after the 15th" do

    before(:each) do
      date = mock()
      date.stubs(:day => 17)
      Date.stubs(:today => date) 
    end

    it "should be happy if the day of the month is after the 15th AND
    the temperature is hotter than 70 degrees." do
      expect(robot.temperature(71)).to eq("I am happy")
    end

    it "should be happy if the day of the month is after the 15th AND
    the temperature is hotter than 70 degrees." do
      expect(robot.temperature(100)).to eq("I am happy")
    end

    it "should be very happy if the day of the month is after the 15th AND
    the temperature is hotter than 100 degrees" do
      expect(robot.temperature(101)).to eq("I am very happy")
    end

    it "should be miserable if its after the 15th AND
    the temperature is 70 degrees or colder" do
      expect(robot.temperature(70)).to eq("I am miserable")
    end
  end

  context "before the 15th" do

    before(:each) do
      date = mock()
      date.stubs(:day => 14)
      Date.stubs(:today => date) 
    end

    it "should be sad if the day of the month is on or before the 15th AND
    the temperature is hotter than 70 degrees." do
      expect(robot.temperature(71)).to eq("I am sad")
    end

    it "should be sad if the day of the month is on or before the 15th AND
    the temperature is hotter than 70 degrees." do
      expect(robot.temperature(100)).to eq("I am sad")
    end

    it "should be very sad if the day of the month is on or before the 15th AND
    the temperature is hotter than 100 degrees" do
      expect(robot.temperature(101)).to eq("I am very sad")
    end

    it "should be very miserable if its on or before the 15th AND
    the temperature is 70 degrees or colder" do
      expect(robot.temperature(70)).to eq("I am very miserable")
    end
    
  end

  context "your name begins with a-j" do
    # if your name begins with the letters a-j
    # your robots optimal weight is your weight - 100, 
    # and if that is greater than 30 your robots optimal weight is 300
    it "weight less than 31" do
      expect(robot.optimal_weight(110)).to eq(10)
    end

    it "weight greater than 30" do
      expect(robot.optimal_weight(131)).to eq(300)
    end

    # if you name begins with the letters k-z
    # your robots optimal weight is your weight + 46, 
    # and if that is greater than or equal to 50 your robots optimal weight is 0
    # if that is less than 50 your robots optimal weight is 1000

  end

  context "your name beings with k-z" do
    it "weight less than 50" do
      expect(robot.optimal_weight(3)).to eq(1000)
    end

    it "weight greater than or equal to 50" do
      expect(robot.optimal_weight(4)).to eq(0)
    end
  end

  it "#optimal_height" do
    expect(robot.optimal_height(43)).to eq(307.14285714285717)
  end

end