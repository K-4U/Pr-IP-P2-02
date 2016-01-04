Version =20
VersionRequired =20
Begin Report
    LayoutForPrint = NotDefault
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    DateGrouping =1
    GrpKeepTogether =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =16110
    DatasheetFontHeight =11
    ItemSuffix =22
    DatasheetGridlinesColor =15132391
    RecSrcDt = Begin
        0xd023bc8192aee440
    End
    RecordSource ="SELECT objects.title, Switch(Len(objects.description)>100,Left(objects.descripti"
        "on,100)+'...',Not Len(objects.description)>100,objects.description) AS Beschrijv"
        "ing, objects.end_moment, objects.seller, IIf(objects.buyer Is Null,'Geen',object"
        "s.buyer) AS buyer, objects.auction_closed, objects.price FROM objects; "
    DatasheetFontName ="Calibri"
    PrtMip = Begin
        0x6801000068010000680100006801000000000000ee3e00006f01000001000000 ,
        0x010000006801000000000000a10700000100000001000000
    End
    FilterOnLoad =0
    FitToPage =1
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
        Begin Line
            BorderLineStyle =0
            Width =1701
            BorderThemeColorIndex =0
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
            ShowDatePicker =0
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
            ThemeFontIndex =1
            ForeThemeColorIndex =0
            ForeTint =75.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin EmptyCell
            Height =240
            GridlineColor =12632256
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin PageHeader
            Height =2097
            Name ="Paginakoptekstsectie"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin Label
                    Left =390
                    Top =1755
                    Width =1695
                    Height =315
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="Bijschrift0"
                    Caption ="title"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =390
                    LayoutCachedTop =1755
                    LayoutCachedWidth =2085
                    LayoutCachedHeight =2070
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin Label
                    Left =2145
                    Top =1755
                    Width =4770
                    Height =315
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="Bijschrift1"
                    Caption ="description"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =2145
                    LayoutCachedTop =1755
                    LayoutCachedWidth =6915
                    LayoutCachedHeight =2070
                    ColumnStart =1
                    ColumnEnd =1
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin Label
                    Left =6975
                    Top =1755
                    Width =1575
                    Height =315
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="Bijschrift2"
                    Caption ="seller"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =6975
                    LayoutCachedTop =1755
                    LayoutCachedWidth =8550
                    LayoutCachedHeight =2070
                    ColumnStart =2
                    ColumnEnd =2
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin Label
                    Left =8610
                    Top =1755
                    Width =1245
                    Height =315
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="Bijschrift3"
                    Caption ="buyer"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =8610
                    LayoutCachedTop =1755
                    LayoutCachedWidth =9855
                    LayoutCachedHeight =2070
                    ColumnStart =3
                    ColumnEnd =3
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin Label
                    Left =9915
                    Top =1755
                    Width =2145
                    Height =315
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="Bijschrift4"
                    Caption ="end_moment"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =9915
                    LayoutCachedTop =1755
                    LayoutCachedWidth =12060
                    LayoutCachedHeight =2070
                    ColumnStart =4
                    ColumnEnd =4
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin Label
                    Left =12120
                    Top =1755
                    Width =1305
                    Height =315
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="Bijschrift5"
                    Caption ="auction_closed"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =12120
                    LayoutCachedTop =1755
                    LayoutCachedWidth =13425
                    LayoutCachedHeight =2070
                    ColumnStart =5
                    ColumnEnd =5
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin Label
                    Left =13485
                    Top =1755
                    Width =1245
                    Height =315
                    BorderColor =8355711
                    ForeColor =8355711
                    Name ="Bijschrift6"
                    Caption ="price"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =13485
                    LayoutCachedTop =1755
                    LayoutCachedWidth =14730
                    LayoutCachedHeight =2070
                    ColumnStart =6
                    ColumnEnd =6
                    LayoutGroup =1
                    GroupTable =1
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =367
            Name ="Details"
            AlternateBackColor =15921906
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    OldBorderStyle =0
                    IMESentenceMode =3
                    Left =390
                    Top =30
                    Width =1695
                    Height =315
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="title"
                    ControlSource ="title"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =390
                    LayoutCachedTop =30
                    LayoutCachedWidth =2085
                    LayoutCachedHeight =345
                    RowStart =1
                    RowEnd =1
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin TextBox
                    CanGrow = NotDefault
                    CanShrink = NotDefault
                    OldBorderStyle =0
                    IMESentenceMode =3
                    Left =2145
                    Top =30
                    Width =4770
                    Height =315
                    TabIndex =1
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="description"
                    ControlSource ="Beschrijving"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =2145
                    LayoutCachedTop =30
                    LayoutCachedWidth =6915
                    LayoutCachedHeight =345
                    RowStart =1
                    RowEnd =1
                    ColumnStart =1
                    ColumnEnd =1
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin TextBox
                    OldBorderStyle =0
                    IMESentenceMode =3
                    Left =6975
                    Top =30
                    Width =1575
                    Height =315
                    TabIndex =2
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="seller"
                    ControlSource ="seller"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =6975
                    LayoutCachedTop =30
                    LayoutCachedWidth =8550
                    LayoutCachedHeight =345
                    RowStart =1
                    RowEnd =1
                    ColumnStart =2
                    ColumnEnd =2
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin TextBox
                    OldBorderStyle =0
                    IMESentenceMode =3
                    Left =8610
                    Top =30
                    Width =1245
                    Height =315
                    TabIndex =3
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="buyer"
                    ControlSource ="buyer"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =8610
                    LayoutCachedTop =30
                    LayoutCachedWidth =9855
                    LayoutCachedHeight =345
                    RowStart =1
                    RowEnd =1
                    ColumnStart =3
                    ColumnEnd =3
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin TextBox
                    OldBorderStyle =0
                    IMESentenceMode =3
                    Left =9915
                    Top =30
                    Width =2145
                    Height =315
                    TabIndex =4
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="end_moment"
                    ControlSource ="end_moment"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =9915
                    LayoutCachedTop =30
                    LayoutCachedWidth =12060
                    LayoutCachedHeight =345
                    RowStart =1
                    RowEnd =1
                    ColumnStart =4
                    ColumnEnd =4
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin TextBox
                    OldBorderStyle =0
                    IMESentenceMode =3
                    Left =12120
                    Top =30
                    Width =1305
                    Height =315
                    TabIndex =5
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="auction_closed"
                    ControlSource ="auction_closed"
                    Format ="True/False"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =12120
                    LayoutCachedTop =30
                    LayoutCachedWidth =13425
                    LayoutCachedHeight =345
                    RowStart =1
                    RowEnd =1
                    ColumnStart =5
                    ColumnEnd =5
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin TextBox
                    OldBorderStyle =0
                    IMESentenceMode =3
                    Left =13485
                    Top =30
                    Width =1245
                    Height =315
                    TabIndex =6
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="price"
                    ControlSource ="price"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =13485
                    LayoutCachedTop =30
                    LayoutCachedWidth =14730
                    LayoutCachedHeight =345
                    RowStart =1
                    RowEnd =1
                    ColumnStart =6
                    ColumnEnd =6
                    LayoutGroup =1
                    GroupTable =1
                End
            End
        End
        Begin PageFooter
            Height =850
            Name ="Paginavoettekstsectie"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    OldBorderStyle =0
                    TextAlign =3
                    BackStyle =0
                    IMESentenceMode =3
                    Left =6066
                    Top =283
                    Width =3600
                    Height =315
                    BorderColor =13553360
                    ForeColor =3484194
                    Name ="Tekst102"
                    ControlSource ="=\"Page \" & [Page] & \" of \" & [Pages]"
                    GridlineColor =10921638

                    LayoutCachedLeft =6066
                    LayoutCachedTop =283
                    LayoutCachedWidth =9666
                    LayoutCachedHeight =598
                    BorderThemeColorIndex =3
                    BorderShade =90.0
                    ForeThemeColorIndex =2
                    ForeTint =100.0
                    ForeShade =50.0
                End
                Begin TextBox
                    OldBorderStyle =0
                    TextAlign =1
                    BackStyle =0
                    IMESentenceMode =3
                    Left =4138
                    Top =283
                    Width =3600
                    Height =315
                    TabIndex =1
                    BorderColor =13553360
                    ForeColor =3484194
                    Name ="Tekst158"
                    ControlSource ="=Date()"
                    Format ="Long Date"
                    GridlineColor =10921638

                    LayoutCachedLeft =4138
                    LayoutCachedTop =283
                    LayoutCachedWidth =7738
                    LayoutCachedHeight =598
                    BorderThemeColorIndex =3
                    BorderShade =90.0
                    ForeThemeColorIndex =2
                    ForeTint =100.0
                    ForeShade =50.0
                End
            End
        End
    End
End
