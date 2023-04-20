ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    a 'arctic_admin', href:"https://github.com/cle61/arctic_admin", class: "github-button", 'data-size': "large", 'data-show-count': "true", 'aria-label': "Star cle61/arctic_admin on GitHub"
    a 'arctic_admin-demo', href:"https://github.com/cle61/arctic_admin-demo", class: "github-button", 'data-size': "large", 'data-show-count': "true", 'aria-label': "Star cle61/arctic_admin-demo on GitHub"

    hr

    div do
      span class: "blank_slate" do
        h2 'Sponsor'
        a href: 'https://scalingo.com/', target: '_blank' do
          text_node image_tag('scalingo.svg', width: '150px')
          para 'Scalingo - PaaS Cloud Hosting for developers'
        end

        br
        br

        a href: 'https://www.captive.fr', target: '_blank' do
          text_node image_tag('logo_captive.png')
          para 'Development of tailor-made applications in less than 3 months for Startups and SMEs 🚀'
        end
      end
    end

    script :async, :defer, src: "https://buttons.github.io/buttons.js"
  end
end
