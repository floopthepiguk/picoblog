class DummyDataGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)

  NUM_USERS                   = 10
  NUM_POSTS_PER_USER          = 5 
  MAX_NUM_COMMENTS_PER_POST   = 5

  def start
    if yes? "\nGenerating dummy data will destroy all existing data in the database. Are you sure you want to proceed?", :bold
      go
    else 
      say "Aborting."
    end
  end

  private

  def go
    destroy_existing_data
    create_test_users
    create_test_posts
    create_test_comments
    finish
  end


  def destroy_existing_data
    say_status :destroying, "Existing Data"
    User.delete_all
    Post.delete_all
    Comment.delete_all
  end

  #
  # create_test_users
  #
  def create_test_users
    say_status :generating, "Dummy Users"
    NUM_USERS.times do |num|
      User.create(email: "test#{num+1}@test.com", password: 'welcome1', password_confirmation: 'welcome1')
    end
   end


  #
  # create_test_posts
  #
  def create_test_posts
    say_status :generating, "Dummy Posts"
    User.all.each do |user|
      NUM_POSTS_PER_USER.times do
        user.posts.create(icon_id: random_icon_id, color: random_hex_color)
      end
    end
  end



  def create_test_comments
    say_status :generating, "Dummy Comments"
    Post.all.each do |post|
      rand(MAX_NUM_COMMENTS_PER_POST).times do
        post.comments.create(icon_id: random_icon_id, color: random_hex_color, user_id: random_user_id)
      end
    end
  end

  def finish
    say_status :Finished, nil
    say "\nGenerated #{NUM_USERS} users, email of the format 'testx@test.com' where x is a number between 0 and #{NUM_USERS - 1}. All User passwords are 'welcome1'\n\n", :bold
  end

  ######################################
  #
  # Support methods
  #

  def random_user_id
    User.pluck(:id).shuffle.first
  end

  def random_icon_id
    Icon.pluck(:id).shuffle.first
  end

  def random_hex_color
    "#%06x" % (rand * 0x1000000)
  end
end
