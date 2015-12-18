Version =20
VersionRequired =20
Begin Report
    LayoutForPrint = NotDefault
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    DateGrouping =1
    GrpKeepTogether =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =11175
    DatasheetFontHeight =11
    ItemSuffix =13
    DatasheetGridlinesColor =15132391
    RecSrcDt = Begin
        0xa0ce3d334faee440
    End
    RecordSource ="SELECT [users].[firstname]+' '+[users].[lastname] AS Naam, users.username, verif"
        "ications.verification_key, verifications.date_requested FROM verifications INNER"
        " JOIN users ON verifications.username = users.username; "
    DatasheetFontName ="Calibri"
    PrtMip = Begin
        0x6801000068010000680100006801000000000000a72b00000d11000001000000 ,
        0x010000006801000000000000a10700000100000001000000
    End
    OnLoad ="[Event Procedure]"
    FilterOnLoad =0
    FitToPage =1
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
            ShowDatePicker =0
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
            ThemeFontIndex =1
            ForeThemeColorIndex =0
            ForeTint =75.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin PageHeader
            Height =2381
            Name ="PageHeaderSection"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin Label
                    Left =510
                    Top =226
                    Width =4845
                    Height =780
                    FontSize =30
                    BorderColor =8355711
                    Name ="Label0"
                    Caption ="EenmaalAndermaal"
                    GridlineColor =10921638
                    LayoutCachedLeft =510
                    LayoutCachedTop =226
                    LayoutCachedWidth =5355
                    LayoutCachedHeight =1006
                    ForeTint =100.0
                End
                Begin Label
                    Left =570
                    Top =1140
                    Width =930
                    Height =285
                    BorderColor =8355711
                    Name ="Label10"
                    Caption ="Arnhem, "
                    GridlineColor =10921638
                    LayoutCachedLeft =570
                    LayoutCachedTop =1140
                    LayoutCachedWidth =1500
                    LayoutCachedHeight =1425
                    ForeTint =100.0
                End
                Begin TextBox
                    OldBorderStyle =0
                    IMESentenceMode =3
                    Left =1425
                    Top =1140
                    Width =2556
                    Height =315
                    BorderColor =10921638
                    Name ="txtCurrentDate"
                    GridlineColor =10921638

                    LayoutCachedLeft =1425
                    LayoutCachedTop =1140
                    LayoutCachedWidth =3981
                    LayoutCachedHeight =1455
                    ForeTint =100.0
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            Height =4365
            Name ="Detail"
            AlternateBackColor =15921906
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin Label
                    Left =630
                    Top =285
                    Width =600
                    Height =285
                    BorderColor =8355711
                    Name ="Label1"
                    Caption ="Beste"
                    GridlineColor =10921638
                    LayoutCachedLeft =630
                    LayoutCachedTop =285
                    LayoutCachedWidth =1230
                    LayoutCachedHeight =570
                    ForeTint =100.0
                End
                Begin TextBox
                    OldBorderStyle =0
                    IMESentenceMode =3
                    Left =1185
                    Top =285
                    Width =3666
                    Height =315
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="Text2"
                    ControlSource ="Naam"
                    GridlineColor =10921638

                    LayoutCachedLeft =1185
                    LayoutCachedTop =285
                    LayoutCachedWidth =4851
                    LayoutCachedHeight =600
                End
                Begin Label
                    Left =570
                    Top =2835
                    Width =2070
                    Height =285
                    BorderColor =8355711
                    Name ="Label4"
                    Caption ="Uw verificatiecode is:"
                    GridlineColor =10921638
                    LayoutCachedLeft =570
                    LayoutCachedTop =2835
                    LayoutCachedWidth =2640
                    LayoutCachedHeight =3120
                    ForeTint =100.0
                End
                Begin TextBox
                    OldBorderStyle =0
                    TextAlign =2
                    IMESentenceMode =3
                    Left =1140
                    Top =3405
                    Width =3959
                    Height =585
                    FontSize =13
                    TabIndex =1
                    BackColor =14277081
                    BorderColor =10921638
                    Name ="Text6"
                    ControlSource ="verification_key"
                    GridlineColor =10921638

                    LayoutCachedLeft =1140
                    LayoutCachedTop =3405
                    LayoutCachedWidth =5099
                    LayoutCachedHeight =3990
                    BackShade =85.0
                    ForeTint =100.0
                End
                Begin Label
                    Left =570
                    Top =1140
                    Width =4252
                    Height =1644
                    BorderColor =8355711
                    Name ="Label8"
                    Caption ="Hier plaatsen we info over hoe je deze code moet gebruiken!"
                    GridlineColor =10921638
                    LayoutCachedLeft =570
                    LayoutCachedTop =1140
                    LayoutCachedWidth =4822
                    LayoutCachedHeight =2784
                    ForeTint =100.0
                End
            End
        End
        Begin PageFooter
            Height =2267
            Name ="PageFooterSection"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin Label
                    Left =570
                    Top =1125
                    Width =6300
                    Height =285
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="Label9"
                    Caption ="Deze brief is automatisch aangemaakt en daarom niet ondertekend"
                    GridlineColor =10921638
                    LayoutCachedLeft =570
                    LayoutCachedTop =1125
                    LayoutCachedWidth =6870
                    LayoutCachedHeight =1410
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
Option Explicit

Private Sub Report_Load()
    txtCurrentDate.Value = Format(Now(), "dd MMMM yyyy")
End Sub
