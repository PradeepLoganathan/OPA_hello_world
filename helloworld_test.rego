package http.authz

test_get_user_allowed {
    allow with input as {"user": "pradeep", "method": "GET", "path":["home", "pradeep"] }
}

test_get_another_user_denied {
    not allow with input as {"user": "bob", "method": "GET", "path":["home", "pradeep"] }
}