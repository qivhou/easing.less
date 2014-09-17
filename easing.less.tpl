//use ease as default for names not in the list
@default: ease; 

// native easing options
<% _.each(["ease", "linear", "ease-in", "ease-out", "ease-in-out"], function(key){ %>
@<%= key %>: <%= key %>;

.transition-timing-function(<%= key %>){
    transition-timing-function : @<%= key %>;
    -webkit-transition-timing-function : @<%= key %>;
    -moz-transition-timing-function : @<%= key %>;
    -o-transition-timing-funtion : @<%= key %>;
}

.animation-timing-function(<%= key %>){
    animation-timing-function : @<%= key %>;
    -webkit-animation-timing-function : @<%= key %>;
    -moz-animation-timing-function : @<%= key %>;
    -o-animation-timing-function : @<%= key %>;
}
<% }); %>

<% _.map(easings, function(value, key){ %>
@<%= key %> : cubic-bezier(<%= value  %>);

.transition-timing-function(<%= key %>){
    transition-timing-function : @<%= key %>;
    -webkit-transition-timing-function : @<%= key %>;
    -moz-transition-timing-function : @<%= key %>;
    -o-transition-timing-funtion : @<%= key %>;
}

.animation-timing-function(<%= key %>){
    animation-timing-function : @<%= key %>;
    -webkit-animation-timing-function : @<%= key %>;
    -moz-animation-timing-function : @<%= key %>;
    -o-animation-timing-function : @<%= key %>;
}

<% }); %>
.transition-timing-function(@name) when(default()){
    .transition-timing-function(@default);
}

.animation-timing-function(@name) when(default()){
    .transition-timing-function(@default);
}
