Version =20
VersionRequired =20
Begin Form
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =7380
    DatasheetFontHeight =11
    ItemSuffix =48
    Right =25080
    Bottom =12120
    DatasheetGridlinesColor =15132391
    RecSrcDt = Begin
        0x8003329cd3b0e440
    End
    RecordSource ="SELECT username, firstname + ' ' + lastname AS naam, postalcode, adress_number F"
        "ROM users; "
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
            Height =8844
            Name ="Detail"
            AlternateBackColor =15921906
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin CommandButton
                    OverlapFlags =85
                    Left =5102
                    Top =453
                    TabIndex =5
                    ForeColor =4210752
                    Name ="btnBack"
                    Caption ="Terug"
                    OnClick ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =5102
                    LayoutCachedTop =453
                    LayoutCachedWidth =6803
                    LayoutCachedHeight =736
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
                    Top =2899
                    Width =6651
                    Height =1566
                    TabIndex =6
                    BorderColor =10921638
                    Name ="Kader13"
                    GridlineColor =10921638

                    LayoutCachedLeft =345
                    LayoutCachedTop =2899
                    LayoutCachedWidth =6996
                    LayoutCachedHeight =4465
                    Begin
                        Begin Label
                            BackStyle =1
                            OverlapFlags =215
                            Left =460
                            Top =2777
                            Width =1275
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Bijschrift14"
                            Caption ="Klant zoeken"
                            GridlineColor =10921638
                            LayoutCachedLeft =460
                            LayoutCachedTop =2777
                            LayoutCachedWidth =1735
                            LayoutCachedHeight =3092
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =215
                    IMESentenceMode =3
                    Left =2141
                    Top =3225
                    Width =2271
                    Height =315
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txtPostalcode"
                    GridlineColor =10921638

                    LayoutCachedLeft =2141
                    LayoutCachedTop =3225
                    LayoutCachedWidth =4412
                    LayoutCachedHeight =3540
                    Begin
                        Begin Label
                            OverlapFlags =215
                            Left =455
                            Top =3228
                            Width =930
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Bijschrift16"
                            Caption ="Postcode"
                            GridlineColor =10921638
                            LayoutCachedLeft =455
                            LayoutCachedTop =3228
                            LayoutCachedWidth =1385
                            LayoutCachedHeight =3543
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =215
                    IMESentenceMode =3
                    Left =2141
                    Top =3622
                    Width =1041
                    Height =315
                    TabIndex =1
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txtAdressnumber"
                    GridlineColor =10921638

                    LayoutCachedLeft =2141
                    LayoutCachedTop =3622
                    LayoutCachedWidth =3182
                    LayoutCachedHeight =3937
                    Begin
                        Begin Label
                            OverlapFlags =215
                            Left =450
                            Top =3622
                            Width =1275
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Bijschrift18"
                            Caption ="Huisnummer"
                            GridlineColor =10921638
                            LayoutCachedLeft =450
                            LayoutCachedTop =3622
                            LayoutCachedWidth =1725
                            LayoutCachedHeight =3937
                        End
                    End
                End
                Begin CommandButton
                    Default = NotDefault
                    OverlapFlags =215
                    Left =450
                    Top =4068
                    TabIndex =2
                    ForeColor =4210752
                    Name ="cmdSearchUser"
                    Caption ="Zoeken"
                    OnClick ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =450
                    LayoutCachedTop =4068
                    LayoutCachedWidth =2151
                    LayoutCachedHeight =4351
                    BackColor =15123357
                    BorderColor =15123357
                    WebImagePaddingLeft =2
                    WebImagePaddingTop =2
                    WebImagePaddingRight =1
                    WebImagePaddingBottom =1
                    Overlaps =1
                End
                Begin CommandButton
                    Cancel = NotDefault
                    OverlapFlags =215
                    Left =2415
                    Top =4068
                    TabIndex =3
                    ForeColor =4210752
                    Name ="cmdResetUser"
                    Caption ="Reset"
                    OnClick ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =2415
                    LayoutCachedTop =4068
                    LayoutCachedWidth =4116
                    LayoutCachedHeight =4351
                    BackColor =15123357
                    BorderColor =15123357
                    WebImagePaddingLeft =2
                    WebImagePaddingTop =2
                    WebImagePaddingRight =1
                    WebImagePaddingBottom =1
                    Overlaps =1
                End
                Begin ListBox
                    ColumnHeads = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    ColumnCount =4
                    Left =345
                    Top =4980
                    Width =6651
                    Height =3232
                    TabIndex =4
                    ForeColor =4210752
                    BorderColor =10921638
                    Name ="lstUsers"
                    RowSourceType ="Table/Query"
                    ColumnWidths ="1701;2835;1134;851"
                    OnDblClick ="[Event Procedure]"
                    GridlineColor =10921638
                    AllowValueListEdits =0

                    LayoutCachedLeft =345
                    LayoutCachedTop =4980
                    LayoutCachedWidth =6996
                    LayoutCachedHeight =8212
                End
                Begin Label
                    OverlapFlags =85
                    Left =345
                    Top =4590
                    Width =4005
                    Height =285
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="Bijschrift46"
                    Caption ="Dubbelklikken op naam voor meer details."
                    GridlineColor =10921638
                    LayoutCachedLeft =345
                    LayoutCachedTop =4590
                    LayoutCachedWidth =4350
                    LayoutCachedHeight =4875
                End
                Begin Label
                    OverlapFlags =85
                    Left =396
                    Top =396
                    Width =4635
                    Height =2220
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="Bijschrift47"
                    Caption ="Wanneer u een klant aan de telefoon heeft doe de volgende stappen:\015\0121. Vra"
                        "ag om postcode\015\0122. Vraag om huisnummer\015\0123. Klik op zoeken. In de lij"
                        "st komen de klanten die hieraan matchen.\015\0124. Ter verificatie staan de gebr"
                        "uikersnaam en naam er in de lijst bij."
                    GridlineColor =10921638
                    LayoutCachedLeft =396
                    LayoutCachedTop =396
                    LayoutCachedWidth =5031
                    LayoutCachedHeight =2616
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
    Dim username_selected As String
    
    For Each varItem In Me.lstUsers.ItemsSelected
        username_selected = Me.lstUsers.Column(0, varItem) 'Change index for different locations e.g. the end of the line.
    Next varItem
    
    query = "UPDATE users " & _
            "SET firstname = 'Verwijderd', lastname = 'Verwijderd', adress_street1 = 'Verwijderd', adress_street2 = 'Verwijderd', " & _
            "adress_number = 0, postalcode = '0000AA', city = 'Verwijderd', country = 'Verwijderd', birthdate = '1899-01-02' , email = 'verwijderd@verwijderd.nl', " & _
            "password = 'Verwijderd', security_answer = 'Gedeactiveerd', isseller = 0 " & _
            "WHERE username = '" & username_selected & "'"
    
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
    
    If Not IsNull(Me.txtAdressnumber.Value) Then
        searchAdressNumber = Me.txtAdressnumber.Value
    End If
    If Not IsNull(Me.txtPostalcode.Value) Then
        searchPostalcode = Me.txtPostalcode.Value
    End If
    
    
    query = "SELECT users.username AS Gebruikersnaam, firstname+' '+lastname AS Naam, users.postalcode AS Postcode, users.adress_number AS Nummer" & vbCrLf & _
            "FROM users" & vbCrLf & _
            "WHERE((users.postalcode) Like '%" & searchPostalcode & "%') AND ((users.adress_number) Like '%" & searchAdressNumber & "%'));"
    
    Me.lstUsers.RowSource = query
    
    Me.lstUsers.Requery
    
    Me.cmdResetUser.Enabled = True
             
End Sub

Private Sub cmdResetUser_Click()
    Dim query As String
    
    Me.txtPostalcode.Value = Null
    Me.txtAdressnumber.Value = Null
    
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
    
    DoCmd.OpenForm "frmKlantenKlantenserviceDetails", , , "[username] = '" & username_selected & "'", acFormReadOnly, acDialog
    
    Me.lstUsers.Requery
    
End Sub
