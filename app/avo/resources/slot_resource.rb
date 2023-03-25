class SlotResource < Avo::BaseResource
  self.visible_on_sidebar = true
  self.title = :id
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # Fields generated from the model
  field :date, as: :date
  field :time, as: :date_time
  field :reservation, as: :belongs_to
  # add fields here
end
