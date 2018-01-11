class User < ApplicationRecord
  ROLES = ['superadmin', 'student', 'teacher']

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


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
