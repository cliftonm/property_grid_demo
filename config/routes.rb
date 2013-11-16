PropertyGridDemo::Application.routes.draw do
  get "demo_page/index"

  get "property_grid_records" => "property_grid_record#index"
  get "property_grid_records/index" => "property_grid_record#index"
  post "property_grid_records" => "property_grid_record#post"

  root to: "demo_page#index"
end
