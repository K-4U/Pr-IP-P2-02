Version =20
VersionRequired =20
Begin Form
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =6122
    DatasheetFontHeight =11
    ItemSuffix =10
    Right =19800
    Bottom =12120
    DatasheetGridlinesColor =15132391
    RecSrcDt = Begin
        0x1f35c404b3b0e440
    End
    RecordSource ="SELECT C1.*, C2.name FROM categories AS C1 LEFT JOIN categories AS C2 ON C1.pare"
        "nt = C2.id;"
    OnCurrent ="[Event Procedure]"
    DatasheetFontName ="Calibri"
    PrtMip = Begin
        0x6801000068010000680100006801000000000000201c0000e010000001000000 ,
        0x010000006801000000000000a10700000100000001000000
    End
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
        Begin Rectangle
            SpecialEffect =3
            BackStyle =0
            BorderLineStyle =0
            Width =850
            Height =850
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
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
            Height =5215
            Name ="Detail"
            AlternateBackColor =15921906
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    OverlapFlags =87
                    IMESentenceMode =3
                    Left =2270
                    Top =1140
                    Width =906
                    Height =315
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="Text1"
                    ControlSource ="id"
                    GridlineColor =10921638

                    LayoutCachedLeft =2270
                    LayoutCachedTop =1140
                    LayoutCachedWidth =3176
                    LayoutCachedHeight =1455
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =570
                            Top =1140
                            Width =1695
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label2"
                            Caption ="Rubriek ID"
                            GridlineColor =10921638
                            LayoutCachedLeft =570
                            LayoutCachedTop =1140
                            LayoutCachedWidth =2265
                            LayoutCachedHeight =1455
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =87
                    IMESentenceMode =3
                    Left =2270
                    Top =1695
                    Width =3516
                    Height =345
                    TabIndex =1
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txtRubrieknaam"
                    ControlSource ="C1.name"
                    GridlineColor =10921638

                    LayoutCachedLeft =2270
                    LayoutCachedTop =1695
                    LayoutCachedWidth =5786
                    LayoutCachedHeight =2040
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =570
                            Top =1695
                            Width =1695
                            Height =345
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label8"
                            Caption ="Rubrieknaam"
                            GridlineColor =10921638
                            LayoutCachedLeft =570
                            LayoutCachedTop =1695
                            LayoutCachedWidth =2265
                            LayoutCachedHeight =2040
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =87
                    IMESentenceMode =3
                    Left =2270
                    Top =2325
                    Width =891
                    Height =315
                    TabIndex =3
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txtParent"
                    ControlSource ="parent"
                    GridlineColor =10921638

                    LayoutCachedLeft =2270
                    LayoutCachedTop =2325
                    LayoutCachedWidth =3161
                    LayoutCachedHeight =2640
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =570
                            Top =2325
                            Width =1695
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label1"
                            Caption ="Rubriek Parent ID"
                            GridlineColor =10921638
                            LayoutCachedLeft =570
                            LayoutCachedTop =2325
                            LayoutCachedWidth =2265
                            LayoutCachedHeight =2640
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =570
                    Top =570
                    TabIndex =4
                    ForeColor =4210752
                    Name ="btnCancel"
                    Caption ="Terug"
                    OnClick ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =570
                    LayoutCachedTop =570
                    LayoutCachedWidth =2271
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
                Begin ListBox
                    ColumnHeads = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =2264
                    Top =3000
                    Width =3528
                    Height =1913
                    TabIndex =5
                    ForeColor =4210752
                    BorderColor =10921638
                    Name ="lstSubCat"
                    RowSourceType ="Table/Query"
                    ColumnWidths ="0;567"
                    GridlineColor =10921638

                    LayoutCachedLeft =2264
                    LayoutCachedTop =3000
                    LayoutCachedWidth =5792
                    LayoutCachedHeight =4913
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =570
                            Top =3001
                            Width =1470
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Bijschrift5"
                            Caption ="Sub-rubrieken:"
                            GridlineColor =10921638
                            LayoutCachedLeft =570
                            LayoutCachedTop =3001
                            LayoutCachedWidth =2040
                            LayoutCachedHeight =3316
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =5051
                    Top =1133
                    Width =741
                    Height =315
                    TabIndex =6
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txtPriority"
                    ControlSource ="priority"
                    GridlineColor =10921638

                    LayoutCachedLeft =5051
                    LayoutCachedTop =1133
                    LayoutCachedWidth =5792
                    LayoutCachedHeight =1448
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =3628
                            Top =1138
                            Width =1350
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Bijschrift8"
                            Caption ="Volgnummer:"
                            GridlineColor =10921638
                            LayoutCachedLeft =3628
                            LayoutCachedTop =1138
                            LayoutCachedWidth =4978
                            LayoutCachedHeight =1453
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =3345
                    Top =2325
                    Width =2451
                    Height =315
                    TabIndex =2
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txtCategory"
                    ControlSource ="C2.name"
                    GridlineColor =10921638

                    LayoutCachedLeft =3345
                    LayoutCachedTop =2325
                    LayoutCachedWidth =5796
                    LayoutCachedHeight =2640
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =3968
                    Top =566
                    TabIndex =7
                    ForeColor =4210752
                    Name ="btnSave"
                    Caption ="Opslaan"
                    OnClick ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =3968
                    LayoutCachedTop =566
                    LayoutCachedWidth =5669
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

Private Sub btnCancel_Click()
    'Check if there are any changes. If there are undo, else close.
    If (Me.txtRubrieknaam.OldValue <> Me.txtRubrieknaam.Value Or Me.txtParent.OldValue <> Me.txtRubrieknaam.Value Or Me.txtParent.OldValue <> Me.txtParent.Value) Then
        DoCmd.RunCommand acCmdUndo
    End If
    
    DoCmd.Close
    
End Sub

Private Sub btnSave_Click()
    DoCmd.Close , , acSaveYes
End Sub

Private Sub Form_Current()
    Dim queryString As String
     
    queryString = "SELECT id, name AS Rubrieknaam FROM categories WHERE Parent = " & Me.id & " ORDER BY priority"
   
    Me.lstSubCat.RowSource = queryString
    Me.lstSubCat.Requery
End Sub
