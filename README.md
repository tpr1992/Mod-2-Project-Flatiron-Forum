# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

########## Done with

Basic pages showing
View, create, and delete posts
View and create replies
Replies properly attached to posts
Posts properly attached to sections
Timestamps all working
Create user accounts
Build authentication
Add secure password


########## Need to do

Edit replies so that only logged in user can reply/delete
Add section descriptions
Add avatar photos for user profiles
Fix Css styling for ALL pages
Add simple breadcrumbs at top of page so user knows where in the pages they are (ie. Cats/"thread name")
Change "User Comments" to recent activity where it shows posts and replies, not just replies


########## Stretch goals

Add private message functionality
Add upvotes
Add user friends
Add favorite posts/replies section to user account



############# Code Notes

Regex'ed time to be properly formatted

-- last updated at <%= post.created_at.strftime("%H:%M %b %d, %Y") %>

Simple math showing how many hours ago a post was last updated

<%= Time.now.hour - post.created_at.hour %> hours ago</li>




  <li><%= link_to post.name, post_path(post) %> last updated at <%= post.created_at.strftime("%X") %> hours ago</li>








  <ul>
    <div class="post-content">
    <span>
    <li><%= reply.content %></li><p>posted at <%= reply.updated_at.strftime("%I:%M%p") %></p>
  </ul>
  </span>
  </div>

  ###### Alt user profile page posts


  <br>
  <span class="user-info">
  <h3 class="user-posts"><%= @user.username %>'s post's:</h3>
  <% @user.posts.each do |post| %>
  <%= link_to post.name, post_path(post) %>
  <br>
  <%= post.content %>
  <hr>
  <% end %>
  </span>
