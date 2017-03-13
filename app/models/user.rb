# require 'bcrypt'
# Aiman

class User < ActiveRecord::Base

	# This is Sinatra! Remember to create a migration!

  include BCyrpt # different capitalisation

  def self-authenticate(email, password)
    user = User.find_by(email: email)
    if user && user.authenticate(password_digest)###### check!! 
      user
    else
      nil
    end
  end


  has_many :questions
	has_many :answers
	has_many :question_votes
	has_many :answer_votesa

  	has_secure_password
    validates :email, :name, presence: true, uniqueness: true
    validates_format_of :email, :with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/

  validates :email,
  		:uniqueness => true,
  		:presence => true,
  		:format => { :with => ^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}$}

  validates :password,
  		:presence => true,
  		:format => { :with => ^(?=.*[A-Z].*[A-Z])(?=.*[!@#$&*])(?=.*[0-9].*[0-9])(?=.*[a-z].*[a-z].*[a-z]).{8}$}

      # Password strength criteria is as below :
      #
      #   8 characters length
      #   2 letters in Upper Case
      #   1 Special Character (!@#$&*)
      #   2 numerals (0-9)
      #   3 letters in Lower Case

  has_secure_password


end
#
#
# user = User.new(name: 'david', password: '', password_confirmation: 'nomatch')
# user.save                                                       # => false, password required
# user.password = 'mUc3m00RsqyRe'
# user.save                                                       # => false, confirmation doesn't match
# user.password_confirmation = 'mUc3m00RsqyRe'
# user.save                                                       # => true
# user.authenticate('notright')                                   # => false
# user.authenticate('mUc3m00RsqyRe')                              # => user
# User.find_by(name: 'david').try(:authenticate, 'notright')      # => false
# User.find_by(name: 'david').try(:authenticate, 'mUc3m00RsqyRe') # => user
