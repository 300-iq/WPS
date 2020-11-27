<%@ page language="java" import="java.sql.*, java.util.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Internal Marks</title>
<style>
body
{
    text-align: center;
}
tr.co td, tr.marks td, tr.marks2 td
{
    border:0;
}
#mytable
{
    margin-left: auto;
    margin-right: auto;
}
input[type="button"]
{
   text-transform: uppercase;
   height: 25px;
   font-weight: bolder;
   background-color: lightblue;
}
</style>
</head>
<body>
    <h3> 1 INTERNAL EXAM CO ATTAINMENT</h3>
    <input type="button" id="clickme" value="Validate" onclick="validate_table();"/>
    <table id="mytable" cellspacing=0 cellpadding=5 border="solid 1px black">
        <tr class="co">
            <td bgcolor="#ded9c5">Course Outcome</td>
            <td bgcolor="yellow">C01</td>
            <td bgcolor="yellow">C01</td>
            <td bgcolor="yellow">C01</td>
            <td bgcolor="yellow">C02</td>
            <td bgcolor="yellow">C02</td>
            <td bgcolor="yellow">C02</td>
            <td bgcolor="yellow">C01</td>
            <td bgcolor="yellow">C01</td>
            <td bgcolor="yellow">C02</td>
            <td bgcolor="yellow">C02</td>
            <td bgcolor="yellow">C01</td>
            <td bgcolor="yellow">C01</td>
            <td bgcolor="yellow">C02</td>
            <td bgcolor="yellow">C02</td>
        </tr>
        <tr class="marks">
            <td>Marks</td>
            <td bgcolor="pink">1</td>
            <td bgcolor="pink">1</td>
            <td bgcolor="pink">1</td>
            <td bgcolor="pink">1</td>
            <td bgcolor="pink">1</td>
            <td bgcolor="pink">1</td>
            <td bgcolor="pink">3</td>
            <td bgcolor="pink">3</td>
            <td bgcolor="pink">3</td>
            <td bgcolor="pink">3</td>
            <td bgcolor="pink">3</td>
            <td bgcolor="pink">3</td>
            <td bgcolor="pink">3</td>
            <td bgcolor="pink">3</td>
            <td bgcolor="pink">30</td>
        </tr>
        <tr class="marks2">
            <td bgcolor="lightblue">50% Marks</td>
            <td bgcolor="pink">0.5</td>
            <td bgcolor="pink">0.5</td>
            <td bgcolor="pink">0.5</td>
            <td bgcolor="pink">0.5</td>
            <td bgcolor="pink">0.5</td>
            <td bgcolor="pink">0.5</td>
            <td bgcolor="pink">1.5</td>
            <td bgcolor="pink">1.5</td>
            <td bgcolor="pink">1.5</td>
            <td bgcolor="pink">1.5</td>
            <td bgcolor="pink">1.5</td>
            <td bgcolor="pink">1.5</td>
            <td bgcolor="pink">1.5</td>
            <td bgcolor="pink">1.5</td>
            <td bgcolor="pink">15</td>
        </tr>
        <tr class="qno">
            <td style="color: red; font-weight: bold;">H.No.</td>
            <td style="color: red; font-weight: bold;">1</td>
            <td style="color: red; font-weight: bold;">2</td>
            <td style="color: red; font-weight: bold;">3</td>
            <td style="color: red; font-weight: bold;">4</td>
            <td style="color: red; font-weight: bold;">5</td>
            <td style="color: red; font-weight: bold;">6</td>
            <td style="color: red; font-weight: bold;">7</td>
            <td style="color: red; font-weight: bold;">8</td>
            <td style="color: red; font-weight: bold;">9</td>
            <td style="color: red; font-weight: bold;">10</td>
            <td style="color: red; font-weight: bold;">11a</td>
            <td style="color: red; font-weight: bold;">11b</td>
            <td style="color: red; font-weight: bold;">12a</td>
            <td style="color: red; font-weight: bold;">12b</td>
            <td style="color: red; font-weight: bold;">Total</td>
        </tr>
    </table>
    <%
try{
String url="jdbc:mysql://localhost:3306/stud_db";
String user="root";
String pass="Pass";
String Query="select * from student_marks";
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection(url,user,pass);
Statement st=con.createStatement();
ResultSet rs = st.executeQuery(Query);
while(rs.next()) {
	 int one = rs.getInt(1);
	 int two = rs.getInt(2);
	 int three = rs.getInt(3);
	 int four = rs.getInt(4);
	 int five = rs.getInt(5);
	 int six = rs.getInt(6);
	 int seven = rs.getInt(7);
	 int eight = rs.getInt(8);
	 int nine = rs.getInt(9);
	 int ten = rs.getInt(10);
	 int elevenA = rs.getInt(11);
	 int elevenB = rs.getInt(12);
	 int twelveA = rs.getInt(13);
	 int twelveB = rs.getInt(14);
	 
%>
<tr>
<td><%=one %></td>
<td><%=two %></td>
<td><%=three %></td>
<td><%=four %></td>
<td><%=five %></td>
<td><%=six %></td>
<td><%=seven %></td>
<td><%=eight %></td>
<td><%=nine %></td>
<td><%=ten %></td>
<td><%=elevenA %></td>
<td><%=elevenB %></td>
<td><%=twelveA %></td>
<td><%=twelveB %></td>
</tr>
<%
}
}
catch(Exception e){
	System.out.println(e);
}
%>
    <script>
        var i,j;
        var t=document.getElementById("mytable");
        for(i=1;i<61;i++)
            {
            var r = t.insertRow(mytable.rows.length);
            var c= r.insertCell(0);
            for(j=1;j<=15;j++)
            {
                var u=r.insertCell(j);
                u.contentEditable="true";
                u.style.backgroundColor="red";
            }
            if(i<10){
            c.innerHTML="1602-18-733-"+ "00" + String(i);}
            else{
                c.innerHTML="1602-18-733-" + "0" + String(i);}
            }
        function validate_table()
        {
            var w=document.getElementById("mytable");
            var r=4;
            var z=w.rows[1];
            while(row=w.rows[r++])
            {
                var c=1;
                var flag=1;
                while(cell=row.cells[c++])
                {    var d=c-1;
                    if(cell.innerHTML > z.cells[d].innerHTML || cell.innerHTML<0)
                    {
                        cell.innerHTML="Invalid";
                        flag=0;
                    }
                }
            }

        }
        
    </script>
</body>
</html>