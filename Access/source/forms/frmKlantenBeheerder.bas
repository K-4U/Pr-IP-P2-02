Version =20
VersionRequired =20
Begin Form
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =7370
    DatasheetFontHeight =11
    ItemSuffix =46
    Right =25335
    Bottom =12090
    DatasheetGridlinesColor =15132391
    RecSrcDt = Begin
        0xb9e62c67b1b0e440
    End
    RecordSource ="SELECT username, firstname + ' ' + lastname AS naam, postalcode, adress_number F"
        "ROM users;"
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
            Shape =1
            Gradient =12
            BackThemeColorIndex =4
            BackTint =60.0
            BorderLineStyle =0
            BorderColor =16777215
            BorderThemeColorIndex =4
            BorderTint =60.0
            ThemeFontIndex =1
        End
        Begin OptionButton
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
            Height =7029
            Name ="Detail"
            AlternateBackColor =15921906
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin CommandButton
                    OverlapFlags =85
                    Left =5164
                    Top =225
                    ForeColor =4210752
                    Name ="Command8"
                    Caption ="Logout"
                    GridlineColor =10921638

                    LayoutCachedLeft =5164
                    LayoutCachedTop =225
                    LayoutCachedWidth =6865
                    LayoutCachedHeight =508
                    BackColor =15123357
                    BorderColor =15123357
                    WebImagePaddingLeft =2
                    WebImagePaddingTop =2
                    WebImagePaddingRight =1
                    WebImagePaddingBottom =1
                    Overlaps =1
                End
                Begin OptionGroup
                    OverlapFlags =93
                    Left =345
                    Top =694
                    Width =6651
                    Height =2031
                    TabIndex =1
                    BorderColor =10921638
                    Name ="Kader13"
                    GridlineColor =10921638

                    LayoutCachedLeft =345
                    LayoutCachedTop =694
                    LayoutCachedWidth =6996
                    LayoutCachedHeight =2725
                    Begin
                        Begin Label
                            BackStyle =1
                            OverlapFlags =215
                            Left =460
                            Top =572
                            Width =1275
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Bijschrift14"
                            Caption ="Klant zoeken"
                            GridlineColor =10921638
                            LayoutCachedLeft =460
                            LayoutCachedTop =572
                            LayoutCachedWidth =1735
                            LayoutCachedHeight =887
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =215
                    IMESentenceMode =3
                    Left =2160
                    Top =1422
                    Width =2271
                    Height =315
                    TabIndex =2
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txtPostalcode"
                    GridlineColor =10921638

                    LayoutCachedLeft =2160
                    LayoutCachedTop =1422
                    LayoutCachedWidth =4431
                    LayoutCachedHeight =1737
                    Begin
                        Begin Label
                            OverlapFlags =215
                            Left =474
                            Top =1425
                            Width =930
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Bijschrift16"
                            Caption ="Postcode"
                            GridlineColor =10921638
                            LayoutCachedLeft =474
                            LayoutCachedTop =1425
                            LayoutCachedWidth =1404
                            LayoutCachedHeight =1740
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =215
                    IMESentenceMode =3
                    Left =2160
                    Top =1819
                    Width =1041
                    Height =315
                    TabIndex =3
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txtAdressnumber"
                    GridlineColor =10921638

                    LayoutCachedLeft =2160
                    LayoutCachedTop =1819
                    LayoutCachedWidth =3201
                    LayoutCachedHeight =2134
                    Begin
                        Begin Label
                            OverlapFlags =215
                            Left =469
                            Top =1819
                            Width =1275
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Bijschrift18"
                            Caption ="Huisnummer"
                            GridlineColor =10921638
                            LayoutCachedLeft =469
                            LayoutCachedTop =1819
                            LayoutCachedWidth =1744
                            LayoutCachedHeight =2134
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =5265
                    Top =6405
                    TabIndex =4
                    ForeColor =4210752
                    Name ="btnDelete"
                    Caption ="Deactiveren"
                    OnClick ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =5265
                    LayoutCachedTop =6405
                    LayoutCachedWidth =6966
                    LayoutCachedHeight =6688
                    BackColor =15123357
                    BorderColor =15123357
                    WebImagePaddingLeft =2
                    WebImagePaddingTop =2
                    WebImagePaddingRight =1
                    WebImagePaddingBottom =1
                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =215
                    Left =469
                    Top =2265
                    TabIndex =5
                    ForeColor =4210752
                    Name ="cmdSearchUser"
                    Caption ="Zoeken"
                    OnClick ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =469
                    LayoutCachedTop =2265
                    LayoutCachedWidth =2170
                    LayoutCachedHeight =2548
                    BackColor =15123357
                    BorderColor =15123357
                    WebImagePaddingLeft =2
                    WebImagePaddingTop =2
                    WebImagePaddingRight =1
                    WebImagePaddingBottom =1
                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =215
                    Left =2434
                    Top =2265
                    TabIndex =6
                    ForeColor =4210752
                    Name ="cmdResetUser"
                    Caption ="Reset"
                    OnClick ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =2434
                    LayoutCachedTop =2265
                    LayoutCachedWidth =4135
                    LayoutCachedHeight =2548
                    BackColor =15123357
                    BorderColor =15123357
                    WebImagePaddingLeft =2
                    WebImagePaddingTop =2
                    WebImagePaddingRight =1
                    WebImagePaddingBottom =1
                    Overlaps =1
                End
                Begin TextBox
                    OverlapFlags =215
                    IMESentenceMode =3
                    Left =2160
                    Top =1025
                    Width =2271
                    Height =315
                    TabIndex =7
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txtUsername"
                    GridlineColor =10921638

                    LayoutCachedLeft =2160
                    LayoutCachedTop =1025
                    LayoutCachedWidth =4431
                    LayoutCachedHeight =1340
                    Begin
                        Begin Label
                            OverlapFlags =215
                            Left =469
                            Top =1035
                            Width =1605
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Bijschrift27"
                            Caption ="Gebruikersnaam"
                            GridlineColor =10921638
                            LayoutCachedLeft =469
                            LayoutCachedTop =1035
                            LayoutCachedWidth =2074
                            LayoutCachedHeight =1350
                        End
                    End
                End
                Begin ListBox
                    ColumnHeads = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    ColumnCount =4
                    Left =340
                    Top =3004
                    Width =6651
                    Height =3232
                    TabIndex =8
                    ForeColor =4210752
                    BorderColor =10921638
                    Name ="lstUsers"
                    RowSourceType ="Table/Query"
                    ColumnWidths ="1701;2835;1134;851"
                    OnDblClick ="[Event Procedure]"
                    GridlineColor =10921638
                    AllowValueListEdits =0

                    LayoutCachedLeft =340
                    LayoutCachedTop =3004
                    LayoutCachedWidth =6991
                    LayoutCachedHeight =6236
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


Private Sub btnDelete_Click()
    Dim username_selected As String
    
    For Each varItem In Me.lstUsers.ItemsSelected
        username_selected = Me.lstUsers.Column(0, varItem) 'Change index for different locations e.g. the end of the line.
    Next varItem
    
    query = "UPDATE users " & _
            "SET firstname = 'Verwijderd', lastname = 'Verwijderd', adress_street1 = 'Verwijderd', adress_street2 = 'Verwijderd', " & _
            "adress_number = 0, postalcode = '0000AA', city = 'Verwijderd', country = 'Verwijderd', birthdate = '1899-01-02' , email = 'verwijderd@verwijderd.nl', " & _
            "password = 'Verwijderd', security_answer = 'Gedeactiveerd', isseller = 0 " & _
            "WHERE username = '" & username_selected & "'"
     
    MsgBox query
    
    'On Error Resume Next
    DoCmd.SetWarnings False
    DoCmd.RunSQL query
    DoCmd.SetWarnings True
    
    
    Me.lstUsers.Requery
End Sub

Private Sub cmdSearchUser_Click()
Dim searchNumber As String
    Dim searchTitle As String
    Dim searchCategory As String
    Dim query As String
    
    If Not IsNull(Me.txtAdressNumber.Value) Then
        searchAdressNumber = Me.txtAdressNumber.Value
    End If
    If Not IsNull(Me.txtUsername.Value) Then
        searchUsername = Me.txtUsername.Value
    End If
    If Not IsNull(Me.txtPostalcode.Value) Then
        searchPostalcode = Me.txtPostalcode.Value
    End If
    
    
    query = "SELECT users.username AS Gebruikersnaam, firstname+' '+lastname AS Naam, users.postalcode AS Postcode, users.adress_number AS Nummer" & vbCrLf & _
            "FROM users" & vbCrLf & _
            "WHERE (((users.username) Like '%" & searchUsername & "%') AND ((users.postalcode) Like '%" & searchPostalcode & "%') AND ((users.adress_number) Like '%" & searchAdressNumber & "%'));"
    
    Me.lstUsers.RowSource = query
    
    Me.lstUsers.Requery
    
    Me.cmdResetUser.Enabled = True
             
End Sub

Private Sub cmdResetUser_Click()
    Dim query As String
    
    Me.txtPostalcode.Value = Null
    Me.txtAdressNumber.Value = Null
    Me.txtUsername.Value = Null
    
    Me.txtUsername.SetFocus
    
    Me.cmdResetUser.Enabled = False
    
    query = "SELECT users.username AS Gebruikersnaam, firstname+' '+lastname AS Naam, users.postalcode AS Postcode, users.adress_number AS Nummer " & _
            "FROM Users"
            
    Me.lstUsers.RowSource = query
    
    Me.lstUsers.Requery
            
End Sub

Private Sub Form_Load()
    Dim query As String
    
    query = "SELECT users.username AS Gebruikersnaam, firstname+' '+lastname AS Naam, users.postalcode AS Postcode, users.adress_number AS Nummer " & _
            "FROM Users"
            
    Me.lstUsers.RowSource = query
    
    Me.lstUsers.Requery
    
    Me.cmdResetUser.Enabled = False

End Sub

Private Sub lstUsers_DblClick(Cancel As Integer)
    Dim username_selected As String
    
    For Each varItem In Me.lstUsers.ItemsSelected
        username_selected = Me.lstUsers.Column(0, varItem) 'Change index for different locations e.g. the end of the line.
    Next varItem
    
    DoCmd.OpenForm "frmKlantenBeheerderDetails", , , "[username] = '" & username_selected & "'", acFormReadOnly, acDialog
    
    Me.lstUsers.Requery
    
End Sub
