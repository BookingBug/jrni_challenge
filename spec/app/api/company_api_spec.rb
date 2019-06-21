describe CompanyAPI, type: :api do
  context 'GET /api/v1/companies/:id' do
    context 'when a company exists' do
      it "returns 200" do
        comp = Company.create
        expect(call_api(id: comp.id).status).to eq(200)
      end
    end

    context "when a company doesn't" do
      it 'returns 404' do
        expect(call_api(id: 999999).status).to eq(404)
      end
    end
  end
end
