Version =20
VersionRequired =20
Begin Form
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =6803
    DatasheetFontHeight =11
    ItemSuffix =20
    Right =19800
    Bottom =12120
    DatasheetGridlinesColor =15132391
    RecSrcDt = Begin
        0xc4099b73f1b0e440
    End
    RecordSource ="SELECT id, name FROM categories;"
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
            Height =5385
            Name ="Detail"
            AlternateBackColor =15921906
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin CommandButton
                    OverlapFlags =85
                    Left =4478
                    Top =1365
                    TabIndex =4
                    ForeColor =4210752
                    Name ="btnNew"
                    Caption ="Nieuw"
                    OnClick ="[Event Procedure]"
                    OnExit ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =4478
                    LayoutCachedTop =1365
                    LayoutCachedWidth =6179
                    LayoutCachedHeight =1648
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
                    Left =394
                    Top =1753
                    Width =5783
                    Height =2892
                    TabIndex =1
                    ForeColor =4210752
                    BorderColor =10921638
                    Name ="lstCategory"
                    RowSourceType ="Table/Query"
                    ColumnWidths ="0;3969;567"
                    OnDblClick ="[Event Procedure]"
                    OnGotFocus ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =394
                    LayoutCachedTop =1753
                    LayoutCachedWidth =6177
                    LayoutCachedHeight =4645
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =394
                    Top =735
                    Width =5676
                    Height =315
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txtName"
                    ControlSource ="name"
                    GridlineColor =10921638

                    LayoutCachedLeft =394
                    LayoutCachedTop =735
                    LayoutCachedWidth =6070
                    LayoutCachedHeight =1050
                End
                Begin Label
                    OverlapFlags =85
                    Left =394
                    Top =390
                    Width =1380
                    Height =285
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="Bijschrift15"
                    Caption ="Hoofdrubriek:"
                    GridlineColor =10921638
                    LayoutCachedLeft =394
                    LayoutCachedTop =390
                    LayoutCachedWidth =1774
                    LayoutCachedHeight =675
                End
                Begin Label
                    OverlapFlags =85
                    Left =390
                    Top =1365
                    Width =1395
                    Height =285
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="Bijschrift16"
                    Caption ="Subrubrieken:"
                    GridlineColor =10921638
                    LayoutCachedLeft =390
                    LayoutCachedTop =1365
                    LayoutCachedWidth =1785
                    LayoutCachedHeight =1650
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =6286
                    Top =2604
                    Width =291
                    TabIndex =2
                    ForeColor =4210752
                    Name ="btnUp"
                    Caption ="▲"
                    OnClick ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =6286
                    LayoutCachedTop =2604
                    LayoutCachedWidth =6577
                    LayoutCachedHeight =2887
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
                    Left =6286
                    Top =3459
                    Width =291
                    TabIndex =3
                    ForeColor =4210752
                    Name ="btnDown"
                    Caption ="▼"
                    OnClick ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =6286
                    LayoutCachedTop =3459
                    LayoutCachedWidth =6577
                    LayoutCachedHeight =3742
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
                    Left =2434
                    Top =4814
                    TabIndex =5
                    ForeColor =4210752
                    Name ="btnEdit"
                    Caption ="Edit"
                    GridlineColor =10921638

                    LayoutCachedLeft =2434
                    LayoutCachedTop =4814
                    LayoutCachedWidth =4135
                    LayoutCachedHeight =5097
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
                    Left =394
                    Top =4813
                    TabIndex =6
                    ForeColor =4210752
                    Name ="btnBack"
                    Caption ="Terug"
                    OnClick ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =394
                    LayoutCachedTop =4813
                    LayoutCachedWidth =2095
                    LayoutCachedHeight =5096
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
                    Left =4419
                    Top =4813
                    TabIndex =7
                    ForeColor =4210752
                    Name ="btnSave"
                    Caption ="Opslaan"
                    OnClick ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =4419
                    LayoutCachedTop =4813
                    LayoutCachedWidth =6120
                    LayoutCachedHeight =5096
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

Private Sub btnNew_Click()
    Dim priority As Integer
    
    priority = Me.lstCategory.ListCount

    DoCmd.OpenForm "frmNieuweRubriek", , , , , acDialog, Me.id & "|" & priority
    
End Sub

Private Sub btnNew_Exit(Cancel As Integer)
    Me.lstCategory.Requery
End Sub

Private Sub btnSave_Click()
    DoCmd.Close , , acSavePrompt
End Sub

Private Sub btnBack_Click()
    Dim rs As Recordset

    If Me.lstCategory.OldValue <> Me.lstCategory.Value Then
        If MsgBox("Weet u zeker dat u deze pagina wilt verlaten? De veranderingen worden NIET opgeslagen?", vbQuestion + vbYesNo + vbDefaultButton2, "Afsluiten?") = vbYes Then
            DoCmd.RunCommand acCmdUndo
        End If
    End If
        
    Set rs = CurrentDb.OpenRecordset("SELECT parent FROM categories WHERE id = " & Me.id)
    
    If IsNull(rs!parent) Then
        DoCmd.Close
    Else
        DoCmd.OpenForm "frmRubriekStructuur", , , "[id] = " & rs!parent, , acDialog
    End If

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

Private Sub Form_Current()
    Dim rs As Recordset
    Dim queryString As String
    
    Dim id_selected As String
     
    queryString = "SELECT id, name AS Rubrieknaam, priority AS Volgnummer FROM categories WHERE Parent = " & Me.id & " ORDER BY priority"
   
    Me.lstCategory.RowSource = queryString
    Me.lstCategory.Requery
    
    Me.btnDown.Enabled = False
    Me.btnUp.Enabled = False
End Sub
 
Private Sub lstCategory_DblClick(Cancel As Integer)
    Dim id_selected As Integer
    Dim rs As Recordset
    
    For Each varItem In Me.lstCategory.ItemsSelected
        id_selected = Me.lstCategory.Column(0, varItem) 'Change index for different locations e.g. the end of the line.
    Next varItem
    
    MsgBox id_selected

    DoCmd.OpenForm "frmRubriekStructuur", , , "[id] = " & id_selected, , acDialog
        
    Me.lstCategory.Requery
End Sub

Private Sub lstCategory_GotFocus()
    Me.btnDown.Enabled = True
    Me.btnUp.Enabled = True
End Sub
