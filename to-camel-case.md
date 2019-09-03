# Description
Complete the method/function so that it converts dash/underscore delimited words into camel casing. The first word within the output should be capitalized only if the original word was capitalized (known as Upper Camel Case, also often referred to as Pascal case).

# Examples
to_camel_case("the-stealth-warrior") # returns "theStealthWarrior"

to_camel_case("The_Stealth_Warrior") # returns "TheStealthWarrior"

# Tests

```ruby
describe "Solution" do
  it "converts to camel case" do
    Test.assert_equals(to_camel_case("oh-my-ghost"), "ohMyGhost")
    Test.assert_equals(to_camel_case("Clean-With-Passion-For-Now"), "CleanWithPassionForNow")
    Test.assert_equals(to_camel_case("Ms_Panda_and_Mr_Hedgehog"), "MsPandaAndMrHedgehog")
    Test.assert_equals(to_camel_case("WARM_AND_COSY"), "WarmAndCosy")
  end
  it "assertion criteria passes" do
    Test.assert_equals(to_camel_case(""), "")
    Test.assert_equals(to_camel_case("the-stealth-warrior"), "theStealthWarrio")
    Test.assert_equals(to_camel_case("The_Stealth_Warrior"), "TheStealthWarrior")
    Test.assert_equals(to_camel_case("A-B_C"), "ABC")
  end
end
```

# Solution

```ruby
def to_camel_case(title)
  if title.length > 0
    if title[0] == title[0].downcase
      title = title.split(/[-_]/).collect(&:capitalize).join
      title[0] = title[0].downcase
    else
     title = title.split(/[-_]/).collect(&:capitalize).join
    end
  end
  title
end
```

![](https://github.com/ruthmoog/kata/blob/master/Screenshot%202019-09-03%20at%2018.57.25.png?raw=true)
