class CountersController < ApplicationController
  before_action :set_counter
  skip_before_action :verify_authenticity_token

  def show
  end

  def increment
    @counter.increment!(:value)
    redirect_to root_path
  end

  private

  def set_counter
    @counter = Counter.first_or_create(value: 0)
  end
end
