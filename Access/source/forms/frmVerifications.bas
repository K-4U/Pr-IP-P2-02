Version =20
VersionRequired =20
Begin Form
    RecordSelectors = NotDefault
    NavigationButtons = NotDefault
    AllowDesignChanges = NotDefault
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =8388
    DatasheetFontHeight =11
    ItemSuffix =17
    Right =19800
    Bottom =12120
    DatasheetGridlinesColor =15132391
    RecSrcDt = Begin
        0x506517df50aee440
    End
    RecordSource ="SELECT [US].[firstname]+' '+[US].[lastname] AS Naam, VF.date_requested AS Aangev"
        "raagd, VF.date_sent AS Verstuurd, US.username FROM users AS US, verifications AS"
        " VF WHERE (((VF.date_sent) Is Null) And ((US.username)=VF.username)); "
    DatasheetFontName ="Calibri"
    PrtMip = Begin
        0x6801000068010000680100006801000000000000201c0000e010000001000000 ,
        0x010000006801000000000000a10700000100000001000000
    End
    OnLoad ="[Event Procedure]"
    AllowDatasheetView =0
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
        Begin FormHeader
            Height =945
            BackColor =15064278
            Name ="FormHeader"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =2
            BackTint =20.0
            Begin
                Begin Label
                    OverlapFlags =85
                    Left =1920
                    Top =630
                    Width =1935
                    Height =315
                    BorderColor =8355711
                    Name ="Label5"
                    Caption ="Datum aangevraagd"
                    GridlineColor =10921638
                    LayoutCachedLeft =1920
                    LayoutCachedTop =630
                    LayoutCachedWidth =3855
                    LayoutCachedHeight =945
                    ForeTint =100.0
                End
                Begin Label
                    OverlapFlags =85
                    Left =4035
                    Top =630
                    Width =1935
                    Height =315
                    BorderColor =8355711
                    Name ="Label8"
                    Caption ="Datum verstuurd"
                    GridlineColor =10921638
                    LayoutCachedLeft =4035
                    LayoutCachedTop =630
                    LayoutCachedWidth =5970
                    LayoutCachedHeight =945
                    ForeTint =100.0
                End
                Begin Label
                    OverlapFlags =85
                    Left =285
                    Top =630
                    Width =615
                    Height =315
                    BorderColor =8355711
                    Name ="Label0"
                    Caption ="Naam"
                    GridlineColor =10921638
                    LayoutCachedLeft =285
                    LayoutCachedTop =630
                    LayoutCachedWidth =900
                    LayoutCachedHeight =945
                    ForeTint =100.0
                End
                Begin CheckBox
                    OverlapFlags =85
                    Left =285
                    Top =196
                    Width =237
                    Height =222
                    ColumnOrder =0
                    BorderColor =10921638
                    Name ="chkGetAll"
                    OnClick ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =285
                    LayoutCachedTop =196
                    LayoutCachedWidth =522
                    LayoutCachedHeight =418
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =622
                            Top =165
                            Width =3075
                            Height =315
                            BorderColor =8355711
                            Name ="Label16"
                            Caption ="Laat ook verstuurde records zien"
                            GridlineColor =10921638
                            LayoutCachedLeft =622
                            LayoutCachedTop =165
                            LayoutCachedWidth =3697
                            LayoutCachedHeight =480
                            ForeTint =100.0
                        End
                    End
                End
            End
        End
        Begin Section
            Height =737
            Name ="Detail"
            AlternateBackColor =15921906
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =93
                    IMESentenceMode =3
                    Left =1920
                    Top =120
                    Width =1941
                    Height =315
                    TabIndex =1
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="Text6"
                    ControlSource ="Aangevraagd"
                    GridlineColor =10921638

                    LayoutCachedLeft =1920
                    LayoutCachedTop =120
                    LayoutCachedWidth =3861
                    LayoutCachedHeight =435
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =3915
                    Top =120
                    Width =1776
                    Height =315
                    TabIndex =2
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txtDateSent"
                    ControlSource ="Verstuurd"
                    GridlineColor =10921638

                    LayoutCachedLeft =3915
                    LayoutCachedTop =120
                    LayoutCachedWidth =5691
                    LayoutCachedHeight =435
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =87
                    IMESentenceMode =3
                    Left =225
                    Top =120
                    Height =315
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="txtName"
                    ControlSource ="Naam"
                    GridlineColor =10921638

                    LayoutCachedLeft =225
                    LayoutCachedTop =120
                    LayoutCachedWidth =1926
                    LayoutCachedHeight =435
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =5835
                    Width =576
                    Height =576
                    TabIndex =3
                    ForeColor =4210752
                    Name ="cmdOpenReport"
                    Caption ="Command10"
                    OnClick ="[Event Procedure]"
                    ControlTipText ="Preview Report"
                    GridlineColor =10921638
                    ImageData = Begin
                        0x2800000010000000100000000100200000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000000000000000000000000000727272ff727272ff727272ff727272ff ,
                        0x727272ff727272ff727272ff727272ff727272ff727272ff727272ff727272b7 ,
                        0x00000000000000000000000000000000727272ffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffd7d7d7ff727272ff ,
                        0x000000000000000000000000b3b3b3ff00000000b3b3b3ffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff727272ff ,
                        0x00000000000000000000000000000000727272ffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff727272ff ,
                        0x00000000000000000000000000000000727272ffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff727272ff ,
                        0x000000000000000000000000b3b3b3ff00000000b3b3b3ffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff727272ff ,
                        0x00000000000000000000000000000000727272ffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff727272ff ,
                        0x00000000000000000000000000000000727272ffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff727272ff ,
                        0x000000000000000000000000b3b3b3ff00000000b3b3b3ffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff727272ff ,
                        0x00000000000000000000000000000000727272ffffffffffffffffff90a468ff ,
                        0x90a468ff90a468ff90a468ff90a468ff90a468ff90a468ffffffffff727272ff ,
                        0x00000000000000000000000000000000727272ffffffffffffffffff90a468ff ,
                        0x90a468ff90a468ff90a468ff90a468ff90a468ff90a468ffffffffff727272ff ,
                        0x000000000000000000000000b3b3b3ff00000000b3b3b3ffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff727272ff ,
                        0x00000000000000000000000000000000727272ffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffdbdbdbff727272ff ,
                        0x00000000000000000000000000000000727272ff727272ff727272ff727272ff ,
                        0x727272ff727272ff727272ff727272ff727272ff727272ff727272ff727272bd ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000
                    End

                    LayoutCachedLeft =5835
                    LayoutCachedWidth =6411
                    LayoutCachedHeight =576
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
                    Left =6462
                    Width =1926
                    Height =577
                    TabIndex =4
                    ForeColor =4210752
                    Name ="cmdMarkAsSent"
                    Caption ="Markeer als verstuurd"
                    OnClick ="[Event Procedure]"
                    GridlineColor =10921638

                    LayoutCachedLeft =6462
                    LayoutCachedWidth =8388
                    LayoutCachedHeight =577
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
            End
        End
        Begin FormFooter
            Height =0
            Name ="FormFooter"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
        End
    End
End
CodeBehindForm
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit



Private Sub chkGetAll_Click()
If Not IsNull(chkGetAll.Value) Then

    If chkGetAll.Value = True Then
        Me.RecordSource = "SELECT [US].[firstname]+' '+[US].[lastname] AS Naam, VF.date_requested AS Aangevraagd, VF.date_sent AS Verstuurd, US.username" & vbCrLf & _
                          "FROM users AS US, verifications AS VF" & vbCrLf & _
                          "WHERE US.username=[VF].[username];"
    Else
        Me.RecordSource = "SELECT [US].[firstname]+' '+[US].[lastname] AS Naam, VF.date_requested AS Aangevraagd, VF.date_sent AS Verstuurd, US.username" & vbCrLf & _
                          "FROM users AS US, verifications AS VF" & vbCrLf & _
                          "WHERE (((VF.date_sent) Is Null) AND ((US.username)=[VF].[username]));"
    End If
    Me.Requery
    
End If
End Sub

Private Sub cmdMarkAsSent_Click()
Dim MYDATE As String
MYDATE = Format(Now, "mm-dd-yyyy")

DoCmd.RunSQL "UPDATE verifications SET date_sent='" & MYDATE & "' WHERE username='" & Me.username & "'"
Me.Requery

End Sub

Private Sub cmdOpenReport_Click()

DoCmd.OpenReport "rptVerificationLetter", acViewPreview, , "[username] = '" & Me.username & "'", acDialog
End Sub

Private Sub Form_Load()
chkGetAll.Value = False
End Sub
