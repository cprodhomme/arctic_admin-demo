ActiveAdmin.register_page "CSS" do
  content do
    a 'arctic_admin', href:"https://github.com/cle61/arctic_admin", class: "github-button", 'data-size': "large", 'data-show-count': "true", 'aria-label': "Star cle61/arctic_admin on GitHub"
    a 'arctic_admin-demo', href:"https://github.com/cle61/arctic_admin-demo", class: "github-button", 'data-size': "large", 'data-show-count': "true", 'aria-label': "Star cle61/arctic_admin-demo on GitHub"

    hr
    h2 'Buttons'

    button 'small button', class: 'small button'
    button 'button', class: 'button'
    button 'large button', class: 'large button'

    code do
      div "<button class='small button'>"
      div "<button class='button'>"
      div "<button class='large button'>"
    end
    br
    hr
    h2 'Tabs'
    tabs do
      tab :active do
        table_for 'Lorem Ipsum' do
          span 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse consectetur metus ligula, a suscipit orci congue non. Nulla facilisi. Curabitur tempor, massa ac rhoncus congue, leo sem placerat magna, at dapibus odio erat sit amet ex. Quisque placerat sit amet ex quis viverra. Morbi in suscipit turpis. Sed magna erat, mollis ac placerat et, mollis venenatis lectus. Morbi rutrum aliquam accumsan. Donec quis mi non ipsum suscipit condimentum a sit amet lectus.'
        end
      end

      tab :inactive do
        table_for 'more infos' do
          span 'Vestibulum dictum non magna vitae sagittis. Etiam purus orci, facilisis ut diam id, consectetur tincidunt ligula. Nullam sagittis, libero et maximus hendrerit, nisl tortor condimentum ex, at imperdiet sem lectus id turpis. Mauris eu erat quis erat sollicitudin blandit a nec arcu. Vestibulum eget consectetur mi, et sagittis massa. In non elementum nunc, ut maximus leo. Vestibulum ut elementum nibh. Nam facilisis libero in turpis ultricies faucibus. Praesent vel viverra lorem. Donec elementum tincidunt metus nec convallis. Nullam pharetra viverra dolor sit amet porttitor.'
        end
      end
    end

    script :async, :defer, src: "https://buttons.github.io/buttons.js"
  end
end
