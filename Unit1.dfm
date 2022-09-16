object Form1: TForm1
  Left = 241
  Top = 155
  Width = 796
  Height = 596
  VertScrollBar.Range = 200
  ActiveControl = Button1
  Caption = 'Controle de Decolagem'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = 11
  Font.Name = 'MS Sans Serif'
  Font.Pitch = fpVariable
  Font.Style = []
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 297
    Width = 780
    Height = 3
    Cursor = crVSplit
    Align = alTop
    Color = clBtnFace
    ParentColor = False
    ExplicitTop = 153
    ExplicitWidth = 536
  end
  object Memo1: TMemo
    Left = 0
    Top = 300
    Width = 486
    Height = 213
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Consolas'
    Font.Pitch = fpVariable
    Font.Style = []
    Lines.Strings = (
      'class Aviao:'
      
        #9'def __init__(self, modelo, empresa, origem, destino, passageiro' +
        's, numero):'
      #9#9'self.modelo = modelo'
      #9#9'self.empresa = empresa'
      #9#9'self.origem = origem'
      #9#9'self.destino = destino'
      #9#9'self.passageiros = passageiros'
      #9#9'self.numero = numero'#9
      #9
      #9'def __str__(self):'
      
        #9#9'return f'#39'{self.modelo} {self.empresa} {self.origem} {self.dest' +
        'ino} {self.passageiros} {self.numero}'#39
      ''
      'class Controladora:'#9#9
      #9#9'def __init__(self):'
      #9#9#9'self.fila = []'
      #9
      #9#9'def __str__(self):'
      #9#9#9'return [f'#39'{self.fila}'#39' for i in self.fila]'
      ''
      #9#9
      #9#9'def adicionar_na_fila(self, object):'
      #9#9#9
      #9#9#9'self.fila.append(object)'
      
        #9#9#9'print(f'#39'Avi'#227'o numero {object.numero} adicionado a fila com su' +
        'cesso!'#39')'
      ''
      #9#9'def remover_fila(self):'
      #9#9#9'valor_removido = self.fila.pop(0)'
      #9#9#9
      ''
      #9#9'def proximo_aviao(self):'
      #9#9#9'return str(self.fila[0])'
      #9#9
      #9#9'def total_de_avioes(self):'
      #9#9#9'return str(len(self.fila))'
      ''
      #9#9'def listar_avioes_na_pista(self):'
      #9#9#9'na_pista = []'
      #9#9#9'for aviao in self.fila:'
      #9#9#9#9'na_pista.append(str(aviao))'
      #9#9#9'return na_pista'
      ''
      ''
      
        'aviao_atributos = {'#9#39'modelo'#39' : "a254", '#39'empresa'#39' : "Gol", '#39'orige' +
        'm'#39' : "RS", '
      #9#9#9#9#9#39'destino'#39' : "SP", '#39'passageiros'#39' : 214, '#39'numero'#39' : "50" }'
      'a1 = Aviao(**aviao_atributos)'
      ''
      ''
      'a2 = Aviao("B411", "LATAM", "RJ", "MG", 365, "245718")'
      ''
      'controladora = Controladora()'
      ''
      'controladora.adicionar_na_fila(a1)'
      'controladora.adicionar_na_fila(a2)'
      ''
      
        'print("Comandos: \n adicionar: Adicionar um avi'#227'o na fila! \n de' +
        'colar: Faz o primeiro avi'#227'o da fila decolar! \n listar: Lista to' +
        'dos os avi'#245'es que est'#227'o na fila! \n proximo: Exibe as informa'#231#245'e' +
        's do pr'#243'ximo avi'#227'o a decolar! \n total: Exibe o n'#250'mero total de ' +
        'avi'#245'es que est'#227'o na fila! \n posi'#231#227'o: Exibe a posi'#231#227'o do avi'#227'o n' +
        'a fila pelo seu n'#250'mero! \n sair: Sai do programa!" )'
      ''
      ''
      'while True:'
      #9'comandos = input("Digite o comando: ")'
      #9'if comandos == "sair":'
      #9#9'print("Saindo do programa!")'
      #9#9'break'
      ''
      #9'elif comandos == "adicionar":'
      #9#9'modelo = input("Digite o modelo do avi'#227'o: ")'
      #9#9'empresa = input("Digite a empresa: ")'
      #9#9'origem = input("Digite a origem: ")'
      #9#9'destino = input("Digite o destino: ")'
      #9#9'passageiros = input("Digite o n'#250'mero de passageiros: ")'
      #9#9'numero = input("Digite o n'#250'mero do avi'#227'o: ")'
      
        #9#9'controladora.adicionar_na_fila(Aviao(modelo, empresa, origem, ' +
        'destino, passageiros, numero))'#9#9
      ''
      #9'elif comandos == "decolar":'
      #9#9'print(f'#39'Avi'#227'o {controladora.fila[0]} decolou com sucesso!'#39')'
      #9#9'controladora.remover_fila()'
      ''
      #9'elif comandos == "listar":'
      #9#9'print(controladora.listar_avioes_na_pista())'
      ''
      #9'elif comandos == "proximo":'
      
        #9#9'print("O pr'#243'ximo avi'#227'o na vila de decolagem '#233': " + controlador' +
        'a.proximo_aviao())'
      #9'elif comandos == "total":'
      
        #9#9'print("Total de avi'#245'es na fila de decolagem: " + controladora.' +
        'total_de_avioes())'
      #9'elif comandos == "posicao":'
      #9#9'posicao = input("Digite o n'#250'mero do avi'#227'o: ")'#9#9
      #9#9'for index, av in enumerate(controladora.fila):'
      #9#9#9'if av.numero == posicao:'
      #9#9#9#9'print(f"O avi'#227'o est'#225' na posi'#231#227'o: {index}")'
      #9#9#9#9'break'
      ''
      #9#9#9
      #9'else:'
      #9#9'print("Comando inv'#225'lido!")')
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 513
    Width = 780
    Height = 44
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object Button1: TButton
      Left = 6
      Top = 8
      Width = 115
      Height = 25
      Caption = 'Execute script'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 168
      Top = 8
      Width = 91
      Height = 25
      Caption = 'Load script...'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 264
      Top = 8
      Width = 89
      Height = 25
      Caption = 'Save script...'
      TabOrder = 2
      OnClick = Button3Click
    end
  end
  object Memo2: TMemo
    Left = 0
    Top = 0
    Width = 780
    Height = 297
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Consolas'
    Font.Pitch = fpVariable
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 2
  end
  object StaticText1: TStaticText
    Left = 486
    Top = 300
    Width = 294
    Height = 213
    Align = alRight
    AutoSize = False
    Caption = 
      'Comandos:                                        adicionar: Adic' +
      'ionar um avi'#227'o na fila!          decolar: Faz o primeiro avi'#227'o d' +
      'a fila decolar!                                                 ' +
      ' listar: Lista todos os avi'#245'es que est'#227'o na fila!               ' +
      '                                       proximo: Exibe as informa' +
      #231#245'es do pr'#243'ximo avi'#227'o a decolar!                                ' +
      '      total: Exibe o n'#250'mero total de avi'#245'es que est'#227'o na fila!  ' +
      '                                    posi'#231#227'o: Exibe a posi'#231#227'o do ' +
      'avi'#227'o na fila pelo seu n'#250'mero!                                  ' +
      '    sair: Sai do programa!'
    Color = clHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 18
    Font.Name = 'MS Sans Serif'
    Font.Pitch = fpVariable
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 3
  end
  object PythonEngine1: TPythonEngine
    IO = PythonGUIInputOutput1
    Left = 32
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.py'
    Filter = 'Python files|*.py|Text files|*.txt|All files|*.*'
    Title = 'Open'
    Left = 176
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.py'
    Filter = 'Python files|*.py|Text files|*.txt|All files|*.*'
    Title = 'Save As'
    Left = 208
  end
  object PythonGUIInputOutput1: TPythonGUIInputOutput
    UnicodeIO = True
    RawOutput = False
    Output = Memo2
    Left = 64
  end
end
