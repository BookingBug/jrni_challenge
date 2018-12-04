class V1::CompanyAPI < Grape::API
  format :json

  params do
    requires :id, type: Integer, desc: 'Company id.'
  end

  get ":id" do
    CompanyRepresenter.new(Company.find(params[:id]))
  end
end