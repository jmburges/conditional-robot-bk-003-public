describe Robot do

  let(:robot) { Robot.new }
  
  describe "#temperature" do
    context "after the 15th" do
      before(:each) do
        t = Time.local(2008, 9, 20, 10, 5, 0)
        Timecop.travel(t)
      end

      it "should be happy if the day of the month is after the 15th AND
      sthe temperature is hotter than 70 degrees." do
        Date.today
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
        t = Time.local(2008, 9, 1, 10, 5, 0)
        Timecop.travel(t)
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
  end

  describe "#optimal_weight" do
    context "your name begins with a-j" do
      it "weight less than 31" do
        expect(robot.optimal_weight(110, "Adam")).to eq(10)
      end

      it "weight greater than 30" do
        expect(robot.optimal_weight(131, "Adam")).to eq(300)
      end
    end

    context "your name beings with k-z" do
      it "weight less than 50" do
        expect(robot.optimal_weight(3, "Zach")).to eq(1000)
      end

      it "weight greater than or equal to 50" do
        expect(robot.optimal_weight(4, "Zach")).to eq(0)
      end
    end
  end

  describe "#optimal_weight" do
    it "multiplies the given argument by 50 and then divides by 7" do
      expect(robot.optimal_height(43)).to eq(307.14285714285717)
    end
  end

end