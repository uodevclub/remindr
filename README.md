## How to build the remindr landing page

this readme will guide you through the process of making your own copy of the basic remindr landing page. The landing page will describe our fictional app remindr and let people signup for our email list.

pre-reqs.


### step 1: install rails and start the server
Rails is a popular mvc framework which is based on the ruby programing language. If you havnt worked with it before, its cool you should download it: <a href="http://installrails.com/"> here</a>. The link will show you how.

once you have it installed open your terminal and navigate to the folder you would like to store your application in. For example on a mac:

<code>cd ~/Documents </code>

now we'll run a command that will set up a basic rails file structure:

<code> rail new remindr </code>

rails comes with a basic server, start it to make sure everything is working correctly.

<code> rails s </code>

go to <a href="http://0.0.0.0:3000/"> http://0.0.0.0:3000/ </a> in your browser. This is the default address of the rails server. if this dosn't work inspect your terminal. It should look like this:

<img src="http://guides.rubyonrails.org/images/getting_started/rails_welcome.png">

###step 2: Make a route

routes conect url requests (http://...) with your mvc code.

open 'remindr/config/routes.rb' in your text editor and add the following:

<code> root 'welcome#index' </code>

'root' tells rails what the homepage should be. 'welcome#index' means we want the index method of the welcome controller respond to the url request. You should get an error if you reload the home page at this point. This is because we havent created a welcome controller



### step 3: Make the welcome controller

rails has commmands that make making controllers easy called generators. 

<code>rails generate controller welcome</code>

now open up the file you've just created: 'reminder/app/controllers/welcome_controller.rb'

make a new method called index:

<code>
  def index
  end
</code>

rails assumes we have made a view called index in views/welcome/index.html.erb

erb is a templating language that makes is easy to insert variabels into views. Just add .erb and rails will compile it to html when a new request is made.


### step 4: index view


### step 5: add the js and css


### step 6: post method






