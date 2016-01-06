Version =20
VersionRequired =20
Begin Form
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =5045
    DatasheetFontHeight =11
    ItemSuffix =11
    Right =19800
    Bottom =12120
    DatasheetGridlinesColor =15132391
    RecSrcDt = Begin
        0x5a79dc7a8eaee440
    End
    DatasheetFontName ="Calibri"
    PrtMip = Begin
        0x6801000068010000680100006801000000000000201c0000e010000001000000 ,
        0x010000006801000000000000a10700000100000001000000
    End
    OnLoad ="[Event Procedure]"
    AllowDatasheetView =0
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
        Begin CheckBox
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
            BorderThemeColorIndex =1
            BorderShade =65.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
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
        Begin Section
            Height =3288
            Name ="Details"
            AlternateBackColor =15921906
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    OverlapFlags =93
                    IMESentenceMode =3
                    Left =1772
                    Top =1080
                    Width =2316
                    Height =315
                    TabIndex =1
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txtFromDate"
                    Format ="Short Date"
                    InputMask ="00/00/0000;0;_"
                    GridlineColor =10921638

                    LayoutCachedLeft =1772
                    LayoutCachedTop =1080
                    LayoutCachedWidth =4088
                    LayoutCachedHeight =1395
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =525
                            Top =1080
                            Width =675
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Bijschrift1"
                            Caption ="Van:"
                            GridlineColor =10921638
                            LayoutCachedLeft =525
                            LayoutCachedTop =1080
                            LayoutCachedWidth =1200
                            LayoutCachedHeight =1395
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =93
                    IMESentenceMode =3
                    Left =1772
                    Top =1515
                    Width =2316
                    Height =315
                    TabIndex =2
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txtTillDate"
                    Format ="Short Date"
                    InputMask ="00/00/0000;0;_"
                    GridlineColor =10921638

                    LayoutCachedLeft =1772
                    LayoutCachedTop =1515
                    LayoutCachedWidth =4088
                    LayoutCachedHeight =1830
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =525
                            Top =1515
                            Width =675
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Bijschrift4"
                            Caption ="Tot:"
                            GridlineColor =10921638
                            LayoutCachedLeft =525
                            LayoutCachedTop =1515
                            LayoutCachedWidth =1200
                            LayoutCachedHeight =1830
                        End
                    End
                End
                Begin OptionGroup
                    OverlapFlags =255
                    Left =345
                    Top =345
                    Width =4422
                    Height =2263
                    BorderColor =10921638
                    Name ="Kader5"
                    GridlineColor =10921638

                    LayoutCachedLeft =345
                    LayoutCachedTop =345
                    LayoutCachedWidth =4767
                    LayoutCachedHeight =2608
                    Begin
                        Begin Label
                            BackStyle =1
                            OverlapFlags =247
                            Left =465
                            Top =225
                            Width =720
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Bijschrift6"
                            Caption ="Filter:"
                            GridlineColor =10921638
                            LayoutCachedLeft =465
                            LayoutCachedTop =225
                            LayoutCachedWidth =1185
                            LayoutCachedHeight =540
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =3073
                    Top =2829
                    TabIndex =4
                    ForeColor =4210752
                    Name ="btnGenerate"
                    Caption ="Genereer"
                    OnClick ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =3073
                    LayoutCachedTop =2829
                    LayoutCachedWidth =4774
                    LayoutCachedHeight =3112
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
                Begin Label
                    OverlapFlags =247
                    Left =525
                    Top =675
                    Width =1185
                    Height =285
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="Bijschrift10"
                    Caption ="Eind datum:"
                    GridlineColor =10921638
                    LayoutCachedLeft =525
                    LayoutCachedTop =675
                    LayoutCachedWidth =1710
                    LayoutCachedHeight =960
                End
                Begin CheckBox
                    OverlapFlags =247
                    Left =525
                    Top =2060
                    TabIndex =3
                    BorderColor =10921638
                    Name ="chkSoldProducts"
                    GridlineColor =10921638

                    LayoutCachedLeft =525
                    LayoutCachedTop =2060
                    LayoutCachedWidth =785
                    LayoutCachedHeight =2300
                    Begin
                        Begin Label
                            OverlapFlags =247
                            Left =752
                            Top =2040
                            Width =3330
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label3"
                            Caption ="Alleen verkochte producten tonen."
                            GridlineColor =10921638
                            LayoutCachedLeft =752
                            LayoutCachedTop =2040
                            LayoutCachedWidth =4082
                            LayoutCachedHeight =2355
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

Private Sub btnGenerate_Click()
    If IsNull(Me.txtFromDate) Or IsNull(Me.txtTillDate) Then
    MsgBox "no"
    
    Else
        If Me.chkSoldProducts.Value = False Then
        DoCmd.OpenReport "rptObjecten", acViewPreview, , "[end_moment] BETWEEN DateValue('" & Me.txtFromDate & "') AND DateValue('" & Me.txtTillDate & "') " & _
        "AND [buyer] LIKE '**'", acDialog
        
        Else
        DoCmd.OpenReport "rptObjecten", acViewPreview, , "[end_moment] BETWEEN DateValue('" & Me.txtFromDate & "') AND DateValue('" & Me.txtTillDate & "') " & _
        "AND [buyer] NOT LIKE 'Geen'", acDialog
        End If
    End If
    
End Sub

Private Sub Form_Load()
    ' set first checkbox default checked
    Me.chkSoldProducts.Value = False
End Sub
