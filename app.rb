require 'sinatra'

def generate_phrase!
  problemas = ['A miséria', 'A inflação', 'O golpe de 1964',
     'A violência', 'A crise', ' O crime', 'O nazismo', 'O bolsa família',
     'O problema da educação', 'A corrupção']
  natureza = ['é uma invenção', 'é uma estratégia','é uma manobra', 'é um complô',
  "é culpa", 'é uma criação', "é uma conspiração", 'é uma forma orquestrada',
  'é a doutrinação ideológica', 'é uma articulação']
  culpado = ['do PT', 'do Comunismo', 'dos esquerdopatas', 'da Dilma', 'do socialismo',
  'do Estado', 'da ditadura gay', 'da "esquerda caviar"', 'dos vândalos', 'das feminazis']
  motivacao = ['para desligitimar','para vandalizar','para desmoralizar', 'para destruir',
  'para regular', 'para ameaçar', 'para superar', 'para roubar', ' para aterrorizar', 'para transgredir']
  vitima = [' a economia', 'o livre mercado', 'a classe média', 'a propriedade privada', 'a nação',
  'o progresso', 'a copa', ' a familía', 'a democracia', 'a liberdade', 'os bons costumes']

   "#{problemas[rand(9)]} #{natureza[rand(9)]} #{culpado[rand(9)]} #{motivacao[rand(9)]} #{vitima[rand(10)]}."
end

get '/' do
  erb :index, :locals => {:frase => generate_phrase!}
end
