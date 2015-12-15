Version =20
VersionRequired =20
Begin Form
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =10658
    DatasheetFontHeight =11
    ItemSuffix =15
    Right =18105
    Bottom =12510
    DatasheetGridlinesColor =15132391
    Filter ="[id] = 1"
    RecSrcDt = Begin
        0xc44bacd333ade440
    End
    RecordSource ="objects"
    DatasheetFontName ="Calibri"
    PrtMip = Begin
        0x6801000068010000680100006801000000000000201c0000e010000001000000 ,
        0x010000006801000000000000a10700000100000001000000
    End
    OnLoad ="[Event Procedure]"
    FilterOnLoad =0
    ShowPageMargins =0
    DisplayOnSharePointSite =1
    DatasheetAlternateBackColor =15921906
    DatasheetGridlinesColor12 =0
    FitToScreen =1
    DatasheetBackThemeColorIndex =1
    BorderThemeColorIndex =3
    ThemeFontIndex =1
    ForeThemeColorIndex =0
    AlternateBackThemeColorIndex =1
    AlternateBackShade =95.0
    Begin
        Begin Label
            BackStyle =0
            FontSize =11
            FontName ="Calibri"
            ThemeFontIndex =1
            BackThemeColorIndex =1
            BorderThemeColorIndex =0
            BorderTint =50.0
            ForeThemeColorIndex =0
            ForeTint =50.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin CommandButton
            Width =1701
            Height =283
            FontSize =11
            FontWeight =400
            FontName ="Calibri"
            ForeThemeColorIndex =0
            ForeTint =75.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
            UseTheme =1
            Shape =1
            Gradient =12
            BackThemeColorIndex =4
            BackTint =60.0
            BorderLineStyle =0
            BorderColor =16777215
            BorderThemeColorIndex =4
            BorderTint =60.0
            ThemeFontIndex =1
            HoverThemeColorIndex =4
            HoverTint =40.0
            PressedThemeColorIndex =4
            PressedShade =75.0
            HoverForeThemeColorIndex =0
            HoverForeTint =75.0
            PressedForeThemeColorIndex =0
            PressedForeTint =75.0
        End
        Begin TextBox
            AddColon = NotDefault
            FELineBreak = NotDefault
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            FontSize =11
            FontName ="Calibri"
            AsianLineBreak =1
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
            ThemeFontIndex =1
            ForeThemeColorIndex =0
            ForeTint =75.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin ComboBox
            AddColon = NotDefault
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            FontSize =11
            FontName ="Calibri"
            AllowValueListEdits =1
            InheritValueList =1
            ThemeFontIndex =1
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
            ForeThemeColorIndex =2
            ForeShade =50.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin Section
            Height =9751
            Name ="Detail"
            AlternateBackColor =15921906
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =2840
                    Top =1590
                    Width =2271
                    Height =315
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="Text1"
                    ControlSource ="title"
                    GridlineColor =10921638

                    LayoutCachedLeft =2840
                    LayoutCachedTop =1590
                    LayoutCachedWidth =5111
                    LayoutCachedHeight =1905
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =570
                            Top =1590
                            Width =1695
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label2"
                            Caption ="Titel"
                            GridlineColor =10921638
                            LayoutCachedLeft =570
                            LayoutCachedTop =1590
                            LayoutCachedWidth =2265
                            LayoutCachedHeight =1905
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =2840
                    Top =2040
                    Width =3966
                    Height =1425
                    TabIndex =1
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="Text7"
                    ControlSource ="description"
                    GridlineColor =10921638

                    LayoutCachedLeft =2840
                    LayoutCachedTop =2040
                    LayoutCachedWidth =6806
                    LayoutCachedHeight =3465
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =570
                            Top =2040
                            Width =1680
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label8"
                            Caption ="Beschrijving"
                            GridlineColor =10921638
                            LayoutCachedLeft =570
                            LayoutCachedTop =2040
                            LayoutCachedWidth =2250
                            LayoutCachedHeight =2355
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =2848
                    Top =4640
                    Width =2271
                    Height =315
                    TabIndex =2
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="Text0"
                    ControlSource ="payment_method"
                    GridlineColor =10921638

                    LayoutCachedLeft =2848
                    LayoutCachedTop =4640
                    LayoutCachedWidth =5119
                    LayoutCachedHeight =4955
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =578
                            Top =4640
                            Width =1680
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label1"
                            Caption ="Betalingswijze"
                            GridlineColor =10921638
                            LayoutCachedLeft =578
                            LayoutCachedTop =4640
                            LayoutCachedWidth =2258
                            LayoutCachedHeight =4955
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =2844
                    Top =5162
                    Width =3966
                    Height =1425
                    TabIndex =3
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="Text2"
                    ControlSource ="shipment_instructions"
                    GridlineColor =10921638

                    LayoutCachedLeft =2844
                    LayoutCachedTop =5162
                    LayoutCachedWidth =6810
                    LayoutCachedHeight =6587
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =574
                            Top =5162
                            Width =1860
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label3"
                            Caption ="Betalingsinstrucitie"
                            GridlineColor =10921638
                            LayoutCachedLeft =574
                            LayoutCachedTop =5162
                            LayoutCachedWidth =2434
                            LayoutCachedHeight =5477
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =2844
                    Top =6872
                    Width =2271
                    Height =315
                    TabIndex =4
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="Text4"
                    ControlSource ="city"
                    GridlineColor =10921638

                    LayoutCachedLeft =2844
                    LayoutCachedTop =6872
                    LayoutCachedWidth =5115
                    LayoutCachedHeight =7187
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =574
                            Top =6872
                            Width =1680
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label5"
                            Caption ="Plaatsnaam"
                            GridlineColor =10921638
                            LayoutCachedLeft =574
                            LayoutCachedTop =6872
                            LayoutCachedWidth =2254
                            LayoutCachedHeight =7187
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =2844
                    Top =7442
                    Width =2271
                    Height =315
                    TabIndex =5
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="Text6"
                    ControlSource ="country"
                    GridlineColor =10921638

                    LayoutCachedLeft =2844
                    LayoutCachedTop =7442
                    LayoutCachedWidth =5115
                    LayoutCachedHeight =7757
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =574
                            Top =7442
                            Width =1680
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label7"
                            Caption ="Land"
                            GridlineColor =10921638
                            LayoutCachedLeft =574
                            LayoutCachedTop =7442
                            LayoutCachedWidth =2254
                            LayoutCachedHeight =7757
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =2835
                    Top =570
                    Width =2046
                    TabIndex =6
                    ForeColor =4210752
                    Name ="Command8"
                    Caption ="Product Verwijderen"
                    GridlineColor =10921638

                    LayoutCachedLeft =2835
                    LayoutCachedTop =570
                    LayoutCachedWidth =4881
                    LayoutCachedHeight =853
                    BackColor =15123357
                    BorderColor =15123357
                    HoverColor =15652797
                    PressedColor =11957550
                    HoverForeColor =4210752
                    PressedForeColor =4210752
                    WebImagePaddingLeft =2
                    WebImagePaddingTop =2
                    WebImagePaddingRight =1
                    WebImagePaddingBottom =1
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =566
                    Top =566
                    TabIndex =7
                    ForeColor =4210752
                    Name ="Command9"
                    Caption ="Terug"
                    GridlineColor =10921638

                    LayoutCachedLeft =566
                    LayoutCachedTop =566
                    LayoutCachedWidth =2267
                    LayoutCachedHeight =849
                    BackColor =15123357
                    BorderColor =15123357
                    HoverColor =15652797
                    PressedColor =11957550
                    HoverForeColor =4210752
                    PressedForeColor =4210752
                    WebImagePaddingLeft =2
                    WebImagePaddingTop =2
                    WebImagePaddingRight =1
                    WebImagePaddingBottom =1
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =2844
                    Top =7997
                    Width =2271
                    Height =315
                    TabIndex =8
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txtRubriek"
                    GridlineColor =10921638

                    LayoutCachedLeft =2844
                    LayoutCachedTop =7997
                    LayoutCachedWidth =5115
                    LayoutCachedHeight =8312
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =574
                            Top =7997
                            Width =1680
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label11"
                            Caption ="Rubriek"
                            GridlineColor =10921638
                            LayoutCachedLeft =574
                            LayoutCachedTop =7997
                            LayoutCachedWidth =2254
                            LayoutCachedHeight =8312
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =2838
                    Top =1140
                    Height =315
                    TabIndex =9
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txtId"
                    ControlSource ="id"
                    GridlineColor =10921638

                    LayoutCachedLeft =2838
                    LayoutCachedTop =1140
                    LayoutCachedWidth =4539
                    LayoutCachedHeight =1455
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =570
                            Top =1140
                            Width =255
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Bijschrift12"
                            Caption ="id"
                            GridlineColor =10921638
                            LayoutCachedLeft =570
                            LayoutCachedTop =1140
                            LayoutCachedWidth =825
                            LayoutCachedHeight =1455
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =2838
                    Top =4140
                    Height =315
                    TabIndex =10
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="seller"
                    ControlSource ="seller"
                    GridlineColor =10921638

                    LayoutCachedLeft =2838
                    LayoutCachedTop =4140
                    LayoutCachedWidth =4539
                    LayoutCachedHeight =4455
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =570
                            Top =4140
                            Width =600
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Bijschrift13"
                            Caption ="seller"
                            GridlineColor =10921638
                            LayoutCachedLeft =570
                            LayoutCachedTop =4140
                            LayoutCachedWidth =1170
                            LayoutCachedHeight =4455
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =2838
                    Top =3630
                    Height =315
                    TabIndex =11
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="buyer"
                    ControlSource ="buyer"
                    GridlineColor =10921638

                    LayoutCachedLeft =2838
                    LayoutCachedTop =3630
                    LayoutCachedWidth =4539
                    LayoutCachedHeight =3945
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =570
                            Top =3630
                            Width =615
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Bijschrift14"
                            Caption ="buyer"
                            GridlineColor =10921638
                            LayoutCachedLeft =570
                            LayoutCachedTop =3630
                            LayoutCachedWidth =1185
                            LayoutCachedHeight =3945
                        End
                    End
                End
            End
        End
    End
End
CodeBehindForm
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database

Private Sub Form_Load()
    Dim rs As Recordset
    Dim queryString As String
    
    queryString = "SELECT name " & _
    "FROM (objects OB LEFT OUTER JOIN object_in_category OC ON OB.id = " & _
    "OC.object_id) LEFT OUTER JOIN categories CA ON OC.category_id = CA.id " & _
    "WHERE OB.id = " & Me.txtId.Value
    
    Set rs = CurrentDb.OpenRecordset(queryString)
    
    Me.txtRubriek = rs!name
    
End Sub
