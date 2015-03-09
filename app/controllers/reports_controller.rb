class ReportsController < ApplicationController
  def all_data
    @assembly = Assembly.find_by_name(params[:name])
    @hits = []
    @hits = @assembly.hits.each { |h| @hits << h }
    @hits.sort! {|a, b| b.percent_similarity <=> a.percent_similarity}
  end
end
