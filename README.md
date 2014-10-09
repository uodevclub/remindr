## How to build the remindr landing page

This readme will guide you through the process of making your own copy of the basic remindr landing page. The landing page will describe our fictional app remindr and let people signup for our email list.

pre-reqs.


### step 1: Install Ruby, Rails, and start the server
Rails is a popular MVC framework based on the Ruby programing language. If you don't already have Ruby and Rails, you can download <a href="http://installrails.com/"> here</a>. The link will show you how.

Once installed, open your terminal and navigate to the folder you would like to store your application in. For example on a Mac:

<code>cd ~/Documents </code>

Now we'll run a command that will set up a basic Rails file structure:

<code> rail new remindr </code>

Rails comes with a basic server, start it to make sure everything is working correctly:

<code> rails s </code>

Go to <a href="http://0.0.0.0:3000/"> http://0.0.0.0:3000/ </a> in your browser. This is the default address of the Rails server. if this dosn't work inspect your terminal for any errors. The webpage should look like this:

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

make a new method inside the welcome controller called index:

<code>
  def index </br> </br>
  end
</code>

rails assumes we have made a view called index in views/welcome/index.html.erb

erb is a templating language that makes is easy to insert variabels into views. Just add .erb and rails will compile it to html when a new request is made.


### step 4: index view
Write the code for our homepage in the index.html.erb file. You'll see that for the most part the syntax looks like standard HTML. 

The differences however can be seen in any thing wrapped with <code><% %></code> .These statements allow us to introduce things like conditional logic:<br>
<code><% if flash[:notice] %> </code> <br>
and predefined Ruby helpers for common HTML elements:<br> 
<code><%= form_tag("", method: "post") do %> </code>

### step 5: add the js and css

CSS And Javascript will go into the stylesheets and javascripts folders respectively, which are underneath the assets folder.<br><br> 
For CSS we are using the extremely common Bootstrap library to style our page. 
For styles specific to our site, we will place them in the stylish-portfolio.css file.
<br><br>
You'll notice there is also welcome.css.scss file. This is a SASS file. SASS is a CSS preprocessor which lets you use features that don't exist in CSS like variables, nesting, mixins, and inheritance. We'll learn more about this later.



### step 6: post method
When a user presses the submit button on the page, our erb template file directs it to call the function "post". (method: "post"). We implement the post method on the controller that is controlling this page; the welcome_controller we created earlier. 

In welcome_controller.rb, type the following:
<code>
  def post </br> </br>
  end
</code>

Now when the user submits their email, whatever we want to do with that email address is done in this method. Lets grab the email address in the params dictionary by using the name of the html form element that holds the email:
<br><code>@quantity = params[:email]</code>

Next we save this email address to our database.
<br><code>@user = EmailList.create(email:"#{@quantity}")</code>

Finally we need to display a new webpage for the user. Lets just put them back onto the same home page they came from.
<br><code>render 'index'</code>

And for icing on the cake, let's give them some visual confirmation that their email submission was successfull with a predefined Ruby function:
<br><code>flash[:notice] = "thanks! we'll let you know as soon as we launch!"</code>






