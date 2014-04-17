require 'spec_helper'

describe TodosController do

  describe "GET 'index'" do
    it "should set a new todo and query all todos" do
      todos = [Todo.make]
      Todo.stub(:all).and_return todos
      get 'index'
      assigns(:todo).should be_a(Todo)
      assigns(:todos).should eq todos
      response.should be_success
    end
  end


  describe 'POST create' do

    it 'should create a new todo and redirect to index' do
      expect do
        patch :create, todo: {name: 'my Todo'}
      end.to change(Todo, :count).by(1)
      response.should redirect_to todos_path
    end
  end

  describe 'Post destroy' do

    it 'should destroy the todo and redirct to indx' do
      @todo = Todo.make!
      expect do
        delete :destroy, id: @todo.id
      end.to change(Todo, :count).by(-1)
      response.should redirect_to todos_path
    end
  end

end
