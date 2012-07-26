module UsersHelper
	def gravatar_for(user,args={})
		gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
		gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
		args[:alt]=user.name
		args[:class]="gravatar"
		image_tag gravatar_url, args
	end
end
