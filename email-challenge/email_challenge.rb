# /email
# //You are asked to collect user emails, however as a security measure
# //You will only accept emails from specific providers 
# //gmail, outlook, yahoo, aol, hotmail 
# //return an object with the keys of the provider with the value of the users info without the provider 
# //if the user does not have one of the approved email providers return false
require 'pry'

def email?(email)
	accepted_providers = ["gmail", "outlook", "yahoo", "aol", "hotmail"]
	i = email.index('@')
	provider = email[i+1..-5]
	# binding.pry
	if accepted_providers.include?(provider) == true
		return {provider.to_s => email}
	else
		return false
	end
end

# //in: bob@notavirus.com
# //out: false 
out = email?("bob@notavirus.com")

# //in: coolCat@gmail.com
# //out: {gmail:coolCat}
out = email?("coolCat@gmail.com")

# //in: GayleLM@hotmail.com
# //out: {hotmail:gayleLM}
out = email?("GayleLM@hotmail.com")