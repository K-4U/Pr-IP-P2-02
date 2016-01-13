Version =20
VersionRequired =20
Begin Form
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =7086
    DatasheetFontHeight =11
    ItemSuffix =19
    Right =25335
    Bottom =12090
    DatasheetGridlinesColor =15132391
    RecSrcDt = Begin
        0xe69c0072f2b0e440
    End
    RecordSource ="SELECT id, name AS Rubrieknaam FROM categories WHERE Parent IS NULL ORDER BY pri"
        "ority;"
    OnCurrent ="[Event Procedure]"
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
        Begin CheckBox
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
        Begin Section
            Height =6689
            Name ="Detail"
            AlternateBackColor =15921906
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin CommandButton
                    Default = NotDefault
                    OverlapFlags =93
                    Left =4308
                    Top =1080
                    TabIndex =1
                    ForeColor =4210752
                    Name ="btnSearch"
                    Caption ="Zoeken"
                    OnClick ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =4308
                    LayoutCachedTop =1080
                    LayoutCachedWidth =6009
                    LayoutCachedHeight =1363
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
                    Overlaps =1
                End
                Begin CheckBox
                    OverlapFlags =85
                    Left =570
                    Top =1677
                    TabIndex =2
                    BorderColor =10921638
                    Name ="chkCategories"
                    OnClick ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =570
                    LayoutCachedTop =1677
                    LayoutCachedWidth =830
                    LayoutCachedHeight =1917
                    Begin
                        Begin Label
                            OverlapFlags =247
                            Left =798
                            Top =1650
                            Width =2415
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Label3"
                            Caption ="Alle Rubrieken laten zien"
                            GridlineColor =10921638
                            LayoutCachedLeft =798
                            LayoutCachedTop =1650
                            LayoutCachedWidth =3213
                            LayoutCachedHeight =1965
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =93
                    IMESentenceMode =3
                    Left =2040
                    Top =1080
                    Height =315
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txtCatName"
                    GridlineColor =10921638

                    LayoutCachedLeft =2040
                    LayoutCachedTop =1080
                    LayoutCachedWidth =3741
                    LayoutCachedHeight =1395
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =570
                            Top =1080
                            Width =1365
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Bijschrift5"
                            Caption ="Rubrieknaam:"
                            GridlineColor =10921638
                            LayoutCachedLeft =570
                            LayoutCachedTop =1080
                            LayoutCachedWidth =1935
                            LayoutCachedHeight =1395
                        End
                    End
                End
                Begin OptionGroup
                    OverlapFlags =247
                    Left =510
                    Top =737
                    Width =5726
                    Height =800
                    TabIndex =8
                    BorderColor =10921638
                    Name ="Kader6"
                    GridlineColor =10921638

                    LayoutCachedLeft =510
                    LayoutCachedTop =737
                    LayoutCachedWidth =6236
                    LayoutCachedHeight =1537
                    Begin
                        Begin Label
                            BackStyle =1
                            OverlapFlags =247
                            Left =630
                            Top =615
                            Width =1590
                            Height =315
                            BorderColor =8355711
                            ForeColor =8355711
                            Name ="Bijschrift7"
                            Caption ="Rubriek Zoeken"
                            GridlineColor =10921638
                            LayoutCachedLeft =630
                            LayoutCachedTop =615
                            LayoutCachedWidth =2220
                            LayoutCachedHeight =930
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =4365
                    Top =2550
                    TabIndex =7
                    ForeColor =4210752
                    Name ="btnAdd"
                    Caption ="Nieuw"
                    OnClick ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =4365
                    LayoutCachedTop =2550
                    LayoutCachedWidth =6066
                    LayoutCachedHeight =2833
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
                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =2550
                    Top =6241
                    TabIndex =6
                    ForeColor =4210752
                    Name ="btnEdit"
                    Caption ="Edit"
                    OnClick ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =2550
                    LayoutCachedTop =6241
                    LayoutCachedWidth =4251
                    LayoutCachedHeight =6524
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
                Begin ListBox
                    ColumnHeads = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    ColumnCount =3
                    Left =450
                    Top =3015
                    Width =5792
                    Height =2954
                    TabIndex =3
                    ForeColor =4210752
                    BorderColor =10921638
                    Name ="lstCategory"
                    RowSourceType ="Table/Query"
                    ColumnWidths ="0;3969;1134"
                    OnDblClick ="[Event Procedure]"
                    OnGotFocus ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =450
                    LayoutCachedTop =3015
                    LayoutCachedWidth =6242
                    LayoutCachedHeight =5969
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =6405
                    Top =3811
                    Width =291
                    TabIndex =4
                    ForeColor =4210752
                    Name ="btnUp"
                    Caption ="▲"
                    OnClick ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =6405
                    LayoutCachedTop =3811
                    LayoutCachedWidth =6696
                    LayoutCachedHeight =4094
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
                    Left =6405
                    Top =4666
                    Width =291
                    TabIndex =5
                    ForeColor =4210752
                    Name ="btnDown"
                    Caption ="▼"
                    OnClick ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =6405
                    LayoutCachedTop =4666
                    LayoutCachedWidth =6696
                    LayoutCachedHeight =4949
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
                    Left =510
                    Top =6240
                    TabIndex =9
                    ForeColor =4210752
                    Name ="btnBack"
                    Caption ="Terug"
                    OnClick ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =510
                    LayoutCachedTop =6240
                    LayoutCachedWidth =2211
                    LayoutCachedHeight =6523
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
                    Left =4535
                    Top =6240
                    TabIndex =10
                    ForeColor =4210752
                    Name ="btnSave"
                    Caption ="Opslaan"
                    OnClick ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =4535
                    LayoutCachedTop =6240
                    LayoutCachedWidth =6236
                    LayoutCachedHeight =6523
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
                Begin Label
                    OverlapFlags =85
                    Left =450
                    Top =2145
                    Width =5175
                    Height =285
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="Bijschrift18"
                    Caption ="Dubbelklik op rubrieknaam om subrubrieken te tonen."
                    GridlineColor =10921638
                    LayoutCachedLeft =450
                    LayoutCachedTop =2145
                    LayoutCachedWidth =5625
                    LayoutCachedHeight =2430
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

Private Sub btnAdd_Click()
    Dim priority As Integer
    
    priority = Me.lstCategory.ListCount
    
    DoCmd.OpenForm "frmNieuweRubriek", , , , , acDialog, Me.id & "|" & priority

End Sub

Private Sub btnDown_Click()
    Dim id_selected As Integer
    Dim priority_selected As Integer
        
    For Each varItem In Me.lstCategory.ItemsSelected
        id_selected = Me.lstCategory.Column(0, varItem) 'Change index for different locations e.g. the end of the line.
        If Not varItem = Me.lstCategory.ListCount - 1 Then
           priority_selected = Me.lstCategory.Column(2, varItem + 1)
           query = "UPDATE categories " & _
            "Set priority = " & Me.lstCategory.Column(2, varItem) & " + 1 WHERE id = " & id_selected
           fixQuery = "UPDATE categories " & _
            "Set priority = " & Me.lstCategory.Column(2, varItem + 1) & " - 1 WHERE id = " & Me.lstCategory.Column(0, varItem + 1)

            On Error Resume Next
            DoCmd.SetWarnings False
            DoCmd.RunSQL query
            DoCmd.RunSQL fixQuery
            DoCmd.SetWarnings True
            
        End If
    Next varItem
    
    Me.lstCategory.Requery
    
End Sub

Private Sub btnEdit_Click()
    Dim id_selected As Integer
        
    For Each varItem In Me.lstCategory.ItemsSelected
        id_selected = Me.lstCategory.Column(0, varItem) 'Change index for different locations e.g. the end of the line.
    Next varItem
    
    DoCmd.OpenForm "frmRubriekData", , , "[id] = " & id_selected, , acDialog

    Me.lstCategory.Requery

End Sub

Private Sub btnSave_Click()
    DoCmd.Close , , acSavePrompt
End Sub

Private Sub btnBack_Click()
    If MsgBox("Weet u zeker dat u deze pagina wilt verlaten? De veranderingen worden NIET opgeslagen?", vbQuestion + vbYesNo + vbDefaultButton2, "Afsluiten?") = vbYes Then
       If _
       Me.lstCategory.OldValue <> Me.lstCategory.Value _
       Then
            DoCmd.RunCommand acCmdUndo
        End If
    DoCmd.Close
    End If

End Sub

Private Sub btnSearch_Click()
    Dim query As String
    
    query = "SELECT id, name AS Rubrieknaam, priority AS Volgnummer " & _
            "FROM categories " & _
            "WHERE name LIKE '" & Me.txtCatName & "' " & _
            "ORDER BY priority"
             
    Me.lstCategory.RowSource = query
End Sub

Private Sub btnUp_Click()
    Dim id_selected As Integer
    Dim priority_selected As Integer
        
    For Each varItem In Me.lstCategory.ItemsSelected
        id_selected = Me.lstCategory.Column(0, varItem) 'Change index for different locations e.g. the end of the line.
        If Not varItem = 1 Then
           priority_selected = Me.lstCategory.Column(2, varItem - 1)
           query = "UPDATE categories " & _
            "Set priority = " & Me.lstCategory.Column(2, varItem) & " - 1 WHERE id = " & id_selected
           fixQuery = "UPDATE categories " & _
            "Set priority = " & Me.lstCategory.Column(2, varItem - 1) & " + 1 WHERE id = " & Me.lstCategory.Column(0, varItem - 1)
   
            On Error Resume Next
            DoCmd.SetWarnings False
            DoCmd.RunSQL query
            DoCmd.RunSQL fixQuery
            DoCmd.SetWarnings True
            
        End If
    Next varItem

    Me.lstCategory.Requery
    
End Sub

Private Sub chkCategories_Click()
 Dim query As String
 If Me.chkCategories = True Then
    query = "SELECT id, name AS Rubrieknaam, priority AS Volgnummer " & _
    "FROM categories " & _
    "ORDER BY categories.priority"
    
    Me.btnDown.Enabled = False
    Me.btnUp.Enabled = False
    Me.btnAdd.Enabled = False
    Me.btnSearch.Enabled = True
    
 Else
    query = "SELECT id, name AS Rubrieknaam, priority AS Volgnummer " & _
    "FROM categories " & _
    "WHERE (((parent) Is Null)) " & _
    "ORDER BY priority"
    
    Me.btnAdd.Enabled = True
    Me.btnSearch.Enabled = False
    
 End If
 
 Me.lstCategory.RowSource = query
 Me.lstCategory.Requery
 
End Sub

Private Sub Form_Current()
    ' set first checkbox default checked
    Me.chkCategories.Value = False
    Me.btnSearch.Enabled = False
    Me.btnDown.Enabled = False
    Me.btnUp.Enabled = False
    
    query = "SELECT id, name AS Rubrieknaam, priority AS Volgnummer " & _
    "FROM categories " & _
    "WHERE (((parent) Is Null)) " & _
    "ORDER BY priority"
    
    Me.lstCategory.RowSource = query
    Me.lstCategory.Requery
    
End Sub

Private Sub lstCategory_DblClick(Cancel As Integer)
    Dim id_selected As Integer
    
    For Each varItem In Me.lstCategory.ItemsSelected
        id_selected = Me.lstCategory.Column(0, varItem) 'Change index for different locations e.g. the end of the line.
    Next varItem
    
    DoCmd.OpenForm "frmRubriekStructuur", , , "[id] = " & id_selected, , acDialog
    
    Me.lstCategory.Requery
End Sub

Private Sub lstCategory_GotFocus()
    Me.btnDown.Enabled = True
    Me.btnUp.Enabled = True
End Sub
