class TargetAudiencesController < ApplicationController
  def index
    @target_audiences = TargetAudience.all
  end
end
