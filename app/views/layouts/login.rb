 <div style="border:; height: 60px; float: left; width:1270px">
     # for login logot in a page


<% if user_signed_in? %>
        
      <h3>
  <%= link_to('Logout', destroy_user_session_path, method: :delete) %>        
  </h3>
<% else %>
        
      <h3>
  <%= link_to('Login', new_user_session_path)  %>  
  </h3>
<% end %>

      
    </div>