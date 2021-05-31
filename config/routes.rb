Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/:year-:month-:day' => 'application#home'
  get '/:year-:month-:day/r/:subreddit' => 'application#home'
  root 'application#home'
end
