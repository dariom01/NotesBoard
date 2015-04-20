class Api::FormatsController < ApplicationController
  respond_to :json

  def index
    serialized_formats =
      ActiveModel::ArraySerializer
               .new(Format.all, each_serializer: FormatSerializer)

    render json: serialized_formats
  end
end