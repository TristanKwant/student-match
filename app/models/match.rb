
# class Match < ApplicationRecord

# end

@all_users = [
{ name: 'user1', id: 1, history_matched_ids: [2, 3, 4] },
{ name: 'user2', id: 2, history_matched_ids: [3, 1] },
{ name: 'user3', id: 3, history_matched_ids: [4] },
{ name: 'user4', id: 4, history_matched_ids: [1, 3] }
]

# user_id = user[:id]
# index = @all_users.index(user)
@all_matches = []

# id = (@all_users[0])[:id]
# index = @all_users.index((@all_users[0]))
# puts "this is your id: #{id}"
# puts "this is your index: #{index}"

def get_all_user_ids
  all_user_ids = []
  @all_users.each do |user|
    all_user_ids << user[:id]
  end
  return all_user_ids
end
# print get_all_user_ids
# puts "****"


def remove_user_id_and_history(id, index)
  get_all_user_ids
  id_array = []
  id_array << id

  print id_array
  puts "id array:"
  user_matched_ids = []
  user_matched_ids = (@all_users[index])[:history_matched_ids]

  print user_matched_ids
  puts "user matched ids"
  user_id_removed = []
  user_id_removed = get_all_user_ids - id_array

  print user_id_removed
  puts "user-id removed"

  all_ids_removed = []
  all_ids_removed = user_id_removed - user_matched_ids
  print all_ids_removed
  puts "all ids removed"
  return all_ids_removed
  # user_id_removed = user_id_removed - user_matched_ids
end


def create_match(id, index)
  match = remove_user_id_and_history(id, index).sample
  print match
  puts "this is the id of the match"
  match_index = @all_users.index(@all_users.find {|user| user["id"] = match })
  print match_index
  puts "this is the index af the match"
  (@all_users[(index)])[:history_matched_ids] << match
  (@all_users[(match_index)])[:history_matched_ids] << id
  user_match = []
  user_match << id << match
  @all_matches << user_match

  print user_match
  puts " this will be your match"
  print @all_matches
  puts " this are all the matches"

end

def store_match(id, index)
  if remove_user_id_and_history(id, index).empty?
    (@all_users[index])[:history_matched_ids].clear
    create_match(id, index)
  else
    create_match(id, index)
  end
end


@all_users.each do |user|
  user_id = user[:id]
  index = @all_users.index(user)
  if @all_matches.flatten.include?(user_id)
    puts "one"
    next
  else
    store_match(user_id, index)
    puts "______"
  end

end
