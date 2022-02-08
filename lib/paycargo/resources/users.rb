module Paycargo
  class UsersResource < Resource
    #This endpoint allows you to send user credentials, if login success you receive a
    #JWT token as a response for sending future requests to this API. Token validity
    #time is 8 hours.
    def login(**attributes)
      User.new post_request("login", body: attributes).body
    end

    #This GET endpoint allows you to retrieve user information. You need to pass a
    #valid user id so as JWT token. Only users of your account (or your branches
    #if you are a headquarter) are retrievable.
    def retreive(**params)
      User.new get_request("user", params: params).body
    end

    #This GET endpoint allows you to retrieve a list of permissions for the selected
    #user. Endpoint requires to pass a valid user id parameter.
    def permissions(id, **params)
      get_request("user/#{id}/permissions", params: params).body
    end
  end
end
