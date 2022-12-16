class UserResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # Fields generated from the model
  field :name, as: :text
  field :phone, as: :text
  field :last_name, as: :text
  field :email, as: :text
  field :user_role, as: :select, enum: ::User.user_roles
  # add fields here
end
