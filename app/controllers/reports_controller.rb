class ReportsController < ApplicationController
  def all_data

  end

  def get_address

  end

  def send_mail
    SendMailer.invitation(params[:address]).deliver_now
    SendMailer.delay.confirmation(params[:address])
    @assembly = Assembly.find_by_name(params[:name])
    @hits = []
    @hits = @assembly.hits.each { |h| @hits << h }
    @hits.sort! {|a, b| b.percent_similarity <=> a.percent_similarity}
    redirect_to reports_all_data_path
  end
end
