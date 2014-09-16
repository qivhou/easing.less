@default: ease; //use ease as default for names not in the list
<% _.map(easings, function(value, key){ %>

.<%= key %>, .cubic-bezier(@name) when (@name = <%= key  %>) {
    cubic-bezier(<%= value %>);
};
<% });%>

.cubic-bezier(@name) when(defaut()){
    .cubic-bezier(@default);
}
