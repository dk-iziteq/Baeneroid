# class BaeneroidGenerator < Rails::Generators::NamedBase
#   # source_root File.expand_path('../templates', __FILE__)
#
#   # > rails g baeneroid NAME
#   # example: rails g baeneroid controllers
#   def generate_controllers
#     case gen_name
#
#     when 'install'
#       cp_config
#       cp_models
#       cp_controllers
#     else
#       puts 'TheComments Generator - wrong Name'
#       puts 'Try to use [ install ]'
#     end
#   end
#
#   private
#
#   def root_path; TheComments::Engine.root; end
#
#   def gen_name
#     name.to_s.downcase
#   end
#
#   def cp_config
#     copy_file "#{ root_path }/config/initializers/the_comments.rb",
#     "config/initializers/the_comments.rb"
#   end
#
#   def cp_models
#     _path = "#{ root_path }/app/models/_templates_"
#
#     %w[ comment.rb comment_subscription.rb ].each do |file_name|
#       copy_file "#{ _path }/#{ file_name }", "app/models/#{ file_name }"
#     end
#   end
#
#   def cp_controllers
#     _path = "#{ root_path }/app/controllers/_templates_"
#     %w[ comments_controller.rb comment_subscriptions_controller.rb ].each do |file_name|
#       copy_file "#{ _path }/#{ file_name }", "app/controllers/#{ file_name }"
#     end
#   end
#
#   def cp_locales
#     _path = "#{ root_path }/config/locales"
#
#     %w[ en.the_comments.yml ru.the_comments.yml ].each do |file_name|
#       copy_file "#{ _path }/#{ file_name }", "config/locales/#{ file_name }"
#     end
#   end
# end