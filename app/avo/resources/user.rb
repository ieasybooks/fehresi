class Avo::Resources::User < Avo::BaseResource
  # self.includes = []
  # self.attachments = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: q, m: "or").result(distinct: false) }
  # }

  self.devise_password_optional = true

  def fields
    field :id, as: :id
    field :email, as: :text
    field :password, as: :password
    field :sign_in_count, as: :number
    field :current_sign_in_at, as: :date_time
    field :last_sign_in_at, as: :date_time
    field :current_sign_in_ip, as: :text
    field :last_sign_in_ip, as: :text
    field :confirmation_token, as: :text
    field :confirmed_at, as: :date_time
    field :confirmation_sent_at, as: :date_time
    field :unconfirmed_email, as: :text
    field :failed_attempts, as: :number
    field :unlock_token, as: :text
    field :locked_at, as: :date_time
    field :role, as: :select, enum: ::User.roles
    field :suspended_at, as: :date_time
  end
end
