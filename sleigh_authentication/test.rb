describe "Santa's Sleigh" do
  def check(name, password, correct)
    Test.assert_equals(Sleigh.new.authenticate(name, password), correct, 'Tested name "' + name + '" and password "' + password + '"')
  end

  it "must authenticate" do
    check("Santa Claus", "Ho Ho Ho!", true)
  end
  
  it "must not authenticate" do
    check("Santa", "Ho Ho Ho!", false)
    check("Santa Claus", "Ho Ho!", false)
    check("jhoffner", "CodeWars", false)
  end
end
