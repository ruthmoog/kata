Complete the method/function so that it converts dash/underscore delimited words into Pascal casing.

describe "Solution" do
  it "converts to Pascal case" do
    Test.assert_equals(to_pascal_case("oh-my-ghost"), "OhMyGhost")
    Test.assert_equals(to_pascal_case("Clean-With-Passion-For-Now"), "CleanWithPassionForNow")
    Test.assert_equals(to_pascal_case("Ms_Panda_and_Mr_Hedgehog"), "MsPandaAndMrHedgehog")
    Test.assert_equals(to_pascal_case("WARM_AND_COSY"), "WarmAndCosy")
  end
end

def to_pascal_case(title)
  title.split(/[-_]/).collect(&:capitalize).join
end
