class DishResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # Fields generated from the model
  field :name, as: :text
  field :menus, as: :has_and_belongs_to_many
  field :moment, as: :text
  field :illustration, as: :file, is_image: true
  # add fields here
end
