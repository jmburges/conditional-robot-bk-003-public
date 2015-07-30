

# Conditional Robot

## First Important Step

Run  `gem install timecop` from your terminal before getting started. Otherwise the spec will throw an error.

## Objectives

* Make a class called `Robot`. Every new instance of the Robot class should be able to take a temperature reading and return a mood.

#### The Optimal Height method
A robot's optimal height is your estimated arm_length multiplied by 50 and divided by 7.

#### The Temperature method
* Happy
  * A robot should be happy if the day of the month is after the 15th AND the temperature is hotter than 70 degrees and less than or equal to 100.
  * A robot should be very happy if the day of the month is after the 15th AND the temperature is hotter than 100 degrees
  * A robot should be miserable if its after the 15th AND the temperature is 70 degrees or colder
* Sad
  * A robot should be sad if the day of the month is on or before the 15th AND the temperature is hotter than 70 degrees and less than or equal to 100.
  * A robot should be very sad if the day of the month is on or before the 15th AND the temperature is hotter than 100 degrees
  * A robot should be very miserable if its on or before the 15th AND the temperature is 70 degrees or colder

#### The Optimal Weight method
* If your name begins with the letters a-j
  * Your robot's optimal weight is your weight - 100 unless that is greater than 30 in which case your robots optimal weight is 300
* If you name begins with the letters k-z
  * Your robot's optimal weight is your weight + 46 
    * If that value is greater than or equal to 50 your robot's optimal weight is 0
    * If that value is less than 50 your robot's optimal weight is 1000

## Resources
* [Codecademy](http://www.codecademy.com/) - [If, Unless, Elsif, and Else](http://www.codecademy.com/glossary/ruby/if-unless-elsif-and-else)

