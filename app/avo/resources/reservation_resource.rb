class ReservationResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # Fields generated from the model
  field :user, as: :belongs_to
  field :phone_number, as: :text
  field :date, as: :date
  field :time, as: :date_time
  field :people_number, as: :number
  field :allergy, as: :text
  # add fields here
end
