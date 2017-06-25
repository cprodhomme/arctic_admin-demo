ActiveAdmin.register_page "CSS" do
  content do
    h2 'Buttons'

    button 'small button', class: 'small button'
    button 'button', class: 'button'
    button 'large button', class: 'large button'

    code do
      div "<button class='small button'>"
      div "<button class='button'>"
      div "<button class='large button'>"
    end
  end
end