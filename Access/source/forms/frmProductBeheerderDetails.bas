Version =20
VersionRequired =20
Begin Form
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =7823
    DatasheetFontHeight =11
    ItemSuffix =30
    Right =25080
    Bottom =12090
    DatasheetGridlinesColor =15132391
    RecSrcDt = Begin
        0xefdca21eedb0e440
    End
    RecordSource ="SELECT OB.id AS OBID, OB.title, OB.description, OB.buyer, OB.seller, OB.payment_"
        "method, payment_instructions, shipment_costs, OB.shipment_instructions, OB.city,"
        " OB.country, CA.id AS CatID, CA.name, OC.category_id AS OCID FROM (objects AS OB"
        " LEFT JOIN object_in_category AS OC ON OB.id = OC.object_id) LEFT JOIN categorie"
        "s AS CA ON OC.category_id = CA.id;"
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
        Begin BoundObjectFrame
            AddColon = NotDefault
            SizeMode =3
            SpecialEffect =2
            BorderLineStyle =0
            Width =4536
            Height =2835
            LabelX =-1701
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
        Begin Attachment
            BackStyle =0
            BorderLineStyle =0
            PictureSizeMode =3
            Width =1701
            Height =1701
            LabelX =-1701
            AddColon =0
            ThemeFontIndex =1
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin NavigationControl
            BorderWidth =1
            BorderLineStyle =0
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin Section
            Height =12413
            Name ="Detail"
            AlternateBackColor =15921906
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =2840
                    Top =1590
                    Width =2271
                    Height =315
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txtTitle"
                    ControlSource ="title"
                    GridlineColor =10921638

                    LayoutCachedLeft =2840
                    LayoutCachedTop =1590
                    LayoutCachedWidth =5111
                    LayoutCachedHeight =1905
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =570
                            Top =1590
                            Width =1695
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label2"
                            Caption ="Titel"
                            GridlineColor =10921638
                            LayoutCachedLeft =570
                            LayoutCachedTop =1590
                            LayoutCachedWidth =2265
                            LayoutCachedHeight =1905
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =2840
                    Top =2040
                    Width =3966
                    Height =1425
                    TabIndex =1
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txtDesc"
                    ControlSource ="description"
                    GridlineColor =10921638

                    LayoutCachedLeft =2840
                    LayoutCachedTop =2040
                    LayoutCachedWidth =6806
                    LayoutCachedHeight =3465
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =570
                            Top =2040
                            Width =1680
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label8"
                            Caption ="Beschrijving"
                            GridlineColor =10921638
                            LayoutCachedLeft =570
                            LayoutCachedTop =2040
                            LayoutCachedWidth =2250
                            LayoutCachedHeight =2355
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =2848
                    Top =4640
                    Width =2271
                    Height =315
                    TabIndex =4
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txtPay"
                    ControlSource ="payment_method"
                    GridlineColor =10921638

                    LayoutCachedLeft =2848
                    LayoutCachedTop =4640
                    LayoutCachedWidth =5119
                    LayoutCachedHeight =4955
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =578
                            Top =4640
                            Width =1680
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label1"
                            Caption ="Betalingswijze"
                            GridlineColor =10921638
                            LayoutCachedLeft =578
                            LayoutCachedTop =4640
                            LayoutCachedWidth =2258
                            LayoutCachedHeight =4955
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =2852
                    Top =7207
                    Width =3966
                    Height =1425
                    TabIndex =7
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="TxtShipIns"
                    ControlSource ="shipment_instructions"
                    GridlineColor =10921638

                    LayoutCachedLeft =2852
                    LayoutCachedTop =7207
                    LayoutCachedWidth =6818
                    LayoutCachedHeight =8632
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =582
                            Top =7207
                            Width =1860
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label3"
                            Caption ="Verzendinstructie"
                            GridlineColor =10921638
                            LayoutCachedLeft =582
                            LayoutCachedTop =7207
                            LayoutCachedWidth =2442
                            LayoutCachedHeight =7522
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =2840
                    Top =8790
                    Width =2271
                    Height =315
                    TabIndex =8
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txtCity"
                    ControlSource ="city"
                    GridlineColor =10921638

                    LayoutCachedLeft =2840
                    LayoutCachedTop =8790
                    LayoutCachedWidth =5111
                    LayoutCachedHeight =9105
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =570
                            Top =8790
                            Width =1680
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label5"
                            Caption ="Plaatsnaam"
                            GridlineColor =10921638
                            LayoutCachedLeft =570
                            LayoutCachedTop =8790
                            LayoutCachedWidth =2250
                            LayoutCachedHeight =9105
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =2840
                    Top =9360
                    Width =2271
                    Height =315
                    TabIndex =9
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txtCountry"
                    ControlSource ="country"
                    GridlineColor =10921638

                    LayoutCachedLeft =2840
                    LayoutCachedTop =9360
                    LayoutCachedWidth =5111
                    LayoutCachedHeight =9675
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =570
                            Top =9360
                            Width =1680
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label7"
                            Caption ="Land"
                            GridlineColor =10921638
                            LayoutCachedLeft =570
                            LayoutCachedTop =9360
                            LayoutCachedWidth =2250
                            LayoutCachedHeight =9675
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =2838
                    Top =1140
                    Height =315
                    TabIndex =13
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txtId"
                    ControlSource ="OBID"
                    GridlineColor =10921638

                    LayoutCachedLeft =2838
                    LayoutCachedTop =1140
                    LayoutCachedWidth =4539
                    LayoutCachedHeight =1455
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =570
                            Top =1140
                            Width =1035
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Bijschrift12"
                            Caption ="Product ID"
                            GridlineColor =10921638
                            LayoutCachedLeft =570
                            LayoutCachedTop =1140
                            LayoutCachedWidth =1605
                            LayoutCachedHeight =1455
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =2838
                    Top =4140
                    Height =315
                    TabIndex =3
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txtSeller"
                    ControlSource ="seller"
                    GridlineColor =10921638

                    LayoutCachedLeft =2838
                    LayoutCachedTop =4140
                    LayoutCachedWidth =4539
                    LayoutCachedHeight =4455
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =570
                            Top =4140
                            Width =945
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Bijschrift13"
                            Caption ="Verkoper"
                            GridlineColor =10921638
                            LayoutCachedLeft =570
                            LayoutCachedTop =4140
                            LayoutCachedWidth =1515
                            LayoutCachedHeight =4455
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =2838
                    Top =3630
                    Height =315
                    TabIndex =2
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txtBuyer"
                    ControlSource ="buyer"
                    GridlineColor =10921638

                    LayoutCachedLeft =2838
                    LayoutCachedTop =3630
                    LayoutCachedWidth =4539
                    LayoutCachedHeight =3945
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =570
                            Top =3630
                            Width =630
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Bijschrift14"
                            Caption ="Koper"
                            GridlineColor =10921638
                            LayoutCachedLeft =570
                            LayoutCachedTop =3630
                            LayoutCachedWidth =1200
                            LayoutCachedHeight =3945
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    OverlapFlags =93
                    IMESentenceMode =3
                    Left =735
                    Top =10320
                    Width =1596
                    Height =315
                    TabIndex =14
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="CAtID"
                    ControlSource ="CatID"
                    GridlineColor =10921638

                    LayoutCachedLeft =735
                    LayoutCachedTop =10320
                    LayoutCachedWidth =2331
                    LayoutCachedHeight =10635
                End
                Begin OptionGroup
                    OverlapFlags =255
                    Left =574
                    Top =10038
                    Width =6520
                    Height =791
                    TabIndex =15
                    BorderColor =10921638
                    Name ="Kader23"
                    GridlineColor =10921638

                    LayoutCachedLeft =574
                    LayoutCachedTop =10038
                    LayoutCachedWidth =7094
                    LayoutCachedHeight =10829
                    Begin
                        Begin Label
                            BackStyle =1
                            OverlapFlags =247
                            Left =694
                            Top =9918
                            Width =825
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Bijschrift24"
                            Caption ="Rubriek"
                            GridlineColor =10921638
                            LayoutCachedLeft =694
                            LayoutCachedTop =9918
                            LayoutCachedWidth =1519
                            LayoutCachedHeight =10233
                        End
                    End
                End
                Begin ComboBox
                    OverlapFlags =247
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =2835
                    Top =10320
                    Width =3685
                    Height =315
                    TabIndex =10
                    BorderColor =10921638
                    ForeColor =3484194
                    ColumnInfo ="\"\";\"\";\"\";\"\";\"10\";\"128\""
                    Name ="lstCat"
                    ControlSource ="OCID"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT * FROM categories  WHERE id NOT IN (\011SELECT parent \011\011\011\011\011"
                        "FROM categories \011\011\011\011\011WHERE parent IS NOT NULL)"
                    ColumnWidths ="0;567"
                    GridlineColor =10921638

                    LayoutCachedLeft =2835
                    LayoutCachedTop =10320
                    LayoutCachedWidth =6520
                    LayoutCachedHeight =10635
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =631
                    Top =11342
                    TabIndex =12
                    ForeColor =4210752
                    Name ="btnBack"
                    Caption ="Terug"
                    OnClick ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =631
                    LayoutCachedTop =11342
                    LayoutCachedWidth =2332
                    LayoutCachedHeight =11625
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
                    Left =5280
                    Top =11342
                    TabIndex =11
                    ForeColor =4210752
                    Name ="btnSave"
                    Caption ="Opslaan"
                    GridlineColor =10921638

                    LayoutCachedLeft =5280
                    LayoutCachedTop =11342
                    LayoutCachedWidth =6981
                    LayoutCachedHeight =11625
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
                    Left =2834
                    Top =5215
                    Width =3981
                    Height =1305
                    TabIndex =5
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txtPayIns"
                    ControlSource ="payment_instructions"
                    GridlineColor =10921638

                    LayoutCachedLeft =2834
                    LayoutCachedTop =5215
                    LayoutCachedWidth =6815
                    LayoutCachedHeight =6520
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =566
                            Top =5215
                            Width =2100
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Bijschrift28"
                            Caption ="Betalingsinstructie"
                            GridlineColor =10921638
                            LayoutCachedLeft =566
                            LayoutCachedTop =5215
                            LayoutCachedWidth =2666
                            LayoutCachedHeight =5530
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =2838
                    Top =6750
                    Width =2271
                    Height =315
                    TabIndex =6
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txtShip"
                    ControlSource ="shipment_costs"
                    GridlineColor =10921638

                    LayoutCachedLeft =2838
                    LayoutCachedTop =6750
                    LayoutCachedWidth =5109
                    LayoutCachedHeight =7065
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =570
                            Top =6750
                            Width =1755
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Bijschrift29"
                            Caption ="Verzendkosten"
                            GridlineColor =10921638
                            LayoutCachedLeft =570
                            LayoutCachedTop =6750
                            LayoutCachedWidth =2325
                            LayoutCachedHeight =7065
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
    If MsgBox("Weet u zeker dat u deze pagina wilt verlaten? De veranderingen worden NIET opgeslagen?", vbQuestion + vbYesNo + vbDefaultButton2, "Afsluiten?") = vbYes Then
       If _
       Me.txtTitle.OldValue <> Me.txtTitle.Value Or _
       Me.txtDesc.OldValue <> Me.txtDesc.Value Or _
       Me.txtBuyer.OldValue <> Me.txtBuyer.Value Or _
       Me.txtSeller.OldValue <> Me.txtSeller.Value Or _
       Me.txtPay.OldValue <> Me.txtPay.Value Or _
       Me.txtPayIns.OldValue <> Me.txtPayIns.Value Or _
       Me.TxtShip.OldValue <> Me.TxtShip.Value Or _
       Me.TxtShipIns.OldValue <> Me.TxtShipIns.Value Or _
       Me.txtCity.OldValue <> Me.txtCity.Value Or _
       Me.txtCountry.OldValue <> Me.txtCountry.Value Or _
       Me.lstCat.OldValue <> Me.lstCat.Value _
       Then
            DoCmd.RunCommand acCmdUndo
        End If
    DoCmd.Close
    End If

End Sub

Private Sub btnSave_Click()
    DoCmd.Close , , acSavePrompt
End Sub
