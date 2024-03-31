object DM: TDM
  OnCreate = DataModuleCreate
  Height = 480
  Width = 733
  object Conexao: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=siscomercial;Data Source=DESKTOP-0B63LN' +
      'M'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 8
    Top = 8
  end
  object qryCadFornecedores: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT forn_cod, forn_nm_fantasia, forn_razao_social, forn_dt_ca' +
        'd, forn_cnpj, forn_ativo, forn_img, forn_observacoes  FROM FORNE' +
        'CEDORES')
    Left = 96
    Top = 8
    object qryCadFornecedoresforn_cod: TAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'forn_cod'
      ReadOnly = True
    end
    object qryCadFornecedoresforn_nm_fantasia: TStringField
      FieldName = 'forn_nm_fantasia'
      Size = 50
    end
    object qryCadFornecedoresforn_razao_social: TStringField
      FieldName = 'forn_razao_social'
      Size = 100
    end
    object qryCadFornecedoresforn_dt_cad: TWideStringField
      FieldName = 'forn_dt_cad'
      Size = 10
    end
    object qryCadFornecedoresforn_cnpj: TLargeintField
      FieldName = 'forn_cnpj'
    end
    object qryCadFornecedoresforn_ativo: TBooleanField
      FieldName = 'forn_ativo'
    end
    object qryCadFornecedoresforn_img: TStringField
      FieldName = 'forn_img'
      Size = 500
    end
    object qryCadFornecedoresforn_observacoes: TStringField
      FieldName = 'forn_observacoes'
      Size = 500
    end
  end
  object qry_cad_cliente: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT cli_cod, cli_nome, cli_cpf, cli_renda, cli_ativo, cli_dt_' +
        'nasc, cli_img FROM CLIENTES')
    Left = 200
    Top = 8
    object qry_cad_clientecli_cod: TAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cli_cod'
      ReadOnly = True
    end
    object qry_cad_clientecli_nome: TStringField
      FieldName = 'cli_nome'
      Size = 80
    end
    object qry_cad_clientecli_cpf: TLargeintField
      FieldName = 'cli_cpf'
    end
    object qry_cad_clientecli_renda: TBCDField
      FieldName = 'cli_renda'
      Precision = 8
      Size = 2
    end
    object qry_cad_clientecli_ativo: TBooleanField
      FieldName = 'cli_ativo'
    end
    object qry_cad_clientecli_dt_nasc: TWideStringField
      FieldName = 'cli_dt_nasc'
      Size = 10
    end
    object qry_cad_clientecli_img: TStringField
      FieldName = 'cli_img'
      Size = 500
    end
  end
  object qry_cad_funcionarios: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT fun_cod, fun_nome, fun_dt_nasc, fun_salario, fun_login, f' +
        'un_senha, fun_tp_usu FROM FUNCIONARIOS')
    Left = 312
    Top = 8
    object qry_cad_funcionariosfun_cod: TAutoIncField
      FieldName = 'fun_cod'
      ReadOnly = True
    end
    object qry_cad_funcionariosfun_nome: TStringField
      FieldName = 'fun_nome'
      Size = 80
    end
    object qry_cad_funcionariosfun_dt_nasc: TWideStringField
      FieldName = 'fun_dt_nasc'
      Size = 10
    end
    object qry_cad_funcionariosfun_salario: TBCDField
      FieldName = 'fun_salario'
      Precision = 8
      Size = 2
    end
    object qry_cad_funcionariosfun_login: TStringField
      FieldName = 'fun_login'
      Size = 12
    end
    object qry_cad_funcionariosfun_senha: TStringField
      FieldName = 'fun_senha'
      Size = 12
    end
    object qry_cad_funcionariosfun_tp_usu: TStringField
      FieldName = 'fun_tp_usu'
    end
  end
  object qry_cad_produto: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT prod_cod, prod_nome, prod_img, prod_estq, prod_vlr_vnd  F' +
        'ROM PRODUTOS')
    Left = 424
    Top = 8
    object qry_cad_produtoprod_cod: TAutoIncField
      FieldName = 'prod_cod'
      ReadOnly = True
    end
    object qry_cad_produtoprod_nome: TStringField
      FieldName = 'prod_nome'
      Size = 50
    end
    object qry_cad_produtoprod_img: TStringField
      FieldName = 'prod_img'
      Size = 500
    end
    object qry_cad_produtoprod_estq: TIntegerField
      FieldName = 'prod_estq'
    end
    object qry_cad_produtoprod_vlr_vnd: TBCDField
      FieldName = 'prod_vlr_vnd'
      Precision = 8
      Size = 2
    end
  end
  object qry_cad_venda: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT vnd_cod, cli_cod, fun_cod, vnd_data FROM VENDAS')
    Left = 528
    Top = 8
    object qry_cad_vendavnd_cod: TAutoIncField
      FieldName = 'vnd_cod'
      ReadOnly = True
    end
    object qry_cad_vendacli_cod: TIntegerField
      FieldName = 'cli_cod'
    end
    object qry_cad_vendafun_cod: TIntegerField
      FieldName = 'fun_cod'
    end
    object qry_cad_vendavnd_data: TWideStringField
      FieldName = 'vnd_data'
      Size = 10
    end
  end
  object qry_cad_compra: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT comp_cod, comp_data, forn_cod FROM COMPRAS')
    Left = 632
    Top = 8
    object qry_cad_compracomp_cod: TAutoIncField
      FieldName = 'comp_cod'
      ReadOnly = True
    end
    object qry_cad_compracomp_data: TWideStringField
      FieldName = 'comp_data'
      Size = 10
    end
    object qry_cad_compraforn_cod: TIntegerField
      FieldName = 'forn_cod'
    end
  end
  object qry_pesq_fornecedor: TADOQuery
    Parameters = <>
    Left = 56
    Top = 112
  end
  object qry_pesq_cliente: TADOQuery
    Parameters = <>
    Left = 168
    Top = 112
  end
  object qry_pesq_funcionarios: TADOQuery
    Parameters = <>
    Left = 288
    Top = 112
  end
  object qry_pesq_produto: TADOQuery
    Parameters = <>
    Left = 408
    Top = 112
  end
  object qry_pesq_venda: TADOQuery
    Parameters = <>
    Left = 512
    Top = 112
  end
  object qery_pesq_compra: TADOQuery
    Parameters = <>
    Left = 624
    Top = 112
  end
  object qry_cad_forn_endereco: TADOQuery
    Parameters = <>
    Left = 56
    Top = 200
  end
  object qry_cad_cli_endereco: TADOQuery
    Parameters = <>
    Left = 192
    Top = 200
  end
  object qry_cad_vnd_prod: TADOQuery
    Parameters = <>
    Left = 512
    Top = 200
  end
  object qry_cad_comp_prod: TADOQuery
    Parameters = <>
    Left = 632
    Top = 200
  end
  object qry_cad_forn_tel: TADOQuery
    Parameters = <>
    Left = 40
    Top = 280
  end
  object qry_cad_cli_tel: TADOQuery
    Parameters = <>
    Left = 184
    Top = 288
  end
  object qry_lista_vnd_prod: TADOQuery
    Parameters = <>
    Left = 512
    Top = 288
  end
  object qry_exibe_comp_prod: TADOQuery
    Parameters = <>
    Left = 632
    Top = 288
  end
  object qry_lista_forn_prod: TADOQuery
    Parameters = <>
    Left = 168
    Top = 384
  end
  object qry_cad_forn_prod: TADOQuery
    Parameters = <>
    Left = 504
    Top = 384
  end
  object qry_total: TADOQuery
    Parameters = <>
    Left = 24
    Top = 392
  end
end
