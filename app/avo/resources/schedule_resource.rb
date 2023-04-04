class ScheduleResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # Fields generated from the model
  field :lunch_starts_at, as: :time, relative: false, time_24hr: true, format: 'H:mm', picker_format: 'H:i'
  field :lunch_ends_at, as: :time, relative: false, time_24hr: true, format: 'H:mm', picker_format: 'H:i'
  field :dinner_starts_at, as: :time, relative: false, time_24hr: true, format: 'H:mm', picker_format: 'H:i'
  field :dinner_ends_at, as: :time, relative: false, time_24hr: true, format: 'H:mm', picker_format: 'H:i'
  # add fields here
end
