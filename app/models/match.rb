class Match < ApplicationRecord
  belongs_to :user


  def is_student

  end


  def generate


  end




end

# class Match < ApplicationRecord
# class Match
#     # belongs_to :user
#     attr_accessor :user, :user_matches
#
#     def initialize(user_id)
#       @user_id = user_id
#       @user = user
#
#       @user_matches = []
#
#     end
#
# end
@all_users = [
{ name: 'user1', id: 1 },
{ name: 'user2', id: 2 },
{ name: 'user3', id: 3 },
{ name: 'user4', id: 4 }
]

@current_user = @all_users[0]

ADD ATTRIBUTE TO USER HISTORY ARRAY, OR ARRAY WITH HASHES, WITH DATE AND MATCH


def current_user_id
    return @current_user[:id]
end
current_user_id

@current_user_matches = [current_user_id]

def other_user_ids
  # get all other users id:
  @all_user_ids =[]
  @all_users.each do |user|
       @all_user_ids << user[:id]
  end
end
other_user_ids

def not_matched_ids
  @not_matched_ids = @all_user_ids - @current_user_matches
end
not_matched_ids



puts "current user id #{current_user_id}"
puts "array with matches#{@current_user_matches}"
puts "all_user_ids #{@all_user_ids}"
puts "all none used ids #{@not_matched_ids}"

if @not_matched_ids.empty?

      puts "empty"# do somthing to cleae current user matches and start al over.

  else
    puts "this is the first one #{@not_matched_ids[0]}"
    all_matches =[]
    match = []
    all_matches << match
    match << @not_matched_ids[0] << current_user_id
    puts "#{match}"
    @not_matched_ids.shift
end
# def match
#   match =[]
#   match << @not_matched_ids[0], current_user_id
# end

puts "new not matched ids array#{@not_matched_ids}"

# def matched_user_id
#   # this is where the magic happens
# end
#
# loop do
#   all_users.each do |user|
#    user.each do |key, value|
#      current_user_id != user[:id]
#        current_user_matches << id
#       break
#     end
#   end
# end
#
# counter = 0
# loop do
#   while
#   current_user_matches.each do |id|
#     id != all_users[counter]
#     current_user_matches << id
#     break
#   else
#     counter +=1
# end
#
# array1 = [1, 2, 3, 4]
# array2 = [1, 2]
#  array1-array2
