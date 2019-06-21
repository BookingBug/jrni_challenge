class CompanyAPI < Grape::API

  rescue_from ActiveRecord::RecordNotFound do |e|
    error! e.message, 404
  end

  version 'v1', :using => :path
  prefix 'api'

  namespace :companies do

    params do
      requires :id, type: Integer, desc: 'Company id.'
    end

    get ':id' do
      CompanyRepresenter.new(Company.find(params[:id]))
    end
  end
end