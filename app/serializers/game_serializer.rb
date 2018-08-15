class GameSerializer < ActiveModel::Serializer

  attributes :id, :name, :address, :sport, :date, :time, :comments, :max_players, :created_at, :updated_at
end

