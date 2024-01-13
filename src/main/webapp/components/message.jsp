<%
    String errorMessage = (String) session.getAttribute("error_message");
    String message = (String) session.getAttribute("message");
    
        if (errorMessage != null) {
%>

<div class="alert alert-danger alert-dismissible fade show" role="alert">
    <strong><%= errorMessage %></strong>
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>

<%
        // Remove the error message from the session
        session.removeAttribute("error_message");
    }

    if (message != null) {

        //prints
        // out.println(message);

%>


<div class="alert alert-success alert-dismissible fade show" role="alert">
    <strong><%= message%></strong> 
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>


<%            session.removeAttribute("message");

    }


%>