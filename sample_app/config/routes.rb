Rails.application.routes.draw do
  get 'static_pages/help', as: 'help'
  get 'static_pages/article', as: 'article'
  get 'static_pages/contact', as: 'contact'
end
