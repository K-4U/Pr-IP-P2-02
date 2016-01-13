Version =20
VersionRequired =20
Begin Form
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =7483
    DatasheetFontHeight =11
    ItemSuffix =15
    Right =19800
    Bottom =12120
    DatasheetGridlinesColor =15132391
    RecSrcDt = Begin
        0x22e5009733ade440
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
        Begin OptionGroup
            SpecialEffect =3
            BorderLineStyle =0
            Width =1701
            Height =1701
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
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
        Begin ListBox
            BorderLineStyle =0
            Width =1701
            Height =1417
            LabelX =-1701
            FontSize =11
            FontName ="Calibri"
            AllowValueListEdits =1
            InheritValueList =1
            ThemeFontIndex =1
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
            ForeThemeColorIndex =0
            ForeTint =75.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin Section
            Height =8066
            Name ="Detail"
            AlternateBackColor =15921906
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin CommandButton
                    OverlapFlags =85
                    Left =5325
                    Top =1140
                    TabIndex =6
                    ForeColor =4210752
                    Name ="btnBack"
                    Caption ="Terug"
                    OnClick ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =5325
                    LayoutCachedTop =1140
                    LayoutCachedWidth =7026
                    LayoutCachedHeight =1423
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
                    Overlaps =1
                End
                Begin TextBox
                    OverlapFlags =93
                    IMESentenceMode =3
                    Left =2194
                    Top =2149
                    Width =2256
                    Height =315
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txtNumber"
                    GridlineColor =10921638

                    LayoutCachedLeft =2194
                    LayoutCachedTop =2149
                    LayoutCachedWidth =4450
                    LayoutCachedHeight =2464
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =327
                            Top =2145
                            Width =1650
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Bijschrift1"
                            Caption ="Productnummer:"
                            GridlineColor =10921638
                            LayoutCachedLeft =327
                            LayoutCachedTop =2145
                            LayoutCachedWidth =1977
                            LayoutCachedHeight =2460
                        End
                    End
                End
                Begin OptionGroup
                    OverlapFlags =255
                    Left =210
                    Top =1812
                    Width =4520
                    Height =2327
                    TabIndex =7
                    BorderColor =10921638
                    Name ="Kader2"
                    GridlineColor =10921638

                    LayoutCachedLeft =210
                    LayoutCachedTop =1812
                    LayoutCachedWidth =4730
                    LayoutCachedHeight =4139
                    Begin
                        Begin Label
                            BackStyle =1
                            OverlapFlags =247
                            Left =327
                            Top =1695
                            Width =2145
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Bijschrift3"
                            Caption ="Zoeken van producten"
                            GridlineColor =10921638
                            LayoutCachedLeft =327
                            LayoutCachedTop =1695
                            LayoutCachedWidth =2472
                            LayoutCachedHeight =2010
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =247
                    FilterLookup =0
                    IMESentenceMode =3
                    Left =2194
                    Top =2614
                    Width =2256
                    Height =315
                    TabIndex =1
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txtTitle"
                    DefaultValue ="\"\""
                    GridlineColor =10921638

                    LayoutCachedLeft =2194
                    LayoutCachedTop =2614
                    LayoutCachedWidth =4450
                    LayoutCachedHeight =2929
                    Begin
                        Begin Label
                            OverlapFlags =247
                            Left =327
                            Top =2610
                            Width =1590
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Bijschrift5"
                            Caption ="Producttitel:"
                            GridlineColor =10921638
                            LayoutCachedLeft =327
                            LayoutCachedTop =2610
                            LayoutCachedWidth =1917
                            LayoutCachedHeight =2925
                        End
                    End
                End
                Begin CommandButton
                    Cancel = NotDefault
                    Enabled = NotDefault
                    OverlapFlags =247
                    Left =2765
                    Top =3675
                    TabIndex =4
                    ForeColor =4210752
                    Name ="cmdReset"
                    Caption ="Reset"
                    OnClick ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =2765
                    LayoutCachedTop =3675
                    LayoutCachedWidth =4466
                    LayoutCachedHeight =3958
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
                    Overlaps =1
                End
                Begin CommandButton
                    Default = NotDefault
                    OverlapFlags =247
                    Left =327
                    Top =3675
                    TabIndex =3
                    ForeColor =4210752
                    Name ="cmdSearch"
                    Caption ="Zoeken"
                    OnClick ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =327
                    LayoutCachedTop =3675
                    LayoutCachedWidth =2028
                    LayoutCachedHeight =3958
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
                    Overlaps =1
                End
                Begin TextBox
                    OverlapFlags =247
                    IMESentenceMode =3
                    Left =2194
                    Top =3109
                    Width =2256
                    Height =315
                    TabIndex =2
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txtCategory"
                    GridlineColor =10921638

                    LayoutCachedLeft =2194
                    LayoutCachedTop =3109
                    LayoutCachedWidth =4450
                    LayoutCachedHeight =3424
                    Begin
                        Begin Label
                            OverlapFlags =247
                            Left =327
                            Top =3105
                            Width =1590
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Bijschrift10"
                            Caption ="Rubrieknaam:"
                            GridlineColor =10921638
                            LayoutCachedLeft =327
                            LayoutCachedTop =3105
                            LayoutCachedWidth =1917
                            LayoutCachedHeight =3420
                        End
                    End
                End
                Begin ListBox
                    ColumnHeads = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    ColumnCount =3
                    Left =170
                    Top =4874
                    Width =7097
                    Height =3117
                    TabIndex =5
                    ForeColor =4210752
                    BorderColor =10921638
                    Name ="lstProducts"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT OB.id AS Productnummer, OB.title AS Productnaam, CA.name AS Rubrieknaam F"
                        "ROM (objects AS OB LEFT JOIN object_in_category AS OC ON OB.id = OC.object_id) L"
                        "EFT JOIN categories AS CA ON OC.category_id = CA.id"
                    ColumnWidths ="1701;2268;2835"
                    OnDblClick ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =170
                    LayoutCachedTop =4874
                    LayoutCachedWidth =7267
                    LayoutCachedHeight =7991
                End
                Begin Label
                    OverlapFlags =85
                    Left =165
                    Top =4410
                    Width =4215
                    Height =285
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="Bijschrift46"
                    Caption ="Dubbelklikken op product voor meer details."
                    GridlineColor =10921638
                    LayoutCachedLeft =165
                    LayoutCachedTop =4410
                    LayoutCachedWidth =4380
                    LayoutCachedHeight =4695
                End
                Begin Label
                    OverlapFlags =85
                    Left =225
                    Top =225
                    Width =4425
                    Height =1365
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="Bijschrift14"
                    Caption ="Om producten te zoeken kunt u gebruik maken van de zoek functie hieronder. In de"
                        " lijst worden vervolgens de resultaten getoond. Wilt u alle producten zien reset"
                        " dan de zoek filter met de reset knop."
                    GridlineColor =10921638
                    LayoutCachedLeft =225
                    LayoutCachedTop =225
                    LayoutCachedWidth =4650
                    LayoutCachedHeight =1590
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


Private Sub btnBack_Click()
    DoCmd.Close
End Sub

Private Sub cmdReset_Click()
    Dim query As String
    
    'Reset search input fields.
    Me.txtNumber.Value = Null
    Me.txtCategory.Value = Null
    Me.txtTitle.Value = Null
    
    query = "SELECT OB.id AS Productnummer, OB.title AS Productnaam, CA.name AS Rubrieknaam " & _
            "FROM (objects AS OB LEFT JOIN object_in_category AS OC ON OB.id = OC.object_id) LEFT JOIN categories AS CA ON OC.category_id = CA.id"

    Me.lstProducts.RowSource = query
    Me.lstProducts.Requery
    
    Me.cmdReset.Enabled = False
End Sub

Private Sub cmdSearch_Click()
    Dim searchNumber As String
    Dim searchTitle As String
    Dim searchCategory As String
    Dim query As String
    
    If Not IsNull(Me.txtNumber.Value) Then
        searchNumber = Me.txtNumber.Value
    End If
    If Not IsNull(Me.txtTitle.Value) Then
        searchTitle = Me.txtTitle.Value
    End If
    If Not IsNull(Me.txtCategory.Value) Then
        searchCategory = Me.txtCategory.Value
    End If
    
    'Search query
    query = "SELECT OB.id AS Productnummer, OB.title AS Productnaam, CA.name AS Rubrieknaam" & vbCrLf & _
            "FROM (objects AS OB LEFT JOIN object_in_category AS OC ON OB.id = OC.object_id) LEFT JOIN categories AS CA ON OC.category_id = CA.id" & vbCrLf & _
            "GROUP BY OB.title, OB.id, CA.name" & vbCrLf & _
            "HAVING (([OB.title] Like ""*" & searchTitle & "*"") AND ([OB.id] Like '*" & searchNumber & "*') AND ([CA.name] Like ""*" & searchCategory & "*""));"
    
    Me.lstProducts.RowSource = query
    Me.lstProducts.Requery
    Me.cmdReset.Enabled = True
    
End Sub

Private Sub Form_Load()
    Dim query As String
    
    query = "SELECT OB.id AS Productnummer, OB.title AS Productnaam, CA.name AS Rubrieknaam " & _
            "FROM (objects AS OB LEFT JOIN object_in_category AS OC ON OB.id = OC.object_id) LEFT JOIN categories AS CA ON OC.category_id = CA.id"

    Me.lstProducts.RowSource = query
    Me.lstProducts.Requery
    
    Me.cmdReset.Enabled = False
End Sub

Private Sub lstProducts_DblClick(Cancel As Integer)
    Dim id_selected As String
    
    For Each varItem In Me.lstProducts.ItemsSelected
        id_selected = Me.lstProducts.Column(0, varItem) 'Change index for different locations e.g. the end of the line.
    Next varItem
    
    DoCmd.OpenForm "frmProductKlantenserviceDetails", , , "[OBID] = " & id_selected, , acDialog
    
    Me.lstProducts.Requery
End Sub
