Version =20
VersionRequired =20
Begin Form
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =5272
    DatasheetFontHeight =11
    ItemSuffix =11
    Right =19800
    Bottom =12120
    DatasheetGridlinesColor =15132391
    Filter ="parentID = 1 AND priorityID = 1"
    RecSrcDt = Begin
        0xd4fc59c3efb0e440
    End
    RecordSource ="categories"
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
            Height =1700
            Name ="Detail"
            AlternateBackColor =15921906
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin CommandButton
                    OverlapFlags =85
                    Left =3120
                    Top =390
                    ForeColor =4210752
                    Name ="cmdAddCategory"
                    Caption ="Toevoegen"
                    OnClick ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =3120
                    LayoutCachedTop =390
                    LayoutCachedWidth =4821
                    LayoutCachedHeight =673
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
                    Left =345
                    Top =390
                    TabIndex =1
                    ForeColor =4210752
                    Name ="cmdBack"
                    Caption ="Annuleren"
                    OnClick ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =345
                    LayoutCachedTop =390
                    LayoutCachedWidth =2046
                    LayoutCachedHeight =673
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
                    Left =1929
                    Top =953
                    Width =2946
                    Height =315
                    TabIndex =2
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txtParentName"
                    GridlineColor =10921638

                    LayoutCachedLeft =1929
                    LayoutCachedTop =953
                    LayoutCachedWidth =4875
                    LayoutCachedHeight =1268
                End
                Begin Label
                    OverlapFlags =85
                    Left =345
                    Top =960
                    Width =1365
                    Height =285
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="Label8"
                    Caption ="Rubrieknaam:"
                    GridlineColor =10921638
                    LayoutCachedLeft =345
                    LayoutCachedTop =960
                    LayoutCachedWidth =1710
                    LayoutCachedHeight =1245
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

Private Sub cmdAddCategory_Click()
    Dim query As String
    Dim parentID As Integer
    Dim priorityID As Integer
    
    If Not IsNull(Me.OpenArgs) Then
        varSplitString = Split(Me.OpenArgs, "|")
        parentID = varSplitString(0)
        priorityID = varSplitString(1)
        
        If Nz(Me.txtParentName.Value, "") = "" Then
        MsgBox "U heeft geen naam ingegeven. Het scherm wordt weer afgesloten.", vbCritical, "Fout"
        DoCmd.Close
        Else
        query = "INSERT INTO categories (name,parent,priority) VALUES ('" & Me.txtParentName & "'," & parentID & " ," & priorityID & ")"
        
        DoCmd.SetWarnings False
        DoCmd.RunSQL query
        DoCmd.SetWarnings True
        
        DoCmd.Close
        End If
        
    Else
        MsgBox "Er is iets fout gegaan. Het scherm wordt weer afgesloten.", vbCritical, "Fout"
        DoCmd.Close
    
    End If
    
    
End Sub

Private Sub cmdBack_Click()

    DoCmd.Close

End Sub

Private Sub Form_Load()

End Sub
