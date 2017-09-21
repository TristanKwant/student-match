

class Match < ApplicationRecord




def get_match_list
users = User.all.ids.shuffle
users.push(nil) if users.size.odd?
get_match_list = (1...users.size).map do |r|
    u=users.dup
    (0...(users.size/2)).map do |_|
      [u.shift, u.delete_at(-(r % u.size + (r >= u.size * 2 ? 1 : 0)))]
    end
  end
end

end
