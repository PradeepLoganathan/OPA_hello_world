package http.authz

default allow = false

allow {
    some profile_id
    input.method = "GET"
    input.path = ["home", profile_id]
    input.user == profile_id
}
