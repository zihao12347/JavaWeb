<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
  #tabl{
    background: url("/bg.jpg");
  }
</style>
<%request.setCharacterEncoding("UTF-8"); %>
<table id="tabl" width="901" height="128" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="16" height="91">&nbsp;</td>
    <td width="885">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td style=" font-size:11pt; color:#FFFFFF"><b>${param.typeList}</b></td>
  </tr>
</table>