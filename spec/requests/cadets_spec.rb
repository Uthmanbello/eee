require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe '/cadets', type: :request do
  # This should return the minimal set of attributes required to create a valid
  # Cadet. As you add validations to Cadet, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      Cadet.create! valid_attributes
      get cadets_url
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      cadet = Cadet.create! valid_attributes
      get cadet_url(cadet)
      expect(response).to be_successful
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_cadet_url
      expect(response).to be_successful
    end
  end

  describe 'GET /edit' do
    it 'renders a successful response' do
      cadet = Cadet.create! valid_attributes
      get edit_cadet_url(cadet)
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new Cadet' do
        expect do
          post cadets_url, params: { cadet: valid_attributes }
        end.to change(Cadet, :count).by(1)
      end

      it 'redirects to the created cadet' do
        post cadets_url, params: { cadet: valid_attributes }
        expect(response).to redirect_to(cadet_url(Cadet.last))
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new Cadet' do
        expect do
          post cadets_url, params: { cadet: invalid_attributes }
        end.to change(Cadet, :count).by(0)
      end


      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post cadets_url, params: { cadet: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested cadet' do
        cadet = Cadet.create! valid_attributes
        patch cadet_url(cadet), params: { cadet: new_attributes }
        cadet.reload
        skip('Add assertions for updated state')
      end

      it 'redirects to the cadet' do
        cadet = Cadet.create! valid_attributes
        patch cadet_url(cadet), params: { cadet: new_attributes }
        cadet.reload
        expect(response).to redirect_to(cadet_url(cadet))
      end
    end

    context 'with invalid parameters' do
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        cadet = Cadet.create! valid_attributes
        patch cadet_url(cadet), params: { cadet: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested cadet' do
      cadet = Cadet.create! valid_attributes
      expect do
        delete cadet_url(cadet)
      end.to change(Cadet, :count).by(-1)
    end

    it 'redirects to the cadets list' do
      cadet = Cadet.create! valid_attributes
      delete cadet_url(cadet)
      expect(response).to redirect_to(cadets_url)
    end
  end
end
