Version =20
VersionRequired =20
Begin Form
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =6462
    DatasheetFontHeight =11
    ItemSuffix =14
    Right =25335
    Bottom =12090
    DatasheetGridlinesColor =15132391
    Filter ="[isseller] = 0 AND [objectid] = 1"
    RecSrcDt = Begin
        0x763eb3e5afb0e440
    End
    RecordSource ="SELECT isseller, objectid, IIF(isseller, seller, buyer) AS Gebruikersnaam, comme"
        "nt, date, rating FROM feedback F INNER JOIN objects O ON F.objectid = O.id"
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
        Begin ToggleButton
            Width =283
            Height =283
            ForeThemeColorIndex =0
            ForeTint =75.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
            UseTheme =1
            Shape =2
            Bevel =1
            BackColor =-1
            BackThemeColorIndex =4
            BackTint =60.0
            OldBorderStyle =0
            BorderLineStyle =0
            BorderColor =-1
            BorderThemeColorIndex =4
            BorderTint =60.0
            ThemeFontIndex =1
            HoverColor =0
            HoverThemeColorIndex =4
            HoverTint =40.0
            PressedColor =0
            PressedThemeColorIndex =4
            PressedShade =75.0
            HoverForeColor =0
            HoverForeThemeColorIndex =0
            HoverForeTint =75.0
            PressedForeColor =0
            PressedForeThemeColorIndex =1
        End
        Begin Section
            Height =4535
            Name ="Detail"
            AlternateBackColor =15921906
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    Enabled = NotDefault
                    OverlapFlags =87
                    IMESentenceMode =3
                    Left =2270
                    Top =570
                    Width =2271
                    Height =315
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="Text1"
                    ControlSource ="Gebruikersnaam"
                    GridlineColor =10921638

                    LayoutCachedLeft =2270
                    LayoutCachedTop =570
                    LayoutCachedWidth =4541
                    LayoutCachedHeight =885
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =570
                            Top =570
                            Width =1695
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label2"
                            Caption ="Gebruikersnaam:"
                            GridlineColor =10921638
                            LayoutCachedLeft =570
                            LayoutCachedTop =570
                            LayoutCachedWidth =2265
                            LayoutCachedHeight =885
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =87
                    IMESentenceMode =3
                    Left =2270
                    Top =1695
                    Width =3966
                    Height =1710
                    TabIndex =2
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="Text7"
                    ControlSource ="comment"
                    GridlineColor =10921638

                    LayoutCachedLeft =2270
                    LayoutCachedTop =1695
                    LayoutCachedWidth =6236
                    LayoutCachedHeight =3405
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =570
                            Top =1695
                            Width =1695
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label8"
                            Caption ="Commentaar:"
                            GridlineColor =10921638
                            LayoutCachedLeft =570
                            LayoutCachedTop =1695
                            LayoutCachedWidth =2265
                            LayoutCachedHeight =2010
                        End
                    End
                End
                Begin CommandButton
                    Default = NotDefault
                    OverlapFlags =85
                    Left =3968
                    Top =4105
                    Width =2271
                    TabIndex =4
                    ForeColor =4210752
                    Name ="btnDelete"
                    Caption ="Item Verwijderen"
                    OnClick ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =3968
                    LayoutCachedTop =4105
                    LayoutCachedWidth =6239
                    LayoutCachedHeight =4388
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
                    Cancel = NotDefault
                    OverlapFlags =85
                    Left =570
                    Top =4095
                    TabIndex =5
                    ForeColor =4210752
                    Name ="btnBack"
                    Caption ="Terug"
                    OnClick ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =570
                    LayoutCachedTop =4095
                    LayoutCachedWidth =2271
                    LayoutCachedHeight =4378
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
                    OverlapFlags =87
                    IMESentenceMode =3
                    Left =2271
                    Top =1125
                    Width =2256
                    Height =315
                    TabIndex =1
                    BorderColor =10921638
                    ForeColor =3484194
                    Name ="Combo5"
                    ControlSource ="rating"
                    GridlineColor =10921638

                    LayoutCachedLeft =2271
                    LayoutCachedTop =1125
                    LayoutCachedWidth =4527
                    LayoutCachedHeight =1440
                    ForeThemeColorIndex =2
                    ForeTint =100.0
                    ForeShade =50.0
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =570
                            Top =1125
                            Width =1695
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label6"
                            Caption ="Rating:"
                            GridlineColor =10921638
                            LayoutCachedLeft =570
                            LayoutCachedTop =1125
                            LayoutCachedWidth =2265
                            LayoutCachedHeight =1440
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =2267
                    Top =3514
                    Width =1941
                    Height =315
                    TabIndex =3
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="date"
                    ControlSource ="date"
                    GridlineColor =10921638

                    LayoutCachedLeft =2267
                    LayoutCachedTop =3514
                    LayoutCachedWidth =4208
                    LayoutCachedHeight =3829
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =630
                            Top =3510
                            Width =750
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Bijschrift13"
                            Caption ="Datum:"
                            GridlineColor =10921638
                            LayoutCachedLeft =630
                            LayoutCachedTop =3510
                            LayoutCachedWidth =1380
                            LayoutCachedHeight =3825
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

Private Sub btnBack_Click()
    DoCmd.Close
End Sub

Private Sub btnDelete_Click()
    query = "DELETE FROM Feedback WHERE objectid=" & Me.objectid & " AND isseller= " & IIf(Me.isseller = -1, 1, 0)
     
    DoCmd.SetWarnings False
    DoCmd.RunSQL query
    DoCmd.SetWarnings True
    
    Me.lstFeedback.Requery
End Sub
