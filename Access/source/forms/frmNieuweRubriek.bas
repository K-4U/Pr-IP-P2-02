Version =20
VersionRequired =20
Begin Form
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =6994
    DatasheetFontHeight =11
    ItemSuffix =11
    Right =21030
    Bottom =12510
    DatasheetGridlinesColor =15132391
    RecSrcDt = Begin
        0x8030c92e8daee440
    End
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
        Begin Section
            Height =5952
            Name ="Detail"
            AutoHeight =1
            AlternateBackColor =15921906
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin CommandButton
                    OverlapFlags =85
                    Left =3405
                    Top =570
                    ForeColor =4210752
                    Name ="cmdAddCategory"
                    Caption ="Rubriek Toevoegen"
                    GridlineColor =10921638

                    LayoutCachedLeft =3405
                    LayoutCachedTop =570
                    LayoutCachedWidth =5106
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
                    Left =570
                    Top =570
                    TabIndex =1
                    ForeColor =4210752
                    Name ="cmdBack"
                    Caption ="Annuleren"
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
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =3405
                    Top =2835
                    Height =315
                    TabIndex =2
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txtRubriekNaam"
                    GridlineColor =10921638

                    LayoutCachedLeft =3405
                    LayoutCachedTop =2835
                    LayoutCachedWidth =5106
                    LayoutCachedHeight =3150
                End
                Begin Label
                    OverlapFlags =85
                    Left =570
                    Top =2835
                    Width =1365
                    Height =285
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="Label6"
                    Caption ="Rubrieknaam:"
                    GridlineColor =10921638
                    LayoutCachedLeft =570
                    LayoutCachedTop =2835
                    LayoutCachedWidth =1935
                    LayoutCachedHeight =3120
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =3405
                    Top =2265
                    Height =315
                    TabIndex =3
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txtParentName"
                    GridlineColor =10921638

                    LayoutCachedLeft =3405
                    LayoutCachedTop =2265
                    LayoutCachedWidth =5106
                    LayoutCachedHeight =2580
                End
                Begin Label
                    OverlapFlags =85
                    Left =570
                    Top =2265
                    Width =1365
                    Height =285
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="Label8"
                    Caption ="Name:"
                    GridlineColor =10921638
                    LayoutCachedLeft =570
                    LayoutCachedTop =2265
                    LayoutCachedWidth =1935
                    LayoutCachedHeight =2550
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =3405
                    Top =1695
                    Height =315
                    TabIndex =4
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txtParentID"
                    GridlineColor =10921638

                    LayoutCachedLeft =3405
                    LayoutCachedTop =1695
                    LayoutCachedWidth =5106
                    LayoutCachedHeight =2010
                End
                Begin Label
                    OverlapFlags =85
                    Left =570
                    Top =1695
                    Width =1980
                    Height =285
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="Label10"
                    Caption ="ID van hoofdrubriek:"
                    GridlineColor =10921638
                    LayoutCachedLeft =570
                    LayoutCachedTop =1695
                    LayoutCachedWidth =2550
                    LayoutCachedHeight =1980
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

Private Sub cmdBack_Click()


Me.Undo
DoCmd.Close

End Sub

Private Sub Form_Load()

End Sub
