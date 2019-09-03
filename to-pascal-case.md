# Description

Complete the method/function so that it converts dash/underscore delimited words into Pascal casing.

# Tests

```ruby
describe "Solution" do
  it "converts to Pascal case" do
    Test.assert_equals(to_pascal_case("oh-my-ghost"), "OhMyGhost")
    Test.assert_equals(to_pascal_case("Clean-With-Passion-For-Now"), "CleanWithPassionForNow")
    Test.assert_equals(to_pascal_case("Ms_Panda_and_Mr_Hedgehog"), "MsPandaAndMrHedgehog")
    Test.assert_equals(to_pascal_case("WARM_AND_COSY"), "WarmAndCosy")
  end
end
```

# Solution

```ruby
def to_pascal_case(title)
  title.split(/[-_]/).collect(&:capitalize).join
end
```

![](https://github.com/ruthmoog/kata/blob/master/Screenshot%202019-09-03%20at%2018.34.51.png?raw=true)
