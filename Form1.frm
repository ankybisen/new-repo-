VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3930
   ClientLeft      =   225
   ClientTop       =   870
   ClientWidth     =   8820
   Enabled         =   0   'False
   LinkTopic       =   "Form1"
   ScaleHeight     =   3930
   ScaleWidth      =   8820
   StartUpPosition =   3  'Windows Default
   Begin VB.Data Data1 
      Caption         =   "Data1"
      Connect         =   "Access"
      DatabaseName    =   "C:\Users\Student\Documents\XYZ.mdb"
      DefaultCursorType=   0  'DefaultCursor
      DefaultType     =   2  'UseODBC
      Enabled         =   0   'False
      Exclusive       =   0   'False
      Height          =   300
      Left            =   3360
      Options         =   0
      ReadOnly        =   0   'False
      RecordsetType   =   1  'Dynaset
      RecordSource    =   "Table1"
      Top             =   3240
      Width           =   3135
   End
   Begin MSFlexGridLib.MSFlexGrid MSFlexGrid1 
      Bindings        =   "Form1.frx":0000
      Height          =   2175
      Left            =   1920
      TabIndex        =   0
      Top             =   360
      Width           =   5295
      _ExtentX        =   9340
      _ExtentY        =   3836
      _Version        =   393216
   End
   Begin VB.Menu mnudb 
      Caption         =   "Database"
      Begin VB.Menu mnuopen 
         Caption         =   "Open"
      End
      Begin VB.Menu mnuexit 
         Caption         =   "Exit"
      End
   End
   Begin VB.Menu mnurecord 
      Caption         =   "Record"
      Begin VB.Menu mnucompute 
         Caption         =   "Compute Total fees"
      End
      Begin VB.Menu mnudisplay 
         Caption         =   "Display"
      End
      Begin VB.Menu mnusearch 
         Caption         =   "Search"
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub mnucompute_Click()
Dim bsc1 As Integer, bsc2 As Integer, bsc3 As Integer
While Not Data1.Recordset.EOF
If Data1.Recordset(1) = "bsc1" Then
bsc1 = bsc1 + Data1.Recordset(2)
ElseIf Data1.Recordset(1) = "bsc2" Then
bsc2 = bsc2 + Data1.Recordset(2)
Else
bsc3 = bsc3 + Data1.Recordset(2)
End If
Data1.Recordset.MoveNext
Wend
MsgBox "Bsc1= " & bsc1 & vbNewLine & "Bsc2= " & bsc2 & vbNewLine & "Bsc 3= " & bsc3, vbInformation, "Total"
Data1.Recordset.MoveFirst

End Sub

Private Sub mnudisplay_Click()
Cls
If mnudisplay.Checked = False Then
mnudisplay.Checked = True
MSFlexGrid1.Visible = True
Else
mnudisplay.Checked = False
MSFlexGrid1.Visible = False
End If

End Sub

Private Sub mnuexit_Click()
Unload Me
End Sub

Private Sub mnuopen_Click()
MSFlexGrid1.Visible = True
mnudisplay.Checked = True
End Sub

Private Sub mnusearch_Click()
Dim srch As String
srch = InputBox("Enter class for searching:", "search")
mnudisplay.Checked = False
MSFlexGrid1.Visible = False
Cls
While Not Dta1.Recordset.EOF
If Data1.Recordset(1) = srch Then
Print Data1.Recordset(0)
Print Data1.Recordset(1)
Print Data1.Recordset(2)
Print
End If
Data1.Recordset.MoveNext
Wend
Data1.Recordset.MoveFirst


End Sub
