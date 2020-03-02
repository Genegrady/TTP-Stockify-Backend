class ApplicationController < ActionController::API
    
   
    def secret
        Rails.application.credentials.secret_key_base
    end
     

    # private

    


    # def encode_token(payload)
    #     JWT.encode(payload, secret, 'HS256')
    # end


    # def auth_header
    #     # byebug
    #     request.headers['Authorization']
    # end

    # def decoded_token
    #     if auth_header
    #         token = auth_header.split(' ')[1]
    #         begin
    #             JWT.decode(token, signing_secret, true, algorithm: 'HS256')
    #         rescue JWT::DecodeError
    #             []
    #         end
    #     end
    # end
end
