require 'rails_helper'

RSpec.describe NotesController, type: :routing do
  describe 'routing' do

    it 'routes to #index' do
      expect(get: '/notes').to route_to('notes#index')
    end

    it 'routes to #show' do
      expect(get: '/notes/1').to route_to('notes#show', id: '1')
    end

    it 'routes to #new' do
      expect(get: '/notes/new').to route_to('notes#new')
    end

    it 'routes to #update via PUT' do
      expect(put: '/notes/1').to route_to('notes#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/notes/1').to route_to('notes#update', id: '1')
    end
  end
end
