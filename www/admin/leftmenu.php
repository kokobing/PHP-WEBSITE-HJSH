<script src="/admin/inc/js/setpointer.js" type="text/javascript" ></script>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="28" align="left" valign="bottom"><img src="/admin/inc/pics/navi.gif" width="210" height="24"></td>
      </tr>
</table>
 <?php 
 				//获取当前文件名函数
function getcurrentfilename(){
return end(explode('/',$_SERVER["PHP_SELF"]));	
}
 
  for($i=0;$i<sizeof($arrMenu1);$i++){?>

<table width="98%" border="0" cellspacing="0" cellpadding="0">
<tr >
          <td width="10%" height="32" align="right" valign="middle"></td>
          <td width="15%" align="left" valign="bottom"><img src="/admin/inc/pics/icon_0<?php echo $i;?>.png" width="30"></td>
<td width="75%" valign="middle" class="txt_leftmenu" style="cursor:pointer;"  ><a href="#" class="link_leftmenu" style="font-size:14px; font-weight:bold"><?php  echo $arrMenu1[$i][name];?></a> </td>
        </tr>
<tr >
  <td colspan="3" style="padding:0; height:1px;">
               
			    <?php
				$strSQL="SELECT backmenu.name,backmenu.url,backmenu.id_backmenu FROM pavy2 left join backmenu on pavy2.id_backmenu=backmenu.id_backmenu
WHERE (browseprem!='0' or addprem!='0' or editprem!='0' or deleprem!='0') and backmenu.fatherid='".$arrMenu1[$i][id_backmenu]."' and id_hr='".$_SESSION[user_id]."' order by backmenu.id_backmenu asc";
                   $objDB->Execute($strSQL);
                   $arrMenu2=$objDB->GetRows();
				 for($j=0;$j<sizeof($arrMenu2);$j++){?>		  
            <table width="100%" border="0" cellspacing="0" cellpadding="2" class="txt">
               <tr> 
                <td width="29%" height="25" align="right"><img src="/admin/inc/pics/arrow-right.png" width="16"></td>
                <td width="71%"><a href="<?php echo $arrMenu2[$j][url]; ?>" 
                <? if(getcurrentfilename()=='siteset.php' && $arrMenu2[$j][id_backmenu]=='46'){echo 'class="link_leftmenu2"';}
				     elseif(getcurrentfilename()=='layout.php' && $arrMenu2[$j][id_backmenu]=='47'){echo 'class="link_leftmenu2"';}
					 elseif(getcurrentfilename()=='pageset.php' && $arrMenu2[$j][id_backmenu]=='48'){echo 'class="link_leftmenu2"';}
					 elseif(getcurrentfilename()=='product_dir.php' && $arrMenu2[$j][id_backmenu]=='8'){echo 'class="link_leftmenu2"';}
					 elseif(getcurrentfilename()=='product_manage.php' && $arrMenu2[$j][id_backmenu]=='9'){echo 'class="link_leftmenu2"';}
					 elseif(getcurrentfilename()=='productrecycle.php' && $arrMenu2[$j][id_backmenu]=='41'){echo 'class="link_leftmenu2"';}
					 elseif(getcurrentfilename()=='news_dir.php' && $arrMenu2[$j][id_backmenu]=='15'){echo 'class="link_leftmenu2"';}
					 elseif(getcurrentfilename()=='news_manage.php' && $arrMenu2[$j][id_backmenu]=='16'){echo 'class="link_leftmenu2"';}
					 elseif(getcurrentfilename()=='newsrecycle.php' && $arrMenu2[$j][id_backmenu]=='39'){echo 'class="link_leftmenu2"';}
					 elseif(getcurrentfilename()=='hr_staff.php' && $arrMenu2[$j][id_backmenu]=='17'){echo 'class="link_leftmenu2"';}
					 elseif(getcurrentfilename()=='perm_manage.php' && $arrMenu2[$j][id_backmenu]=='21'){echo 'class="link_leftmenu2"';}
					 else{echo 'class="link_leftmenu"';}
					 ?>
                
                 >
				<?php echo $arrMenu2[$j][name];?>
				</a> </td>
               </tr>

            </table>
           <?php }?>	
		   		

  </td>
  </tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>

<?php }?>

