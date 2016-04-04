require 'rails_helper'

RSpec.describe PeopleController, type: :controller do

  login_user
  let(:person) { create :person }

  describe "GET #index" do
    it "assigns all people as @people" do
      get :index
      expect(assigns(:people)).to include(person)
    end
  end

  describe "GET #show" do
    it "assigns the requested person as @person" do
      get :show, id: person[:id]
      expect(assigns(:person)).to eq(person)
    end
  end

  describe "GET #new" do
    it "assigns a new person as @person" do
      get :new
      expect(assigns(:person)).to be_a_new(Person)
    end
  end

  describe "GET #edit" do
    it "assigns the requested person as @person" do
      get :edit, id: person[:id]
      expect(assigns(:person)).to eq(person)
    end
  end

  describe "POST #create" do
    it "creates a new Person" do
      expect {
        post :create, person: attributes_for(:person)
      }.to change(Person, :count).by(1)
    end

    it "assigns a newly created person as @person" do
      post :create, person: attributes_for(:person)
      expect(assigns(:person)).to be_persisted
    end

    it "redirects to the created person" do
      post :create, person: attributes_for(:person)
      expect(response).to redirect_to(Person.last)
    end
  end

  describe "PATCH #update" do
    it "assigns the requested person as @person" do
      patch :update, id: person[:id], person: attributes_for(:person, name: 'New name')
      person.reload
      expect(assigns(:person)).to eq(person)
    end

    it "redirects to the person" do
      put :update, id: person[:id], person: attributes_for(:person, name: 'New name')
      expect(response).to redirect_to(person)
    end
  end

  describe "DELETE #destroy" do
    let!(:person_delete) { create :person }

    it "destroys the requested person" do
      expect {
        delete :destroy, id: person_delete[:id]
      }.to change(Person, :count).by(-1)
    end

    it "redirects to the people list" do
      delete :destroy, id: person_delete[:id]
      expect(response).to redirect_to(people_url)
    end
  end

end
