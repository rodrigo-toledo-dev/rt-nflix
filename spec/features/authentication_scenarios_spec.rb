require "rails_helper"

RSpec.feature "Steps Authentication using devise", :type => :feature do
  before do
    visit root_path
  end

  describe "User try sign in" do
    scenario "with error" do
      expect(page).to have_text('Para continuar, efetue login ou registre-se.')
      click_on "Log in"
      expect(page).to have_text('Email ou senha inválida.')
    end

    context "success" do
      before do
        @user = create(:user)
      end
      scenario "with success" do
        fill_in "Email",	with: @user.email
        fill_in "Senha",	with: @user.password 
        click_on "Log in"
        expect(page).to have_text('Login efetuado com sucesso!')
      end
    end
  end

  describe "User try sign up" do
    before do
      click_on "Sign up"
    end

    context "with error" do
      
      scenario "with empty fields" do
        click_on "Sign up"
        expect(page).to have_text('Não foi possível salvar: 2 erros.')
        expect(page).to have_text('Email não pode ficar em branco')
        expect(page).to have_text('Senha não pode ficar em branco')
      end

      scenario "with short password fields" do
        fill_in "Senha",	with: "123" 
        click_on "Sign up"
        expect(page).to have_text('Não foi possível salvar: 3 erros.')
        expect(page).to have_text('Email não pode ficar em branco')
        expect(page).to have_text('Confirmação da senha não é igual a Senha')
        expect(page).to have_text('Senha é muito curto (mínimo: 6 caracteres)')
      end

      scenario "with invalid fields" do
        fill_in "Senha",	with: "sometext" 
        click_on "Sign up"
        expect(page).to have_text('Não foi possível salvar: 2 erros.')
        expect(page).to have_text('Email não pode ficar em branco')
        expect(page).to have_text('Confirmação da senha não é igual a Senha')
      end
    end
    
    context "with success" do
      scenario "with all attributes" do
        fill_in "Email",	with: Faker::Internet.email 
        fill_in "Senha",	with: "sometext" 
        fill_in "Confirmação da senha",	with: "sometext"
        click_on "Sign up"
        expect(page).to have_text('Login efetuado com sucesso. Se não foi autorizado, a confirmação será enviada por e-mail.')
      end
    end
    
  end
  
end