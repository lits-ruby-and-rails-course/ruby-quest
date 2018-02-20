class User < ApplicationRecord
  belongs_to :group
  ROLES = ['superadmin', 'student', 'teacher']

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :group, optional: true

  def superadmin?
    role == 'superadmin'
  end

  def student?
    role == 'student'
  end

  def teacher?
    role == 'teacher'
  end
end
