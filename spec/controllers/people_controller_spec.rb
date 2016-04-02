require 'rails_helper'

RSpec.describe PeopleController, type: :controller do

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
    context "with valid params" do
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

    pending "with invalid params" do
      it "assigns a newly created but unsaved person as @person" do
        post :create, {:person => invalid_attributes}, valid_session
        expect(assigns(:person)).to be_a_new(Person)
      end

      it "re-renders the 'new' template" do
        post :create, {:person => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PATCH #update" do
    context "with valid params" do

      let(:new_person) { build(:person, name: 'New name') }

      it "assigns the requested person as @person" do
        patch :update, id: person[:id], person: attributes_for(:person, name: 'New name')
        expect(assigns(:person)).to eq(new_person)
      end

      it "redirects to the person" do
        put :update, id: person[:id], person: attributes_for(:person, name: 'New name')
        expect(response).to redirect_to(person)
      end
    end

    pending "with invalid params" do
      skip "it doesn't have attribures validation yet"
      it "assigns the person as @person" do
        person = Person.create! valid_attributes
        put :update, {:id => person.to_param, :person => invalid_attributes}, valid_session
        expect(assigns(:person)).to eq(person)
      end

      it "re-renders the 'edit' template" do
        person = Person.create! valid_attributes
        put :update, {:id => person.to_param, :person => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested person" do
      expect {
        delete :destroy, id: person[:id]
      }.to change(Person, :count).by(-1)
    end

    it "redirects to the people list" do
      delete :destroy, id: person[:id]
      expect(response).to redirect_to(people_url)
    end
  end

end
