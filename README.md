This repository is a sample rails app for the following question:

http://ja.stackoverflow.com/questions/17481/%E7%95%B0%E3%81%AA%E3%82%8B%E5%90%8D%E5%89%8D%E7%A9%BA%E9%96%93%E3%81%AB%E5%AE%9A%E7%BE%A9%E3%81%95%E3%82%8C%E3%81%9F%E5%90%8C%E5%90%8D%E3%81%AE%E3%83%A2%E3%83%87%E3%83%AB%E3%81%AE%E3%83%AD%E3%83%BC%E3%83%87%E3%82%A3%E3%83%B3%E3%82%B0

## Log

Started GET "/posts/3" for ::1 at 2015-10-13 21:54:09 +0900
Processing by Content::PostsController#show as HTML
  Parameters: {"id"=>"3"}
Completed 500 Internal Server Error in 1ms (ActiveRecord: 0.0ms)

NoMethodError (undefined method `find_by_param' for #<Class:0x007fa60d6ef090>):
  activerecord (4.2.4) lib/active_record/dynamic_matchers.rb:26:in `method_missing'
  content/app/controllers/content/posts_controller.rb:8:in `show'
  actionpack (4.2.4) lib/action_controller/metal/implicit_render.rb:4:in `send_action'
  actionpack (4.2.4) lib/abstract_controller/base.rb:198:in `process_action'
  actionpack (4.2.4) lib/action_controller/metal/rendering.rb:10:in `process_action'
  actionpack (4.2.4) lib/abstract_controller/callbacks.rb:20:in `block in process_ac
