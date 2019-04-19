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

Basic pages showing - DONE
View, create, and delete posts - DONE
View and create replies - DONE
Replies properly attached to posts - DONE
Posts properly attached to sections - DONE
Timestamps all working - DONE
Create user accounts - DONE
Build authentication - DONE
Add secure password - DONE
Disable posting if user is not logged in - DONE
Disable replying if user is not logged in - DONE
Edit posts so that only logged in user can delete - DONE
Greet user by username when they visit their own profile page - DONE
Comment counter pluralizes when more than one post - DONE
For user profiles, if user is logged in and on their own page it shows recent activity as 'your recent activity', and if viewing others pages it says 'username's activity
If non-logged in user tries to visit new post page it prompts them to login and try again - DONE
Adjust icons shown next to posts and replies - DONE
Allow users to delete their own replies - DONE
Fix timezones!!!!! - DONE

######### Sorting

Posts index, top of page is most recently updated OR created - DONE

Posts show needs to be reversed

Replies index - DONE, most recent at top

Sections index - DONE, top is most recently updated
Sections show - DONE, same as above



########## Need to do



Add section descriptions
Refine sorting algorithm
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
