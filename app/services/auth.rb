class Auth
  ALGORITHM = "HS256"

## payload; user_id, user_name
  def self.issue(payload)
    JWT.encode(payload,auth_secret,ALGORITHM)
  end

  def self.decode(token_to_be_decoded)
    JWT.decode(token_to_be_decoded, auth_secret, true, {algorithm: ALGORITHM}).first
  end

  private
    def self.auth_secret
      ENV["a_very_arbitrary_noun"]
    end
end
