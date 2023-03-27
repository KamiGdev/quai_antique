class MenuResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # Fields generated from the model
  field :title, as: :text
  field :subtitle, as: :text
  field :illustration, as: :file, is_image: true
  field :description, as: :textarea
  field :price, as: :number
  field :bestoff, as: :boolean
  # add fields here
end
