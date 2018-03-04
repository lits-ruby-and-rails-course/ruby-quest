class User < ApplicationRecord
  belongs_to :group
  ROLES = ['superadmin', 'student', 'teacher']

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :group, optional: true

  ROLES.each do |role_name|
    define_method("#{role_name}?") do
      role == role_name
    end
  end
end
