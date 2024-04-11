Rails.application.routes.draw do
  get("/", :controller => "static", :action => "square_new")
  get("/square/new", :controller => "static", :action => "square_new")
  get("/square/results", :controller => "static", :action => "square_results")
  get("/square_root/new", :controller => "static", :action => "square_root_new")
  get("/square_root/results", :controller => "static", :action => "square_root_results")
  get("/payment/new", :controller => "static", :action => "payment_new")
  get("/payment/results", :controller => "static", :action => "payment_results")
  get("/random/new", :controller => "static", :action => "random_new")
  get("/random/results", :controller => "static", :action => "random_results")
end
