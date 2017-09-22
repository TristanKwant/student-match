

class Match < ApplicationRecord
  def get_match_list
    users = User.all.where(admin: false).ids.shuffle
    users.push(nil) if users.size.odd?
    n = users.size
    steady = users.pop
    matches = (n-1).times.map do
      users.rotate!
      [[users.first, steady]] + (1...(n/2)).map { |m| [users[m], users[n-1-m]]}
    end
    matches
  end

# left here in case things break anyway

# def get_match_list
# users = User.all.where(admin: false).ids.shuffle
# users.push(nil) if users.size.odd?
# get_match_list = (1...users.size).map do |r|
#     u = users.dup
#     (0...(users.size/2)).map do |_|
#       [u.shift, u.delete_at(-(r % u.size + (r >= u.size * 2 ? 1 : 0)))]
#     end
#   end
# end




end
