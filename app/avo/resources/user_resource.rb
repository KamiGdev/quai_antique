class UserResource < Avo::BaseResource
  self.title = :email
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  field :email, as: :text
  field :lastname, as: :text
  field :allergy, as: :text
  field :people_number, as: :integer
end
