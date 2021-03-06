﻿Version =20
VersionRequired =20
Begin Form
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =3344
    DatasheetFontHeight =11
    ItemSuffix =8
    Right =25080
    Bottom =12120
    DatasheetGridlinesColor =15132391
    RecSrcDt = Begin
        0x0760798412aee440
    End
    RecordSource ="SELECT * FROM ranks; "
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
            Height =2721
            Name ="Detail"
            AlternateBackColor =15921906
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin CommandButton
                    OverlapFlags =85
                    Left =566
                    Top =566
                    ForeColor =4210752
                    Name ="btnKlantenservice"
                    Caption ="Klantenservice"
                    OnClick ="[Event Procedure]"
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
                Begin CommandButton
                    OverlapFlags =85
                    Left =570
                    Top =1260
                    TabIndex =1
                    ForeColor =4210752
                    Name ="btnBeheer"
                    Caption ="Beheerder"
                    OnClick ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =570
                    LayoutCachedTop =1260
                    LayoutCachedWidth =2271
                    LayoutCachedHeight =1543
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
                    Top =1920
                    TabIndex =2
                    ForeColor =4210752
                    Name ="btnManagement"
                    Caption ="Management"
                    OnClick ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =570
                    LayoutCachedTop =1920
                    LayoutCachedWidth =2271
                    LayoutCachedHeight =2203
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

Private Sub btnBeheer_Click()
    DoCmd.OpenForm "frmMenuBeheerder", , , , , acDialog
End Sub

Private Sub btnKlantenservice_Click()
    DoCmd.OpenForm "frmMenuKlatenservice", , , , , acDialog
End Sub

Private Sub btnManagement_Click()
    DoCmd.OpenForm "frmManagementSwitchboard", , , , , acDialog
End Sub

Private Sub Form_Load()
    Dim rs As Recordset
    Dim queryString As String
    
    'Disable all buttons per default.
    Me.btnKlantenservice.Enabled = False
    Me.btnBeheer.Enabled = False
    Me.btnManagement.Enabled = False
          
    'Query to check the rights of a certain user.
    queryString = "SELECT customer_service, administrator, manager " & _
    "FROM ranks " & _
    "WHERE username = '" & Forms!frmLogin.usernameGlobal & "'"

    Set rs = CurrentDb.OpenRecordset(queryString)
    
    'Enable buttons if user has certain rights.
    If rs!customer_service = True Then
        Me.btnKlantenservice.Enabled = True
    End If
               
    If rs!administrator = True Then
        Me.btnBeheer.Enabled = True
    End If
    
    If rs!manager = True Then
        Me.btnManagement.Enabled = True
    End If

End Sub
