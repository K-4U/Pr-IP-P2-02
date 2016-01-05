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
    Filter ="[id] = 17"
    RecSrcDt = Begin
        0x66f3ae1e0daee440
    End
    RecordSource ="SELECT id, name FROM categories; "
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
            Height =5626
            Name ="Detail"
            AlternateBackColor =15921906
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin CommandButton
                    OverlapFlags =85
                    Left =570
                    Top =285
                    ForeColor =4210752
                    Name ="Command8"
                    Caption ="Terug"
                    GridlineColor =10921638

                    LayoutCachedLeft =570
                    LayoutCachedTop =285
                    LayoutCachedWidth =2271
                    LayoutCachedHeight =568
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
                    Left =4539
                    Top =285
                    TabIndex =1
                    ForeColor =4210752
                    Name ="Knop8"
                    Caption ="Nieuw"
                    GridlineColor =10921638

                    LayoutCachedLeft =4539
                    LayoutCachedTop =285
                    LayoutCachedWidth =6240
                    LayoutCachedHeight =568
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
                    Left =4530
                    Top =5160
                    TabIndex =2
                    ForeColor =4210752
                    Name ="btnEdit"
                    Caption ="Edit"
                    OnClick ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =4530
                    LayoutCachedTop =5160
                    LayoutCachedWidth =6231
                    LayoutCachedHeight =5443
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
                    Left =570
                    Top =2040
                    Width =5783
                    Height =2892
                    TabIndex =3
                    ForeColor =4210752
                    BorderColor =10921638
                    Name ="lstCategory"
                    RowSourceType ="Table/Query"
                    ColumnWidths ="0;3969;567"
                    OnDblClick ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =570
                    LayoutCachedTop =2040
                    LayoutCachedWidth =6353
                    LayoutCachedHeight =4932
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =570
                    Top =1140
                    Width =5676
                    Height =315
                    TabIndex =4
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txtName"
                    ControlSource ="name"
                    GridlineColor =10921638

                    LayoutCachedLeft =570
                    LayoutCachedTop =1140
                    LayoutCachedWidth =6246
                    LayoutCachedHeight =1455
                End
                Begin Label
                    OverlapFlags =85
                    Left =570
                    Top =795
                    Width =1380
                    Height =285
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="Bijschrift15"
                    Caption ="Hoofdrubriek:"
                    GridlineColor =10921638
                    LayoutCachedLeft =570
                    LayoutCachedTop =795
                    LayoutCachedWidth =1950
                    LayoutCachedHeight =1080
                End
                Begin Label
                    OverlapFlags =85
                    Left =566
                    Top =1700
                    Width =1395
                    Height =285
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="Bijschrift16"
                    Caption ="Subrubrieken:"
                    GridlineColor =10921638
                    LayoutCachedLeft =566
                    LayoutCachedTop =1700
                    LayoutCachedWidth =1961
                    LayoutCachedHeight =1985
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =6462
                    Top =2891
                    Width =291
                    TabIndex =5
                    ForeColor =4210752
                    Name ="btnUp"
                    Caption ="▲"
                    OnClick ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =6462
                    LayoutCachedTop =2891
                    LayoutCachedWidth =6753
                    LayoutCachedHeight =3174
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
                    Left =6462
                    Top =3746
                    Width =291
                    TabIndex =6
                    ForeColor =4210752
                    Name ="btnDown"
                    Caption ="▼"
                    OnClick ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =6462
                    LayoutCachedTop =3746
                    LayoutCachedWidth =6753
                    LayoutCachedHeight =4029
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
