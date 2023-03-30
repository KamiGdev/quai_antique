class DishResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # Fields generated from the model
  field :title, as: :text
  field :subtitle, as: :text
  field :menus, as: :has_and_belongs_to_many
  field :category, as: :text
  field :illustration, as: :file, is_image: true
  field :price, as: :number
  field :bestoff, as: :boolean
  # add fields here
end
