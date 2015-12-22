require 'minitest/autorun'
require 'pipedrive-ruby'

class AAATest < Minitest::Test

  def setup
    Pipedrive.authenticate('1c14f1d028a4d34d1546150406504fd015ef455e')
  end
=begin
  def test_connect
    assert_equal "hola@hola.com",
     Pipedrive::Person.find(11596).email[0]["value"],
     "Encuentra usuario"
  end

  def test_add_follower
    #person = Pipedrive::Person.find(11596)

    assert_operator Pipedrive::Person.add_follower(11596, 995863), :>, 0, "agrega seguidor"
  end
=end

  def test_add_follower
    id = Pipedrive::Person.add_follower(11596, 995863)
    assert_operator Pipedrive::Person.del_follower(11596, id), :>, 0, "elimina seguidor"
  end

end

##user_id = 995863
##person_id = 11596