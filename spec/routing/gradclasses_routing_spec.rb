require 'rails_helper'

RSpec.describe GradclassesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/gradclasses').to route_to('gradclasses#index')
    end

    it 'routes to #new' do
      expect(get: '/gradclasses/new').to route_to('gradclasses#new')
    end

    it 'routes to #show' do
      expect(get: '/gradclasses/1').to route_to('gradclasses#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/gradclasses/1/edit').to route_to('gradclasses#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/gradclasses').to route_to('gradclasses#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/gradclasses/1').to route_to('gradclasses#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/gradclasses/1').to route_to('gradclasses#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/gradclasses/1').to route_to('gradclasses#destroy', id: '1')
    end
  end
end
