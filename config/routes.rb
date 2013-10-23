PdfIndex::Application.routes.draw do
  resources :documents
  root :to => "documents#index"
  get "search", :to => "documents", :action => "search" 
end
