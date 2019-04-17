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
