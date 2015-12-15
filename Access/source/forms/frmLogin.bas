Version =20
VersionRequired =20
Begin Form
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =4535
    DatasheetFontHeight =11
    ItemSuffix =6
    Right =25335
    Bottom =12480
    DatasheetGridlinesColor =15132391
    RecSrcDt = Begin
        0xad3bb44bf0aae440
    End
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
        Begin Section
            Height =3968
            Name ="Detail"
            AlternateBackColor =15921906
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin CommandButton
                    OverlapFlags =85
                    Left =2040
                    Top =2664
                    ForeColor =4210752
                    Name ="btnLogin"
                    Caption ="Login"
                    OnClick ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =2040
                    LayoutCachedTop =2664
                    LayoutCachedWidth =3741
                    LayoutCachedHeight =2947
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
                    Left =2029
                    Top =2154
                    Height =315
                    TabIndex =1
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txtPassword"
                    InputMask ="Password"
                    GridlineColor =10921638

                    LayoutCachedLeft =2029
                    LayoutCachedTop =2154
                    LayoutCachedWidth =3730
                    LayoutCachedHeight =2469
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =226
                            Top =2154
                            Width =1320
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label2"
                            Caption ="Wachtwoord:"
                            GridlineColor =10921638
                            LayoutCachedLeft =226
                            LayoutCachedTop =2154
                            LayoutCachedWidth =1546
                            LayoutCachedHeight =2469
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =2026
                    Top =1530
                    Height =315
                    TabIndex =2
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txtUsername"
                    GridlineColor =10921638

                    LayoutCachedLeft =2026
                    LayoutCachedTop =1530
                    LayoutCachedWidth =3727
                    LayoutCachedHeight =1845
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =226
                            Top =1530
                            Width =1665
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label4"
                            Caption ="Gebruikersnaam:"
                            GridlineColor =10921638
                            LayoutCachedLeft =226
                            LayoutCachedTop =1530
                            LayoutCachedWidth =1891
                            LayoutCachedHeight =1845
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
Public usernameGlobal As String

Private Sub btnLogin_Click()
    'Setup for the data for the post request
    Dim PostData As String
    PostData = "username=" & Me.txtUsername.Value & "&password=" & Me.txtPassword.Value
    
    'Execute the post request
    Set objHTTP = CreateObject("MSXML2.ServerXMLHTTP")
    URL = "https://veiling.k-4u.nl/db-login.php"
    objHTTP.Open "POST", URL, False
    objHTTP.setRequestHeader "User-Agent", "eenmaalAndermaal-database"
    objHTTP.setRequestHeader "Content-Type", "application/x-www-form-urlencoded"
    objHTTP.setRequestHeader "Content-Length", Len(PostData)
    objHTTP.send (PostData)
    
    'If no results are returned the username and password are correct
    If objHTTP.responseText = "0" Then
        usernameGlobal = Me.txtUsername.Value
        DoCmd.OpenForm "frmKeuzemenu", , , , , acDialog
     Else
        MsgBox "Gebruikernaam en/of wachtwoord is fout. "
    End If
    
End Sub
