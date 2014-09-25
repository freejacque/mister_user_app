class RootController < ApplicationController
  get('/') do
    render(:erb, :index)
  end

  get('/signup') do
    "Hello World"
    render(:erb, :"users/new")
  end

  post('/users') do
    User.create(params)
    redirect to('/')
  end

  get('/users/:id') do
    @user = User.find
    @id = @user.id
    render(:erb, :"users/show")
  end

end


