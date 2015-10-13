Rails.application.routes.draw do
  mount Admin::Engine => '/admin'
  mount Content::Engine => '/'
end
