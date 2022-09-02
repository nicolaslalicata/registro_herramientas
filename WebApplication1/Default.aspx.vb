Imports System.Data.SqlClient

Public Class _Default
    Inherits Page

    Protected Sub btnInsert_Click1(sender As Object, e As EventArgs) Handles btnInsert.Click

        Dim ProductId As Integer = txtProductId.Text
        Dim ItemName As String = txtItemName.Text
        Dim Specification As String = txtDescription.Text
        Dim Unit As String = DropDownUnit.SelectedValue
        Dim Color As String = radioColor.SelectedValue
        Dim StartDate As DateTime = txtDate.Text
        Dim Opening As Double = txtOpening.Text
        Dim Status As String = ""
        If CheckRegular.Checked = True Then
            status = "Existent"
        Else
            status = "Inexsistent"
        End If
        connect.Open()
        Dim command As New SqlCommand("Insert into ProductInfo_Tab values ('" & ProductId & "','" & ItemName & "','" & Specification & "','" & Unit & "','" & Color & "','" & StartDate & "','" & Opening & "','" & Status & "' )", connect)
        command.ExecuteNonQuery()
        MsgBox("Succesfully Inserted", MsgBoxStyle.Information, "Message")
        connect.Close()
        ListProduc()
    End Sub


    Private Sub ListProduc()
        Dim command As New SqlCommand("select * from ProductInfo_Tab", connect)
        Dim sd As New SqlDataAdapter(command)
        Dim dt As New DataTable
        sd.Fill(dt)
        GridView1.DataSource = dt
        GridView1.DataBind()
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged

    End Sub

    Protected Sub btnUpdate_Click()

    End Sub

    Protected Sub btnUpdate_Click1()

    End Sub

    Protected Sub btnUpdate_Click2(sender As Object, e As EventArgs) Handles btnUpdate.Click

        Dim ProductId As Integer = txtProductId.Text
        Dim ItemName As String = txtItemName.Text
        Dim Specification As String = txtDescription.Text
        Dim Unit As String = DropDownUnit.SelectedValue
        Dim Color As String = radioColor.SelectedValue
        Dim StartDate As DateTime = txtDate.Text
        Dim Opening As Double = txtOpening.Text
        Dim Status As String = ""
        If CheckRegular.Checked = True Then
            Status = "Existent"
        Else
            Status = "Inexsistent"
        End If
        connect.Open()
        Dim command As New SqlCommand("Update ProductInfo_Tab set ItemName = '" & ItemName & "', Specification = '" & Specification & "', Unit = '" & Unit & "', Color = '" & Color & "', InsertDate = '" & StartDate & "', Opening = '" & Opening & "', Status = '" & Status & "' where ProductID = '" & ProductId & "' ", connect)
        command.ExecuteNonQuery()
        connect.Close()
        MsgBox("Succesfully Updated", MsgBoxStyle.Information, "Message")
        ListProduc()
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        ListProduc()
    End Sub
    Private Sub Limpiar()
        txtProductId.Text = ""
        txtItemName.Text = ""
        txtDescription.Text = ""
        txtDate.Text = ""
        txtOpening.Text = ""
        txtProductId.Focus()
    End Sub

    Protected Sub btnInsert0_Click(sender As Object, e As EventArgs) Handles btnInsert0.Click
        Limpiar()
    End Sub
    Protected Sub btnUpdate0_Click(sender As Object, e As EventArgs) Handles btnUpdate0.Click
        Dim ProductId As Integer = txtProductId.Text
        connect.Open()
        Dim command As New SqlCommand("Delete ProductInfo_Tab where ProductID= '" & ProductId & "' ", connect)
        command.ExecuteNonQuery()
        connect.Close()
        MsgBox("Succesfully Deleted", MsgBoxStyle.Information, "Message")
        ListProduc()
    End Sub

    Protected Sub btnInsert1_Click(sender As Object, e As EventArgs) Handles btnInsert1.Click
        Dim ProductId As Integer = txtProductId.Text
        Dim command As New SqlCommand("select * from ProductInfo_Tab where ProductID = '" & ProductId & "'", connect)
        Dim sd As New SqlDataAdapter(command)
        Dim dt As New DataTable
        sd.Fill(dt)
        GridView1.DataSource = dt
        GridView1.DataBind()
    End Sub

    Protected Sub btnInsert2_Click(sender As Object, e As EventArgs) Handles btnInsert2.Click
        Limpiar()
        ListProduc()
    End Sub
End Class