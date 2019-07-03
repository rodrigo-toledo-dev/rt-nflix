require "rails_helper"

RSpec.feature "Steps Authentication using devise", :type => :feature do
  describe "User trying access" do
    before do
      visit root_path
    end

    scenario "with error" do
      # click_on "Salvar"
      # expect(page).to have_text('Erro ao criar este Quadro, verifique os alertas: Nome do Quadro não pode ficar em branco')
    end

    scenario "with success" do
      # click_on "Salvar"
      # expect(page).to have_text('Erro ao criar este Quadro, verifique os alertas: Nome do Quadro não pode ficar em branco')
    end
  end
end