Version =20
VersionRequired =20
Begin Form
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =6009
    DatasheetFontHeight =11
    ItemSuffix =19
    Right =25080
    Bottom =12120
    DatasheetGridlinesColor =15132391
    Filter ="[username] = 'Ronaldo7'"
    RecSrcDt = Begin
        0xaf9d8b8832ade440
    End
    RecordSource ="users"
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
            Height =8503
            Name ="Detail"
            AlternateBackColor =15921906
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    OverlapFlags =87
                    IMESentenceMode =3
                    Left =2270
                    Top =1140
                    Width =2271
                    Height =315
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txtUser"
                    ControlSource ="username"
                    GridlineColor =10921638

                    LayoutCachedLeft =2270
                    LayoutCachedTop =1140
                    LayoutCachedWidth =4541
                    LayoutCachedHeight =1455
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =570
                            Top =1140
                            Width =1695
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label2"
                            Caption ="Gebruikersnaam"
                            GridlineColor =10921638
                            LayoutCachedLeft =570
                            LayoutCachedTop =1140
                            LayoutCachedWidth =2265
                            LayoutCachedHeight =1455
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =87
                    IMESentenceMode =3
                    Left =2270
                    Top =2835
                    Width =3396
                    Height =345
                    TabIndex =3
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txtAdress1"
                    ControlSource ="adress_street1"
                    GridlineColor =10921638

                    LayoutCachedLeft =2270
                    LayoutCachedTop =2835
                    LayoutCachedWidth =5666
                    LayoutCachedHeight =3180
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =570
                            Top =2835
                            Width =1695
                            Height =345
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label8"
                            Caption ="Adresregel 1"
                            GridlineColor =10921638
                            LayoutCachedLeft =570
                            LayoutCachedTop =2835
                            LayoutCachedWidth =2265
                            LayoutCachedHeight =3180
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =87
                    IMESentenceMode =3
                    Left =2270
                    Top =1695
                    Width =2271
                    Height =315
                    TabIndex =1
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txtFirst"
                    ControlSource ="firstname"
                    GridlineColor =10921638

                    LayoutCachedLeft =2270
                    LayoutCachedTop =1695
                    LayoutCachedWidth =4541
                    LayoutCachedHeight =2010
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =570
                            Top =1695
                            Width =1695
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label1"
                            Caption ="Voornaam"
                            GridlineColor =10921638
                            LayoutCachedLeft =570
                            LayoutCachedTop =1695
                            LayoutCachedWidth =2265
                            LayoutCachedHeight =2010
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =2655
                    Top =570
                    Width =2046
                    TabIndex =11
                    ForeColor =4210752
                    Name ="btnDeactivate"
                    Caption ="Account deactiveren"
                    OnClick ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =2655
                    LayoutCachedTop =570
                    LayoutCachedWidth =4701
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
                    OverlapFlags =87
                    IMESentenceMode =3
                    Left =2270
                    Top =4485
                    Width =2271
                    Height =315
                    TabIndex =6
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txtPost"
                    ControlSource ="postalcode"
                    GridlineColor =10921638

                    LayoutCachedLeft =2270
                    LayoutCachedTop =4485
                    LayoutCachedWidth =4541
                    LayoutCachedHeight =4800
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =570
                            Top =4485
                            Width =1695
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label3"
                            Caption ="Postcode"
                            GridlineColor =10921638
                            LayoutCachedLeft =570
                            LayoutCachedTop =4485
                            LayoutCachedWidth =2265
                            LayoutCachedHeight =4800
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =87
                    IMESentenceMode =3
                    Left =2270
                    Top =3405
                    Width =3396
                    Height =345
                    TabIndex =4
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txtAdress2"
                    ControlSource ="adress_street2"
                    GridlineColor =10921638

                    LayoutCachedLeft =2270
                    LayoutCachedTop =3405
                    LayoutCachedWidth =5666
                    LayoutCachedHeight =3750
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =570
                            Top =3405
                            Width =1695
                            Height =345
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label5"
                            Caption ="Adresregel 2"
                            GridlineColor =10921638
                            LayoutCachedLeft =570
                            LayoutCachedTop =3405
                            LayoutCachedWidth =2265
                            LayoutCachedHeight =3750
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =87
                    IMESentenceMode =3
                    Left =2270
                    Top =2265
                    Width =2271
                    Height =315
                    TabIndex =2
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txtLast"
                    ControlSource ="lastname"
                    GridlineColor =10921638

                    LayoutCachedLeft =2270
                    LayoutCachedTop =2265
                    LayoutCachedWidth =4541
                    LayoutCachedHeight =2580
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =570
                            Top =2265
                            Width =1695
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label7"
                            Caption ="Achternaam"
                            GridlineColor =10921638
                            LayoutCachedLeft =570
                            LayoutCachedTop =2265
                            LayoutCachedWidth =2265
                            LayoutCachedHeight =2580
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =87
                    IMESentenceMode =3
                    Left =2270
                    Top =5040
                    Width =2271
                    Height =315
                    TabIndex =7
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txtCity"
                    ControlSource ="city"
                    GridlineColor =10921638

                    LayoutCachedLeft =2270
                    LayoutCachedTop =5040
                    LayoutCachedWidth =4541
                    LayoutCachedHeight =5355
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =570
                            Top =5040
                            Width =1695
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label9"
                            Caption ="Plaatsnaam"
                            GridlineColor =10921638
                            LayoutCachedLeft =570
                            LayoutCachedTop =5040
                            LayoutCachedWidth =2265
                            LayoutCachedHeight =5355
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =87
                    IMESentenceMode =3
                    Left =2270
                    Top =5610
                    Width =2271
                    Height =315
                    TabIndex =8
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txtCountry"
                    ControlSource ="country"
                    GridlineColor =10921638

                    LayoutCachedLeft =2270
                    LayoutCachedTop =5610
                    LayoutCachedWidth =4541
                    LayoutCachedHeight =5925
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =570
                            Top =5610
                            Width =1695
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label11"
                            Caption ="Land"
                            GridlineColor =10921638
                            LayoutCachedLeft =570
                            LayoutCachedTop =5610
                            LayoutCachedWidth =2265
                            LayoutCachedHeight =5925
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =87
                    IMESentenceMode =3
                    Left =2270
                    Top =6180
                    Width =2271
                    Height =315
                    TabIndex =9
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txtBirth"
                    ControlSource ="birthdate"
                    GridlineColor =10921638

                    LayoutCachedLeft =2270
                    LayoutCachedTop =6180
                    LayoutCachedWidth =4541
                    LayoutCachedHeight =6495
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =570
                            Top =6180
                            Width =1695
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label13"
                            Caption ="Geboorte Datum"
                            GridlineColor =10921638
                            LayoutCachedLeft =570
                            LayoutCachedTop =6180
                            LayoutCachedWidth =2265
                            LayoutCachedHeight =6495
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =2267
                    Top =3975
                    Height =315
                    TabIndex =5
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txtAdressN"
                    ControlSource ="adress_number"
                    GridlineColor =10921638

                    LayoutCachedLeft =2267
                    LayoutCachedTop =3975
                    LayoutCachedWidth =3968
                    LayoutCachedHeight =4290
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =570
                            Top =3979
                            Width =1515
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Bijschrift16"
                            Caption ="Huisnummer"
                            GridlineColor =10921638
                            LayoutCachedLeft =570
                            LayoutCachedTop =3979
                            LayoutCachedWidth =2085
                            LayoutCachedHeight =4294
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =2271
                    Top =6690
                    Height =315
                    TabIndex =10
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txtSeller"
                    ControlSource ="isseller"
                    Format ="True/False"
                    GridlineColor =10921638

                    LayoutCachedLeft =2271
                    LayoutCachedTop =6690
                    LayoutCachedWidth =3972
                    LayoutCachedHeight =7005
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =570
                            Top =6690
                            Width =945
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Bijschrift17"
                            Caption ="Verkoper"
                            GridlineColor =10921638
                            LayoutCachedLeft =570
                            LayoutCachedTop =6690
                            LayoutCachedWidth =1515
                            LayoutCachedHeight =7005
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =1260
                    Top =7530
                    TabIndex =12
                    ForeColor =4210752
                    Name ="btnSave"
                    Caption ="Opslaan"
                    OnClick ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =1260
                    LayoutCachedTop =7530
                    LayoutCachedWidth =2961
                    LayoutCachedHeight =7813
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
                    Left =3855
                    Top =7540
                    TabIndex =13
                    ForeColor =4210752
                    Name ="btnBack"
                    Caption ="Terug"
                    OnClick ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =3855
                    LayoutCachedTop =7540
                    LayoutCachedWidth =5556
                    LayoutCachedHeight =7823
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
Option Compare Database

Private Sub btnBack_Click()
    'Check if any changes happened. If happened execute undo. If not just close form.
    If MsgBox("Weet u zeker dat u deze pagina wilt verlaten? De veranderingen worden NIET opgeslagen?", vbQuestion + vbYesNo + vbDefaultButton2, "Afsluiten?") = vbYes Then
       If _
       Me.txtUser.OldValue <> Me.txtUser.Value Or _
       Me.txtFirst.OldValue <> Me.txtFirst.Value Or _
       Me.txtLast.OldValue <> Me.txtLast.Value Or _
       Me.txtAdress1.OldValue <> Me.txtAdress1.Value Or _
       Me.txtAdress2.OldValue <> Me.txtAdress2.Value Or _
       Me.txtAdressN.OldValue <> Me.txtAdressN.Value Or _
       Me.txtPost.OldValue <> Me.txtPost.Value Or _
       Me.txtCity.OldValue <> Me.txtCity.Value Or _
       Me.txtCountry.OldValue <> Me.txtCountry.Value Or _
       Me.txtBirth.OldValue <> Me.txtBirth.Value Or _
       Me.txtSeller.OldValue <> Me.txtSeller.Value _
       Then
        
            DoCmd.RunCommand acCmdUndo
        End If
    DoCmd.Close
    End If

End Sub

Private Sub btnDeactivate_Click()
    'Deactivate function
    Dim query As String
    
    query = "UPDATE users " & _
            "SET firstname = 'Verwijderd', lastname = 'Verwijderd', adress_street1 = 'Verwijderd', adress_street2 = 'Verwijderd', " & _
            "adress_number = 0, postalcode = '0000AA', city = 'Verwijderd', country = 'Verwijderd', birthdate = '1899-01-02' , email = 'verwijderd@verwijderd.nl', " & _
            "password = 'Verwijderd', security_answer = 'Gedeactiveerd', isseller = 0 " & _
            "WHERE username = '" & Me.username & "'"
    
    'On Error Resume Next
    DoCmd.SetWarnings False
    DoCmd.RunSQL query
    DoCmd.SetWarnings True
    
    DoCmd.Close
    
End Sub

Private Sub btnSave_Click()
    DoCmd.Close , , acSavePrompt
End Sub
