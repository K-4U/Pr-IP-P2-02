Version =20
VersionRequired =20
Begin Form
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =5329
    DatasheetFontHeight =11
    ItemSuffix =11
    Right =25335
    Bottom =12090
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
            Height =4194
            Name ="Details"
            AlternateBackColor =15921906
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    OverlapFlags =93
                    IMESentenceMode =3
                    Left =1817
                    Top =1485
                    Height =315
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txtFromDate"
                    Format ="Short Date"
                    InputMask ="00/00/0000;0;_"
                    GridlineColor =10921638

                    LayoutCachedLeft =1817
                    LayoutCachedTop =1485
                    LayoutCachedWidth =3518
                    LayoutCachedHeight =1800
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =570
                            Top =1485
                            Width =675
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Bijschrift1"
                            Caption ="Van:"
                            GridlineColor =10921638
                            LayoutCachedLeft =570
                            LayoutCachedTop =1485
                            LayoutCachedWidth =1245
                            LayoutCachedHeight =1800
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =93
                    IMESentenceMode =3
                    Left =1817
                    Top =1920
                    Height =315
                    TabIndex =1
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txtTillDate"
                    Format ="Short Date"
                    InputMask ="00/00/0000;0;_"
                    GridlineColor =10921638

                    LayoutCachedLeft =1817
                    LayoutCachedTop =1920
                    LayoutCachedWidth =3518
                    LayoutCachedHeight =2235
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =570
                            Top =1920
                            Width =675
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Bijschrift4"
                            Caption ="Tot:"
                            GridlineColor =10921638
                            LayoutCachedLeft =570
                            LayoutCachedTop =1920
                            LayoutCachedWidth =1245
                            LayoutCachedHeight =2235
                        End
                    End
                End
                Begin OptionGroup
                    OverlapFlags =255
                    Left =390
                    Top =690
                    Width =4422
                    Height =2263
                    TabIndex =2
                    BorderColor =10921638
                    Name ="Kader5"
                    GridlineColor =10921638

                    LayoutCachedLeft =390
                    LayoutCachedTop =690
                    LayoutCachedWidth =4812
                    LayoutCachedHeight =2953
                    Begin
                        Begin Label
                            BackStyle =1
                            OverlapFlags =247
                            Left =510
                            Top =570
                            Width =720
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Bijschrift6"
                            Caption ="Filter:"
                            GridlineColor =10921638
                            LayoutCachedLeft =510
                            LayoutCachedTop =570
                            LayoutCachedWidth =1230
                            LayoutCachedHeight =885
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =3118
                    Top =3174
                    TabIndex =3
                    ForeColor =4210752
                    Name ="btnGenerate"
                    Caption ="Genereer"
                    OnClick ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =3118
                    LayoutCachedTop =3174
                    LayoutCachedWidth =4819
                    LayoutCachedHeight =3457
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
                    Left =570
                    Top =1080
                    Width =1185
                    Height =285
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="Bijschrift10"
                    Caption ="Eind datum:"
                    GridlineColor =10921638
                    LayoutCachedLeft =570
                    LayoutCachedTop =1080
                    LayoutCachedWidth =1755
                    LayoutCachedHeight =1365
                End
                Begin CheckBox
                    OverlapFlags =247
                    Left =566
                    Top =2457
                    TabIndex =4
                    BorderColor =10921638
                    Name ="chkSoldProducts"
                    GridlineColor =10921638

                    LayoutCachedLeft =566
                    LayoutCachedTop =2457
                    LayoutCachedWidth =826
                    LayoutCachedHeight =2697
                    Begin
                        Begin Label
                            OverlapFlags =247
                            Left =793
                            Top =2437
                            Width =3330
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label3"
                            Caption ="Alleen verkochte producten tonen."
                            GridlineColor =10921638
                            LayoutCachedLeft =793
                            LayoutCachedTop =2437
                            LayoutCachedWidth =4123
                            LayoutCachedHeight =2752
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
