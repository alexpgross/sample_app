SampleApp::Application.routes.draw do

	root :to => 'pages#home'

	match '/contact', :to =>  'pages#contact',via: 'get'
	match '/about',   :to =>  'pages#about', via: 'get'
	match '/help',    :to =>  'pages#help', via: 'get'
	match '/signup',  :to => 	'users#new' , via: 'get'
 

end
