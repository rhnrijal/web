Rails.application.routes.draw do

  root 'main#index'
  get 'main/ps1'
  get 'main/ps2'
  get 'main/googleNews'
  get 'main/divideByZero'

  get 'basics/quotations'
  post 'basics/quotations'

end
