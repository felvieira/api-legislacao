class Legislation
  END_POINT = URI("http://legislacao.planalto.gov.br/legisla/Legislacao.nsf/FrmConsultaWeb1")

  class << self
    def get_rules(text)
      html = request_rules(text)
      parse_rules html
    end

    def next_page(url)
      res = open_page(url)   
      parse_rules res
    end

    def get_details(url)
      html = request_details(url)
      parse_details(html)
    end

    private

    def open_page(url)
      Net::HTTP.get(URI(url)).force_encoding("ISO-8859-1").encode("UTF-8")
    end

    def request_rules(text)
      params = { 
        'WebTexto': text,
        'WebTipoPesquisa': 512,
        'WebTipo': "TODOS",
        'WebDocs': "TODOS",
        'Surrogate_WebTipoPesquisa': 1,
        'Surrogate_WebTipo': 1,
        '__Click': 0,
      }

      res = Net::HTTP.post_form(END_POINT, params)

      if res['location']
        open_page(res['location'])
      else 
        res.body
      end
    end

    def parse_rules(html)
      doc = Nokogiri::HTML(html)
      rules = []
      pages = []

      doc.css('b a:not(.link)').each do |i| 
        pages << Page.new({
          link: "http://legislacao.planalto.gov.br/legisla/Legislacao.nsf/todos#{i['href']}",
          text: i.text
        })
      end

      doc.css('.listing tr').each_with_index do |row, index|
        next if index.zero? || index == 1

        details = row.css('td:nth-child(1) b a').attribute('onclick').value
        rules << Rule.new({
          identif: row.css('td:nth-child(1)').text[1..-1],
          detalhes: "https://legislacao.planalto.gov.br/#{details[14..(details.index(',') - 1)]}",
          data: row.css('td:nth-child(2)').text[1..-1],
          situacao: row.css('td:nth-child(3)').text[1..-1],
          ementa: row.css('td:nth-child(4)').text[1..-1]
        })
      end

      pages = pages.uniq { |e| e.link }
      Rules.new rules, pages
    end

    def request_details(url)
      uri = URI(url)
      req = Net::HTTP::Get.new(uri.path)

      res = Net::HTTP.start(uri.host, uri.port, use_ssl: uri.scheme == 'https', verify_mode: OpenSSL::SSL::VERIFY_NONE) do |https|
        https.request(req)
      end

      res.body.force_encoding("ISO-8859-1").encode("UTF-8")
    end

    def parse_details(html)
      doc = Nokogiri::HTML(html)
      details_aux = {}

      doc.css('.listing tr').each_with_index do |row, index|
        next if index.zero?

        if row.css('td a').blank? 
          details_aux[row.css('th').text] = row.css('td').text                                          
        else
          details_aux[row.css('th').text] = row.css('td a').attribute('href').text
        end
      end

      Details.new({
        ementa:                   details_aux["Ementa:"],
        situacao:                 details_aux["Situação:"],
        chefe_do_governo:         details_aux["Chefe de Governo:"],
        origem:                   details_aux["Origem:"],
        fonte:                    details_aux["Fonte:"],
        link:                     details_aux["Link:"],
        referenda:                details_aux["Referenda:"],
        alteracao:                details_aux["Alteração:"],
        correlacao:               details_aux["Correlação:"],
        interpretacao:            details_aux["Interpretação:"],
        veto:                     details_aux["Veto:"],
        assunto:                  details_aux["Assunto:"],
        classificacao_de_direito: details_aux["Classificação de Direito:"],
        observacao:               details_aux["Observação:"]
      })
    end
  end
end

