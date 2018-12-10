<style>
.warantryTrue {
  font-size: 20px;
  font-weight:bold;
  color: green;
}
.warantryFalse {
  font-size: 20px;
  font-weight:bold;
  color: red;
}
</style>
<div class="row">
     <div class="col-lg-12">
             <h1 class="page-header"><i class="fa fa-desktop fa-fw"></i> ตรวจการเคลม</h1>
     </div>
</div>
<ol class="breadcrumb">
<li><a href="index.php"><?php echo @LA_MN_HOME;?></a></li>
  <li class="active">ตรวจการเคลม</li>
</ol>

 <nav class="navbar navbar-default" role="navigation">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#"><i class="fa fa-search"></i></a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

      <form class="navbar-form navbar-left" role="search" method="get">
        <div class="form-group">
        <input type="hidden" name="p" id="p" value="claim_info" >
        <input type="text" class="form-control" name="q" placeholder="ระบุชื่อ/รหัสสินค้า/รายละเอียดชั้นวาง เพื่อค้นหา" value="<?php echo @htmlentities($_GET['q']);?>" size="100">
        </div>
        <button type="submit" class="btn btn-default"><i class="fa fa-search"></i> <?php echo @LA_BTN_SEARCH;?></button>
      </form>

    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

<?
 if(htmlentities($_GET['q']) != ""){
   ?>
<script>
console.log('<?= htmlentities($_GET['q'])?>');
</script>
   <?
  $getcard = $getdata->my_sql_selectJoin(" p.*, d.*, w.*, s.* ,r.* ,DATEDIFF(CURDATE(),r.reserveDate) as warantryDay
                                          ,CASE
                                              WHEN DATEDIFF(CURDATE(),r.reserveDate) <= p.Warranty THEN 'T'
                                              ELSE 'F'
                                              END as resultwarantry
                                          ,CASE
                                              WHEN DATEDIFF(CURDATE(),r.reserveDate) <= p.Warranty THEN 'warantryTrue'
                                              ELSE 'warantryFalse'
                                              END as csswarantry "
                                          ," product_N "
                                          ," productDetailWheel w on p.ProductID = w.ProductID
                                          left join productDetailRubber d on p.ProductID = d.ProductID
                                          left join shelf s ON p.shelf_id = s.shelf_id
                                          left join reserve r ON p.ProductID = r.ProductID "
                                          ,"WHERE r.reserveId = ".htmlentities($_GET['q']));
  if(mysql_num_rows($getcard) > 0){
    $showcard = mysql_fetch_object($getcard);
  ?>

  <div class="tab-pane fade in active" id="info_data">
<div class="panel panel-primary">
<div class="panel-heading">ข้อมูลการเคลม</div>
<div class="panel-body">
<div class="form-group">
              <label>เลขที่ใบเสร็จ : </label> <label> &nbsp;<?php echo @$showcard->reserveId;?> </label>

</div>
<div class="form-group row">

   <div class="col-xs-6">
     <label>วันที่ใบเสร็จ : </label> <label> &nbsp;<?php echo @$showcard->reserveDate;?> </label>
   </div>
     <div class="col-xs-6">
       <label>รหัสสินค้า : </label> <label> &nbsp;<?php echo @$showcard->ProductID;?> </label>
     </div>

</div>

  <div class="form-group row">
     <div class="col-xs-6">
     <label >ประเภทสินค้า : </label> <label> &nbsp;<?if(@$showcard->TypeID == '1'){ echo 'ล้อแม็ก';}else{echo 'ยาง';}?> </label>

    </div>
    <div class="col-xs-6">
      <label >ระยะเวลารับประกัน : </label> &nbsp;<?php echo @$showcard->Warranty;?> &nbsp; วัน</label>

    </div>
  </div>

  <div class="form-group row">
     <div class="col-xs-6">
     <label >นับตั้งแต่วันจำหน่าย : </label> <label> &nbsp;<?php echo @$showcard->warantryDay;?> &nbsp; วัน </label>

    </div>
    <div class="col-xs-6">
      <label ></label>

    </div>
  </div>

<div class="form-group row">
  <div class="col-xs-6">
  <label class="<? echo @$showcard->csswarantry?>">ข้อมูลการรับประกันสินค้า : </label> <label class="<? echo @$showcard->csswarantry?>"> &nbsp;<?if(@$showcard->resultwarantry == 'T'){ echo 'อยู่ระหว่างการรับประกัน';}else{echo 'หมดประกัน !';}?> </label>

 </div>
</div>

</div>
<div class="panel-footer">
</div>
</div>
  </div>


  <?
}else{
  echo '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>ไม่พบข้อมูล ใบเสร็จนี้ !</div>';
}
}

?>




</div>
<script language="javascript">
$('#edit_status').on('show.bs.modal', function (event) {
          var button = $(event.relatedTarget) // Button that triggered the modal
          var recipient = button.data('whatever') // Extract info from data-* attributes
          var modal = $(this);
          var dataString = 'key=' + recipient;

            $.ajax({
                type: "GET",
                url: "card/edit_status.php",
                data: dataString,
                cache: false,
                success: function (data) {
                    console.log(data);
                    modal.find('.ct').html(data);
                },
                error: function(err) {
                    console.log(err);
                }
            });
    })

function deleteCard(cardkey){
	if(confirm('คุณต้องการลบใบสั่งซ่อม/เคลมนี้ใช่หรือไม่ ?')){
	if (window.XMLHttpRequest){// code for IE7+, Firefox, Chrome, Opera, Safari
	 	xmlhttp=new XMLHttpRequest();
	}else{// code for IE6, IE5
  		xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange=function(){
  		if (xmlhttp.readyState==4 && xmlhttp.status==200){
		document.getElementById(cardkey).innerHTML = '';
  		}
	}
	xmlhttp.open("GET","function.php?type=delete_card&key="+cardkey,true);
	xmlhttp.send();
	}
}
function hideCard(cardkey){
	if(confirm('คุณต้องการซ่อนใบสั่งซ่อม/เคลมนี้ใช่หรือไม่ ?')){
	if (window.XMLHttpRequest){// code for IE7+, Firefox, Chrome, Opera, Safari
	 	xmlhttp=new XMLHttpRequest();
	}else{// code for IE6, IE5
  		xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange=function(){
  		if (xmlhttp.readyState==4 && xmlhttp.status==200){
		document.getElementById(cardkey).innerHTML = '';
  		}
	}
	xmlhttp.open("GET","function.php?type=hide_card&key="+cardkey,true);
	xmlhttp.send();
	}
}
</script>
