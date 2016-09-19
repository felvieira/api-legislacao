# Legislacao

API para parser das informações contidas em

```
http://legislacao.planalto.gov.br/legisla/Legislacao.nsf/FrmConsultaWeb1
```

## Como usar

### Regras

#### Requisição

```
curl -X POST 'http://legislacaobr.herokuapp.com/rules' -d "text=teste"
```
#### Resposta

```json
{
  "rules": [
    {
      "identif": "LEI 11.705/2008",
      "data": "19/06/2008",
      "situacao": "NÃO CONSTA REVOGAÇÃO EXPRESSA",
      "ementa": "ALTERA A LEI N° 9.503, DE 23 DE SETEMBRO DE 1997, QUE 'INSTITUI O CÓDIGO DE \nTRÂNSITO BRASILEIRO', E A \nLEI N° 9.294, DE 15 DE JULHO DE 1996, QUE DISPÕE SOBRE AS RESTRIÇÕES AO USO E À \nPROPAGANDA DE PRODUTOS FUMÍGEROS, BEBIDAS ALCOÓLICAS, MEDICAMENTOS, TERAPIAS E \nDEFENSIVOS AGRÍCOLAS, NOS TERMOS DO PAR. 4° DO ART. 220 DA CONSTITUIÇÃO \nFEDERAL, PARA INIBIR O CONSUMO DE BEBIDA ALCOÓLICA POR CONDUTOR DE VEÍCULO \nAUTOMOTOR, E DÁ OUTRAS PROVIDÊNCIAS.",
      "detalhes": "https://legislacao.planalto.gov.br/LEGISLA/Legislacao.nsf/viwTodos/01A88EC8002A02C68325746E003EEF2E?OpenDocument&HIGHLIGHT=1"
    },
    {
      "identif": "DEC 6.488/2008",
      "data": "19/06/2008",
      "situacao": "NÃO CONSTA REVOGAÇÃO EXPRESSA",
      "ementa": "REGULAMENTA OS ARTS. 276 E 306 DA LEI N° 9.503, DE 23 DE SETEMBRO DE 1997 - \nCÓDIGO DE TRÂNSITO BRASILEIRO, DISCIPLINADO A MARGEM DE TOLERÂNCIA DE ÁLCOOL NO \nSANGUE E A EQUIVALÊNCIA ENTRE OS DISTINTOS TESTES DE ALCOOLEMIA PARA EFEITOS DE \nCRIME DE TRÂNSITO.",
      "detalhes": "https://legislacao.planalto.gov.br/LEGISLA/Legislacao.nsf/viwTodos/F6E285EAAC0A0A3A8325746E004A9403?OpenDocument&HIGHLIGHT=1"
    },
    {
      "identif": "LEI 11.605/2007",
      "data": "05/12/2007",
      "situacao": "NÃO CONSTA REVOGAÇÃO EXPRESSA",
      "ementa": "INSTITUI O DIA NACIONAL DO TESTE DO PEZINHO A SER COMEMORADO NO DIA 6 DE JUNHO \nDE CADA ANO.",
      "detalhes": "https://legislacao.planalto.gov.br/LEGISLA/Legislacao.nsf/viwTodos/41B10807DED818E3832573A9003C4339?OpenDocument&HIGHLIGHT=1"
    },
    {
      "identif": "LEI 11.521/2007",
      "data": "18/09/2007",
      "situacao": "NÃO CONSTA REVOGAÇÃO EXPRESSA",
      "ementa": "ALTERA A LEI N° 9.434, DE 4 DE FEVEREIRO DE 1997, PARA PERMITIR A RETIRADA PELO \nSISTEMA ÚNICO DE SAÚDE DE ÓRGÃOS E TECIDOS DE DOADORES QUE SE ENCONTREM EM \nINSTITUIÇÕES HOSPITALARES NÃO AUTORIZADAS A REALIZAR TRANSPLANTES.",
      "detalhes": "https://legislacao.planalto.gov.br/LEGISLA/Legislacao.nsf/viwTodos/63C6F2BCB2C0AAB18325735B00462769?OpenDocument&HIGHLIGHT=1"
    },
    {
      "identif": "LEI 11.275/2006",
      "data": "07/02/2006",
      "situacao": "NÃO CONSTA REVOGAÇÃO EXPRESSA",
      "ementa": "ALTERA A REDAÇÃO DOS ARTS. 165, 277 E 302 DA LEI Nº 9.503, DE 23 DE SETEMBRO DE \n1997, QUE INSTITUI O CÓDIGO DE TRÂNSITO BRASILEIRO.",
      "detalhes": "https://legislacao.planalto.gov.br/LEGISLA/Legislacao.nsf/viwTodos/6589EE14F09AB7300325710F003E78A1?OpenDocument&HIGHLIGHT=1"
    },
    {
      "identif": "DEC 5.123/2004",
      "data": "01/07/2004",
      "situacao": "NÃO CONSTA REVOGAÇÃO EXPRESSA",
      "ementa": "REGULAMENTA A LEI N.º 10.826, DE 22 DE DEZEMBRO DE 2003, QUE DISPÕE SOBRE \nREGISTRO, POSSE E COMERCIALIZAÇÃO DE ARMAS DE FOGO E MUNIÇÃO, SOBRE O SISTEMA \nNACIONAL DE ARMAS - SINARM E DEFINE CRIMES.",
      "detalhes": "https://legislacao.planalto.gov.br/LEGISLA/Legislacao.nsf/viwTodos/CB2C05FD1B24811703256EC5005141F8?OpenDocument&HIGHLIGHT=1"
    },
    {
      "identif": "LEI 10.669/2003",
      "data": "14/05/2003",
      "situacao": "NÃO CONSTA REVOGAÇÃO EXPRESSA",
      "ementa": "ALTERA A LEI Nº 6.360, DE 23 DE SETEMBRO DE 1976, QUE DISPÕE SOBRE A VIGILÂNCIA \nSANITÁRIA A QUE FICAM SUJEITOS, OS MEDICAMENTOS, AS DROGAS, OS INSUMOS \nFARMACÊUTICOS E CORRELATOS, COSMÉTICOS, SANEANTES E OUTROS PRODUTOS.",
      "detalhes": "https://legislacao.planalto.gov.br/LEGISLA/Legislacao.nsf/viwTodos/BEF0B2E718ADF76D03256D2700477DFD?OpenDocument&HIGHLIGHT=1"
    },
    {
      "identif": "MPV 91/2002",
      "data": "23/12/2002",
      "situacao": "CONVERTIDA",
      "ementa": "ALTERA A LEI Nº 6.360, DE 23 DE SETEMBRO DE 1976, QUE DISPÕE SOBRE A VIGILÂNCIA \nSANITÁRIA A QUE FICAM SUJEITOS, AS DROGAS, OS INSUMOS FARMACÊUTICOS E \nCORRELATOS, COSMÉTICOS, SANEANTES E OUTROS PRODUTOS.",
      "detalhes": "https://legislacao.planalto.gov.br/LEGISLA/Legislacao.nsf/viwTodos/B0D329F2B6E7C82F03256C9B004E9121?OpenDocument&HIGHLIGHT=1"
    },
    {
      "identif": "LEI 10.603/2002",
      "data": "17/12/2002",
      "situacao": "NÃO CONSTA REVOGAÇÃO EXPRESSA",
      "ementa": "DISPÕE SOBRE A PROTEÇÃO DE INFORMAÇÃO NÃO DIVULGADA SUBMETIDA PARA APROVAÇÃO DA \nCOMERCIALIZAÇÃO DE PRODUTOS E DÁ OUTRAS PROVIDÊNCIAS.",
      "detalhes": "https://legislacao.planalto.gov.br/LEGISLA/Legislacao.nsf/viwTodos/D6A26612D210C28103256C930046C989?OpenDocument&HIGHLIGHT=1"
    },
    {
      "identif": "MPV 69/2002",
      "data": "26/09/2002",
      "situacao": "CONVERTIDA",
      "ementa": "DISPÕE SOBRE A PROTEÇÃO DE INFORMAÇÃO NÃO DIVULGADA SUBMETIDA PARA APROVAÇÃO DA \nCOMERCIALIZAÇÃO DE PRODUTOS E DÁ OUTRAS PROVIDÊNCIAS.",
      "detalhes": "https://legislacao.planalto.gov.br/LEGISLA/Legislacao.nsf/viwTodos/927006D97C098C1A03256C41004AD172?OpenDocument&HIGHLIGHT=1"
    },
    {
      "identif": "DEC 2.843/1998",
      "data": "16/11/1998",
      "situacao": "NÃO CONSTA REVOGAÇÃO EXPRESSA",
      "ementa": "REGULAMENTA A LEI 9.092, DE 12/09/1995, QUE DESTINA A RENDA LÍQUIDA DE UM TESTE \nDA LOTERIA ESPORTIVA FEDERAL A FEDERAÇÃO NACIONAL DAS APAES E DÁ OUTRAS \nPROVIDÊNCIAS.",
      "detalhes": "https://legislacao.planalto.gov.br/LEGISLA/Legislacao.nsf/viwTodos/DB5FF4AA2264AA25032569FA00758FD8?OpenDocument&HIGHLIGHT=1"
    },
    {
      "identif": "DLG 64/1998",
      "data": "02/07/1998",
      "situacao": "NÃO CONSTA REVOGAÇÃO EXPRESSA",
      "ementa": "APROVA O TEXTO DO TRATADO DE PROIBIÇÃO COMPLETA DE TESTES NUCLEARES - CTBT, \nCONCLUÍDO EM NOVA IORQUE, EM 24 DE SETEMBRO DE 1996.",
      "detalhes": "https://legislacao.planalto.gov.br/LEGISLA/Legislacao.nsf/viwTodos/45E41A4C637354F6032569FA006BF215?OpenDocument&HIGHLIGHT=1"
    },
    {
      "identif": "DEC 2.179/1997",
      "data": "18/03/1997",
      "situacao": "NÃO CONSTA REVOGAÇÃO EXPRESSA",
      "ementa": "DISPÕE SOBRE A CONCESSÃO DE INCENTIVOS FISCAIS PARA O DESENVOLVIMENTO REGIONAL \nPARA OS PRODUTOS QUE ESPECIFICA E DÁ OUTRAS PROVIDÊNCIAS.",
      "detalhes": "https://legislacao.planalto.gov.br/LEGISLA/Legislacao.nsf/viwTodos/B83B8FFDB3E1DF90032569FA006ACAA1?OpenDocument&HIGHLIGHT=1"
    },
    {
      "identif": "LEI 9.449/1997",
      "data": "14/03/1997",
      "situacao": "NÃO CONSTA REVOGAÇÃO EXPRESSA",
      "ementa": "REDUZ O IMPOSTO DE IMPORTAÇÃO PARA OS PRODUTOS QUE ESPECIFICA E DÁ OUTRAS \nPROVIDÊNCIAS.",
      "detalhes": "https://legislacao.planalto.gov.br/LEGISLA/Legislacao.nsf/viwTodos/A288DF73F04172FB032569FA006AC94E?OpenDocument&HIGHLIGHT=1"
    },
    {
      "identif": "LEI 9.440/1997",
      "data": "14/03/1997",
      "situacao": "NÃO CONSTA REVOGAÇÃO EXPRESSA",
      "ementa": "ESTABELECE INCENTIVOS FISCAIS PARA O DESENVOLVIMENTO REGIONAL E DÁ OUTRAS \nPROVIDÊNCIAS.",
      "detalhes": "https://legislacao.planalto.gov.br/LEGISLA/Legislacao.nsf/viwTodos/7CE6772854828158032569FA006AC8A3?OpenDocument&HIGHLIGHT=1"
    },
    {
      "identif": "MPV 1.532/1996",
      "data": "18/12/1996",
      "situacao": "ORIGINÁRIA REEDITADA CONVERTIDA",
      "ementa": "ESTABELECE INCENTIVOS FISCAIS PARA O DESENVOLVIMENTO REGIONAL E DÁ OUTRAS \nPROVIDÊNCIAS.",
      "detalhes": "https://legislacao.planalto.gov.br/LEGISLA/Legislacao.nsf/viwTodos/51500A44A6EC9E4F032569FA006A9597?OpenDocument&HIGHLIGHT=1"
    },
    {
      "identif": "DEC 2.072/1996",
      "data": "14/11/1996",
      "situacao": "NÃO CONSTA REVOGAÇÃO EXPRESSA",
      "ementa": "DISPÕE SOBRE A REDUÇÃO DO IMPOSTO DE IMPORTAÇÃO PARA OS PRODUTOS QUE ESPECIFICA \nE DÁ OUTRAS PROVIDÊNCIAS.",
      "detalhes": "https://legislacao.planalto.gov.br/LEGISLA/Legislacao.nsf/viwTodos/71AC583006E78E4A032569FA006A8659?OpenDocument&HIGHLIGHT=1"
    },
    {
      "identif": "DEC 1.863/1996",
      "data": "16/04/1996",
      "situacao": "REVOGADO",
      "ementa": "DISPÕE SOBRE A REDUÇÃO DO IMPOSTO DE IMPORTAÇÃO PARA OS PRODUTOS QUE ESPECIFICA \nE DÁ OUTRAS PROVIDÊNCIAS.",
      "detalhes": "https://legislacao.planalto.gov.br/LEGISLA/Legislacao.nsf/viwTodos/99C421E0DC2FE6BF032569FA006A0151?OpenDocument&HIGHLIGHT=1"
    },
    {
      "identif": "DEC 1.761/1995",
      "data": "26/12/1995",
      "situacao": "REVOGADO",
      "ementa": "DISPÕE SOBRE A REDUÇÃO DO IMPOSTO DE IMPORTAÇÃO PARA OS PRODUTOS QUE ESPECIFICA \nE DÁ OUTRAS PROVIDÊNCIAS.",
      "detalhes": "https://legislacao.planalto.gov.br/LEGISLA/Legislacao.nsf/viwTodos/23CD8D09306533CE032569FA0069DC30?OpenDocument&HIGHLIGHT=1"
    },
    {
      "identif": "LEI 9.092/1995",
      "data": "12/09/1995",
      "situacao": "NÃO CONSTA REVOGAÇÃO EXPRESSA",
      "ementa": "DESTINA A RENDA LIQUIDA DE UM TESTE DA LOTERIA ESPORTIVA FEDERAL A FEDERAÇÃO \nNACIONAL DAS APAES E DETERMINA OUTRAS PROVIDÊNCIAS.",
      "detalhes": "https://legislacao.planalto.gov.br/LEGISLA/Legislacao.nsf/viwTodos/879FFCDE24E302BB032569FA00699313?OpenDocument&HIGHLIGHT=1"
    },
    {
      "identif": "MPV 1.047/1995",
      "data": "29/06/1995",
      "situacao": "REEDIÇÃO",
      "ementa": "REDUZ A ALÍQUOTA DO IMPOSTO DE IMPORTAÇÃO PARA OS PRODUTOS QUE ESPECÍFICA E DÁ \nOUTRAS PROVIDÊNCIAS,",
      "detalhes": "https://legislacao.planalto.gov.br/LEGISLA/Legislacao.nsf/viwTodos/C03A3DB52AD1E121032569FA00697B1C?OpenDocument&HIGHLIGHT=1"
    },
    {
      "identif": "MPV 1.024/1995",
      "data": "13/06/1995",
      "situacao": "ORIGINÁRIA REEDITADA CONVERTIDA",
      "ementa": "REDUZ ALÍQUOTA DO IMPOSTO DE IMPORTAÇÃO PARA OS PRODUTOS QUE ESPECIFICA E DÁ \nOUTRAS PROVIDÊNCIAS.",
      "detalhes": "https://legislacao.planalto.gov.br/LEGISLA/Legislacao.nsf/viwTodos/90DB0C8514AA81FF032569FA006977EC?OpenDocument&HIGHLIGHT=1"
    },
    {
      "identif": "LEI 9.029/1995",
      "data": "13/04/1995",
      "situacao": "NÃO CONSTA REVOGAÇÃO EXPRESSA",
      "ementa": "PROÍBE A EXIGÊNCIA DE ATESTADOS DE GRAVIDEZ E ESTERILIZAÇÃO, E OUTRAS PRÁTICAS \nDISCRIMINATÓRIAS, PARA EFEITOS ADMISSIONAIS OU DE PERMANÊNCIA DA RELAÇÃO \nJURÍDICA DE TRABALHO, E DÁ OUTRAS PROVIDÊNCIAS.",
      "detalhes": "https://legislacao.planalto.gov.br/LEGISLA/Legislacao.nsf/viwTodos/B5829D5B0DD57DB9032569FA00696E13?OpenDocument&HIGHLIGHT=1"
    },
    {
      "identif": "DSN",
      "data": "29/09/1994",
      "situacao": "NÃO CONSTA REVOGAÇÃO EXPRESSA",
      "ementa": "ALTERA O DECRETO DE 14/12/1992, QUE CRIOU A COMISSÃO PERMANENTE PARA LICITAÇÃO \nINTERNACIONAL DE PRODUTOS FARMACÊUTICOS DA LINHA HUMANA E DOS RESPECTIVOS \nINSUMOS.",
      "detalhes": "https://legislacao.planalto.gov.br/LEGISLA/Legislacao.nsf/viwTodos/27F3D103F3EE003D032569FA0068D0DD?OpenDocument&HIGHLIGHT=1"
    },
    {
      "identif": "LEI 7.921/1989",
      "data": "12/12/1989",
      "situacao": "REVOGADA",
      "ementa": "ESTIPULA O VALOR DOS DIREITOS A SEREM PAGOS A ASSOCIAÇÕES DESPORTIVAS PELO USO \nDE SUAS DENOMINAÇÕES E SÍMBOLOS, NA LOTERIA ESPORTIVA FEDERAL.",
      "detalhes": "https://legislacao.planalto.gov.br/LEGISLA/Legislacao.nsf/viwTodos/570C7951AC21408D032569FA00677A65?OpenDocument&HIGHLIGHT=1"
    }
  ],
  "pages": [
    {
      "link": "http://legislacao.planalto.gov.br/legisla/Legislacao.nsf/todos/legisla/Legislacao.nsf/viwtodos/C4BE88CA0E27F58E0325803300010B9B?OpenDocument",
      "text": "02"
    },
    {
      "link": "http://legislacao.planalto.gov.br/legisla/Legislacao.nsf/todos/legisla/Legislacao.nsf/viwtodos/C4BE88CA0E27F58E0325803300010B9B?OpenDocument",
      "text": "02"
    }
  ]
}

```

### Paginação

#### Requisição

```
curl -X POST 'http://legislacaobr.herokuapp.com/get_page' -d 'page=http://legislacao.planalto.gov.br/legisla/Legislacao.nsf/todos/legisla/Legislacao.nsf/viwtodos/C4BE88CA0E27F58E0325803300010B9B?OpenDocument'
```

#### Resposta

```json
{
  "rules": [
    {
      "identif": "DEC 49.944/1961",
      "data": "13/01/1961",
      "situacao": "REVOGADO",
      "ementa": "ESTABELECE A OBRIGATORIEDADE DOS TESTES PARA TRATORES, MAQUINAS E FERRAMENTAS \nAGRICOLAS IMPORTADAS OU FABRICADAS NO PAIS, E DA OUTRAS PROVIDENCIAS.",
      "detalhes": "https://legislacao.planalto.gov.br/LEGISLA/Legislacao.nsf/viwTodos/620ED0B5BBB23FBC032569FA00533AF2?OpenDocument&HIGHLIGHT=1"
    },
    {
      "identif": "DPL 4.326/1921",
      "data": "10/09/1921",
      "situacao": "NÃO CONSTA REVOGAÇÃO EXPRESSA",
      "ementa": "  CONCEDE A D. LEOPOLDINA MARIA DO AMARAL TESTE E OUTRA O MONTEPIO CIVIL  A   \nQUE TEM DIREITO POR MORTE DE SEU FINADO MARIDO E PAI  JOAQUIM  RODRIGUES   \nTESTE, EX-AGENTE DA ESTRADA DE FERRO RIO D'OURO,  A  CONTAR  DE  OUTUBRO   \n1908.",
      "detalhes": "https://legislacao.planalto.gov.br/LEGISLA/Legislacao.nsf/viwTodos/8C052C624C7B7EA6032569FA006D0A71?OpenDocument&HIGHLIGHT=1"
    }
  ],
  "pages": [
    {
      "link": "http://legislacao.planalto.gov.br/legisla/Legislacao.nsf/todos/legisla/Legislacao.nsf/viwtodos/0CC7E0BA50FDFE470325803300010B99?OpenDocument",
      "text": "01"
    },
    {
      "link": "http://legislacao.planalto.gov.br/legisla/Legislacao.nsf/todos/legisla/Legislacao.nsf/viwtodos/0CC7E0BA50FDFE470325803300010B99?OpenDocument",
      "text": "01"
    }
  ]
}
```

### Detalhes

#### Requisição

```
curl -X POST 'http://legislacaobr.herokuapp.com/details' -d "url=https://legislacao.planalto.gov.br/LEGISLA/Legislacao.nsf/viwTodos/8C052C624C7B7EA6032569FA006D0A71?OpenDocument&HIGHLIGHT=1"
```
#### Resposta

```json
{
  "ementa": "  CONCEDE A D. LEOPOLDINA MARIA DO AMARAL TESTE E OUTRA O MONTEPIO CIVIL  A   QUE TEM DIREITO POR MORTE DE SEU FINADO MARIDO E PAI  JOAQUIM  RODRIGUES   TESTE, EX-AGENTE DA ESTRADA DE FERRO RIO D'OURO,  A  CONTAR  DE  OUTUBRO   1908.",
  "situacao": "NÃO CONSTA REVOGAÇÃO EXPRESSA",
  "chefe_do_governo": "EPITÁCIO PESSOA",
  "origem": "",
  "fonte": "  COLECAO DE LEIS DO BRASIL\n\n\n",
  "link": "http://legis.senado.gov.br/legislacao/ListaNormas.action?numero=4326&tipo_norma=DPL&data=19210910&link=s",
  "referenda": "",
  "alteracao": "",
  "correlacao": "",
  "interpretacao": "",
  "veto": "",
  "assunto": "",
  "classificacao_de_direito": "",
  "observacao": ""
}
```
