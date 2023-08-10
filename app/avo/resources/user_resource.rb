class UserResource < Avo::BaseResource
  self.title = :email
  self.includes = []


  field :id, as: :id
  field :email, as: :text
  field :lastname, as: :text
  field :allergy, as: :text
  field :people_number, as: :integer
end
