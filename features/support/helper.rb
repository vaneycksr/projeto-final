# frozen_string_literal: true

module Helper
  def tirar_screenshot(nome_do_arquivo, status_do_cenario)
    caminho_arquivo = "report/screenshots/teste_#{status_do_cenario}"
    foto = "#{caminho_arquivo}/#{nome_do_arquivo}.png"

    # tira o screenshot
    page.save_screenshot(foto)

    # cria um link para poder ver o screenshot no relatorio
    embed(foto, 'image/png', 'Clique aqui')
  end
end
