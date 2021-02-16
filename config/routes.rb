Rails.application.routes.draw do
  get "tasks", to: "tasks#index"
  get "tasks/new", to: "tasks#new", as: "task_new"
  post "tasks/new", to: "tasks#create"
  get "tasks/:id", to: "tasks#show", as: "task_display"
  get "tasks/:id/edit", to: "tasks#edit", as: "task_edit"
  post "tasks/:id/edit", to: "tasks#update"
  patch "tasks/:id/edit", to: "tasks#update"
  delete "tasks/:id", to: "tasks#destroy"
end
