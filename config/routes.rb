PropertyGridDemo::Application.routes.draw do
  get "demo_page/index"

  root to: "demo_page#index"
end
