Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # read the list of tasks
  # get 'list', to: 'tasks#list'


  # create a task note: this needs to go before show as it will think new is an id
  # get 'tasks/new', to: 'tasks#new', as: :new_task # display the form
  # post 'tasks', to: 'tasks#create'

  # show each task's info
  # get 'tasks/:id', to: 'tasks#show', as: :task


  # # update a task
  # get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  # patch 'tasks/:id', to: 'tasks#update'

  # # delete a task
  # delete 'tasks/:id', to: 'tasks#destroy'
  resources :tasks
end

