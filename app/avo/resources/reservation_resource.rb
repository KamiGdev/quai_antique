class ReservationResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # Fields generated from the model
  field :email, as: :text
  field :lastname, as: :text
  field :phone_number, as: :text
  field :slot, as: :has_one
  field :people_number, as: :number
  field :allergy, as: :text
  # add fields here
end
