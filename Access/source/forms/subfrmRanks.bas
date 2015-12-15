Version =20
VersionRequired =20
Begin Form
    RecordSelectors = NotDefault
    ControlBox = NotDefault
    NavigationButtons = NotDefault
    AllowDeletions = NotDefault
    CloseButton = NotDefault
    DividingLines = NotDefault
    AllowAdditions = NotDefault
    AllowDesignChanges = NotDefault
    ViewsAllowed =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =5445
    DatasheetFontHeight =11
    ItemSuffix =10
    Left =345
    Top =1425
    Right =7395
    Bottom =4500
    DatasheetGridlinesColor =15132391
    RecSrcDt = Begin
        0x1ca4e1e16cade440
    End
    RecordSource ="SELECT ranks.username AS Gebruikersnaam, ranks.customer_service AS Klantenservic"
        "e, ranks.administrator AS Administrator, ranks.manager AS Manager FROM ranks; "
    DatasheetFontName ="Calibri"
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
        Begin CheckBox
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
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
        Begin FormHeader
            Height =315
            BackColor =15064278
            Name ="Formulierkoptekst"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =2
            BackTint =20.0
            Begin
                Begin Label
                    OverlapFlags =93
                    Width =1695
                    Height =315
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="Bijschrift0"
                    Caption ="Gebruikersnaam"
                    GridlineColor =10921638
                    LayoutCachedWidth =1695
                    LayoutCachedHeight =315
                End
                Begin Label
                    OverlapFlags =95
                    Left =1701
                    Width =1485
                    Height =315
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="Bijschrift1"
                    Caption ="Klantenservice"
                    GridlineColor =10921638
                    LayoutCachedLeft =1701
                    LayoutCachedWidth =3186
                    LayoutCachedHeight =315
                End
                Begin Label
                    OverlapFlags =95
                    Left =3180
                    Width =1350
                    Height =315
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="Bijschrift2"
                    Caption ="Administrator"
                    GridlineColor =10921638
                    LayoutCachedLeft =3180
                    LayoutCachedWidth =4530
                    LayoutCachedHeight =315
                End
                Begin Label
                    OverlapFlags =87
                    Left =4530
                    Width =915
                    Height =315
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="Bijschrift3"
                    Caption ="Manager"
                    GridlineColor =10921638
                    LayoutCachedLeft =4530
                    LayoutCachedWidth =5445
                    LayoutCachedHeight =315
                End
            End
        End
        Begin Section
            Height =340
            Name ="Details"
            AlternateBackColor =15921906
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Height =315
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="Gebruikersnaam"
                    ControlSource ="Gebruikersnaam"
                    GridlineColor =10921638

                    LayoutCachedWidth =1701
                    LayoutCachedHeight =315
                End
                Begin CheckBox
                    OverlapFlags =85
                    Left =2205
                    Top =60
                    Width =230
                    Height =225
                    TabIndex =1
                    BorderColor =10921638
                    Name ="chkCustomerService"
                    ControlSource ="Klantenservice"
                    AfterUpdate ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =2205
                    LayoutCachedTop =60
                    LayoutCachedWidth =2435
                    LayoutCachedHeight =285
                End
                Begin CheckBox
                    OverlapFlags =85
                    Left =3750
                    Top =60
                    TabIndex =2
                    BorderColor =10921638
                    Name ="chkAdmin"
                    ControlSource ="Administrator"
                    AfterUpdate ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =3750
                    LayoutCachedTop =60
                    LayoutCachedWidth =4010
                    LayoutCachedHeight =300
                End
                Begin CheckBox
                    OverlapFlags =85
                    Left =4815
                    Top =60
                    TabIndex =3
                    BorderColor =10921638
                    Name ="chkManager"
                    ControlSource ="Manager"
                    AfterUpdate ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =4815
                    LayoutCachedTop =60
                    LayoutCachedWidth =5075
                    LayoutCachedHeight =300
                End
            End
        End
        Begin FormFooter
            Height =0
            Name ="Formuliervoettekst"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
        End
    End
End
CodeBehindForm
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database

Private Sub chkAdmin_AfterUpdate()
    DoCmd.DoMenuItem acFormBar, acRecordsMenu, acSaveRecord, , acMenuVer70
End Sub

Private Sub chkCustomerService_AfterUpdate()
    DoCmd.DoMenuItem acFormBar, acRecordsMenu, acSaveRecord, , acMenuVer70
End Sub

Private Sub chkManager_AfterUpdate()
    DoCmd.DoMenuItem acFormBar, acRecordsMenu, acSaveRecord, , acMenuVer70
End Sub
