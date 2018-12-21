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
.autocomplete {
  position: relative;

}
.autocomplete-items {
  position: absolute;
  border: 1px solid #d4d4d4;
  border-bottom: none;
  border-top: none;
  z-index: 99;
  top: 100%;
  left: 0;
  right: 0;
  width: 50%;
}
.autocomplete-items div {
  padding: 10px;
  cursor: pointer;
  background-color: #fff;
  border-bottom: 1px solid #d4d4d4;
}
/*when hovering an item:*/
.autocomplete-items div:hover {
  background-color: #e9e9e9;
}

/*when navigating through the items using the arrow keys:*/
.autocomplete-active {
  background-color: DodgerBlue !important;
  color: #ffffff;
}
table {
  border-collapse: collapse;
  width: 100%;
}

td, th {

  padding: 8px;
}

.g-input{
    width: 100%;
}
.right{
  text-align: right;
}
.total{
  background-color: #fffacd;
    color: #255a32;
    font-size: 2.5em;
}
.total1{
  font-size: 1.5em;
}
#itable_product th{
  background-color : #C3C0C0;
  color: #FFF;
}

</style>


<link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.1/themes/base/minified/jquery-ui.min.css" type="text/css" />
<script type="text/javascript" src="http://code.jquery.com/ui/1.10.1/jquery-ui.min.js"></script>
<!--link rel="stylesheet" type="text/css" href="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css"-->
   <!--script type="text/javascript" charset="utf8" src="https://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js"></script-->

    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
</head>
<div class="row">
     <div class="col-lg-12">
             <h1 class="page-header"><i class="fa fa-shopping-cart fa-fw"></i> การขายสินค้า</h1>
     </div>
</div>
<ol class="breadcrumb">
<li><a href="index.php"><?php echo @LA_MN_HOME;?></a></li>
  <li class="active">รายละเอียดการทำธุรกรรม</li>
</ol>

<?
$getproduct_info = $getdata->my_sql_select(NULL,"product_N",NULL);
while($objShow = mysql_fetch_object($getproduct_info)){
            $return_arr[] =  $objShow->ProductID;
             $data[] = $objShow;
        }

        $getjoson = json_encode($return_arr);
        $results = ["sEcho" => 1,
        	"iTotalRecords" => count($data),
        	"iTotalDisplayRecords" => count($data),
        	"aaData" => $data ];
        $testdata = json_encode($results);


 if(htmlentities($_GET['q']) != ""){

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
                                        }

  $showcard = mysql_fetch_object($getcard);
  ?>

  <div class="tab-pane fade in active" id="info_data">
<div class="panel panel-primary">
<div class="panel-heading"><i class="fa fa-shopping-cart fa-fw"></i> การขายสินค้า</div>
<div class="panel-body">
<div class="form-group row">
  <div class="col-xs-6">
    <?
            $objQuery=$getdata->my_sql_select("max(reserveId) as maxcode ","reserve","");
            $objShow=mysql_fetch_object($objQuery);
            @$getMaxid = (int)$objShow->maxcode + 1;

            $checkPro = $getdata->my_sql_select(NULL," product_N "," ProductID = '".$getMaxid."' ");



    ?>
    <label>เลขที่ใบเสร็จ : </label>
    <div class="input-group">
      <span class="input-group-addon">123</span>
     <input class="form-control" type="text" placeholder="เว้นว่างไว้เพื่อสร้างโดยอัตโนมัติ" name="" id="" readonly>
    </div>
    <input class="form-control" type="text" name="reserve_no" id="reserve_no" value="<?php echo @$getMaxid;?>">
    <input class="form-control" type="text" name="checkpro" id="checkpro" value="<?php echo @mysql_num_rows($checkPro);?>">

  </div>
  <div class="col-xs-6">
    <label>วันที่ใบเสร็จ : </label>
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
      <input class="form-control form_datetime" type="text" name="reserve_date" id="reserve_date" title="วันที่ใบเสร็จ" value="<?= date("Y-m-d")?>">
    </div>

  </div>
</div>
<div class="form-group row">
  <div class="col-xs-3">
    <label>จำนวน : </label>
    <div class="input-group">
      <span class="input-group-addon">123</span>
     <input class="form-control right" type="number"  name="product_quantity" id="product_quantity" value="1">
    </div>
    </div>
  <div class="col-xs-9">
    <label>รหัสสินค้า/บาร์โค้ด : </label>

<div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-shopping-cart"></i></span>
  <input class="form-control" placeholder="กรอกรหัสสินค้า เพื่อค้นหา" type="text" name="ProductID" id="ProductID" autocomplete="off">
  <div class="autocomplete" style="width:50%;"></div>
</div>
  </div>
</div>


<div class="table-responsive">
<table id="">
   <thead>
     <tr style="color:#FFF;">
         <th width="4%" bgcolor="#C3C0C0">#</th>
         <th width="10%" bgcolor="#C3C0C0" class="center">จำนวน</th>
         <th width="25%" bgcolor="#C3C0C0">รายละเอียด</th>
         <th width="10%" bgcolor="#C3C0C0" class="center">หน่วยละ</th>
         <th width="10%" bgcolor="#C3C0C0" class="center">ส่วนลด</th>
         <th width="10%" bgcolor="#C3C0C0" class="center" colspan="2">จำนวนเงิน (บาท)</th>
      </tr>
   </thead>
   <tbody>

      <tr>
        <td align="center" ></td>
         <td><label class="g-input"><div><input type="text" name="quantity[]" placeholder="0.00" value="1" class="form-control right" id="quantity_0"></div></label></td>
         <td><label class="g-input"><div><input type="text" class="form-control" name="topic[]" value="" id="topic_0"></label></div></td>
         <td><label class="g-input"><div><input type="text" class="form-control right" placeholder="0.00" name="price[]" size="5" value="0" class="price" id="price_0"></label></div></td>
         <td>
           <label class="g-input">
            <div class="input-group">
             <input type="text" class="form-control right" name="discount[]" placeholder="0.00" value="0" class="price" id="price_0">
             <span class="input-group-addon">%</span>
            </div>
          </label>
        </td>
         <td><label class="g-input"><div class="input-group"><input type="text" class="form-control" placeholder="0.00" name="total[]" size="5" readonly="" id="total_0"></label></td>
         <td><a onClick="javascript:deleteProduct('<?php echo @$showproduct->productMain;?>');" class="btn btn-danger btn-xs"><i class="fa fa-times"></i> <?php echo @LA_BTN_DELETE;?></a></td>
      </tr>

   </tbody>
   <tfoot>
      <tr>
         <td colspan="3" rowspan="8" class="top"><label for="comment">หมายเหตุ</label>
           <label class="g-input">
           <div class="input-group">
             <span class="input-group-addon"><i class="glyphicon glyphicon-file"></i></span>
             <textarea rows="6" name="comment" id="comment" class="form-control"></textarea>
            </div>
           </div>
          </td>
         <td class="right">รวม</td>
         <td colspan="2" class="right" id="sub_total"><input style="border:none; height: auto; " class="form-control total1 right" type="text" name="clock" size="7" value="2000.00"></td>
         <td class="right">บาท</td>
      </tr>
      <tr>
         <td class="right"><label for="discount_percent">ส่วนลด</label></td>
         <td class="wlabel"><span class="g-input">
           <div class="input-group">
            <input type="text" class="form-control right number" placeholder="0.00" name="discount[]" size="5" class="price" id="price_0">
            <span class="input-group-addon">%</span>
           </div>
           </span></td>
         <td><span class="g-input"><input class="form-control right number" placeholder="0.00" name="total_discount" id="total_discount" type="text" title="ส่วนลด" data-keyboard="1234567890-."></span></td>
         <td class="right">บาท</td>
      </tr>
      <tr>
         <td class="right">ราคารวมก่อนภาษี</td>
         <td></td>
         <td><label class="g-input"><input class="form-control right number" placeholder="0.00"  type="text" id="amount" name="amount" size="5" readonly=""></label></td>
         <td class="right">บาท</td>
      </tr>

      <tr>
         <td class="right">รวมราคาทั้งสิ้น</td>
         <td colspan="2" class="right" id="grand_total"><input style="border:none; height: auto; " class="form-control total1 right" type="text" name="clock" size="7" value="2000.00"></td>
         <td class="right">บาท</td>
      </tr>
      <tr>
         <td class="right"><label for="tax_status">ภาษีหัก ณ. ที่จ่าย</label></td>
         <td>
            <span class="g-input">
               <select name="tax_status" id="tax_status" class="form-control">
                  <option value="0" selected="">ไม่มีภาษี</option>
                  <option value="0.75">0.75%</option>
                  <option value="1">1.0%</option>
                  <option value="2">2.0%</option>
                  <option value="3">3.0%</option>
                  <option value="5">5.0%</option>
                  <option value="10">10.0%</option>
               </select>
            </span>
         </td>
         <td><label class="g-input"><input class="form-control right number" placeholder="0.00" type="text" id="tax_total" name="tax_total" size="5"  readonly=""></label></td>
         <td class="right">บาท</td>
      </tr>
      <tr class="due">
         <td class="right">ยอดชำระ</td>
         <td colspan="2" id="payment_amount"><input style="border:none; height: auto; " class="form-control total right" type="text" name="clock" size="7" value="2000.00"></td>
         <td class="right">บาท</td>
      </tr>
      <tr class="due">
         <td class="right"></td>
         <td class="right" colspan="2" id="payment_amount"><button type="submit" style="background-color: #4caf50; border-color: #4caf50; font-size:22px;" name="info_save" class="btn btn-primary"><i class="fa fa-save fa-fw"></i> <?php echo @LA_BTN_SAVE;?></button></td>
         <td class="right"></td>
      </tr>

   </tfoot>
</table>

</div>


</div>
</div>
  </div>
<hr>
                <button type="button" id="tAdd" name="tAdd">Add</button>
<table id="iTable" class="table table-striped table-bordered" cellspacing="0" width="100%">


</table>
<button type="button" id="tSave" name="tSave">Save</button>

</div>
<hr>
<div class="table-responsive">
<table id="itable_product" class="" cellspacing="0" style="width:100%">

</table>
</div>

<script language="javascript">

$(document).ready(function(){


//localStorage.setItem('dataSet', []);
//localStorage.setItem('DataSeto', []);
  var dataSet;
  var DataSeto;
  try{
      dataSet = JSON.parse(localStorage.getItem('dataSet')) || [];
      DataSeto = JSON.parse(localStorage.getItem('DataSeto')) || [];
  } catch (err) {
      dataSet = [];
      DataSeto = [];
  }

  $('#iTable').dataTable({
    "bProcessing": true,
      "data": [],
          "columns": [{
          "title": "Name"
      }, {
          "title": "Age"
      }, {
          "title": "Gender"
      }, {
          "title": "Action"
      }],
          "bStateSave": true,
          "stateSave": true,
          "bPaginate": false,
          "bLengthChange": false,
          "bFilter": false,
          "bInfo": false,
          "bAutoWidth": false
  });

  $('#itable_product').dataTable({
    "bProcessing": true,
      "data": [],
          "columns": [{
          "title": "จำนวน",
          "width": '20%'
      }, {
          "title": "รายละเอียด",
          "width": '30%'
      }, {
          "title": "หน่วยละ",
          "width": '10%',
          "background-color": "#C3C0C0"
      }, {
          "title": "ส่วนลด",
          "width": '10%'
      }, {
          "title": "จำนวนเงิน (บาท)",
          "width": '10%'
      }, {
          "title": "",
          "width": '5%'
      }],
      "ordering": false,
      "bPaginate": false,
      "bLengthChange": false,
      "bFilter": false,
      "bInfo": false,
      "bAutoWidth": false,
      "language" : {
        "zeroRecords": " "
      }
  });

  oTable = $('#iTable').DataTable();
  for (var i = 0; i < dataSet.length; i++) {
      oTable.row.add(dataSet[i]).draw();

  }

  proTable = $('#itable_product').DataTable();
  for (var x = 0; x < DataSeto.length; x++) {
      proTable.row.add(DataSeto[x]).draw();

  }


$('#ProductID').blur(function () {
  str = $(this).val();
  if (str=="") {
    document.getElementById("txtHint").innerHTML="";
    return;
  }
  if (window.XMLHttpRequest) {
    xmlhttp=new XMLHttpRequest();
  } else { // code for IE6, IE5
    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
  xmlhttp.onreadystatechange=function() {
    if (this.readyState==4 && this.status==200) {
      var obj = JSON.parse(this.response);
      var gettype = "";
      if(obj[0].TypeID == '1'){
        gettype = "ล้อแม๊ก";
      }else{
        gettype = "ยาง";
      }
      var getdetail = '<label class="g-input"><div><input type="text" class="form-control" name="topic[]" value='+gettype+' id="topic_0"></label></div>';
      var getdiscount = "<label class='g-input'><div class='input-group'><input type='text' class='form-control right' name='discount[]'' placeholder='0.00' value='0' id='price_0'><span class='input-group-addon'>%</span></div></label>";
      var gettotal = "<label class='g-input'><div class='input-group'><input type='text' class='form-control' placeholder='0.00' name='total[]' readonly id='total_0'></div></label>";
      var butdelete = '<a onClick="javascript:deleteProduct();" class="btn btn-danger btn-xs"><i class="fa fa-times"></i> <?php echo @LA_BTN_DELETE;?></a>';
      var data = [
              $('#product_quantity').val(),
              getdetail,
              obj[0].PriceSale,
              getdiscount,
              gettotal,
              butdelete
          ];
      proTable.row.add(data).draw();
      DataSeto.push(data);
      localStorage.setItem('DataSeto', JSON.stringify(DataSeto));


    }
  }
  xmlhttp.open("GET","function.php?type=saveTable&key="+str,true);
  xmlhttp.send();
});

  $('#tAdd').click(function () {

      var str = 'P0001';
          if (str=="") {
            document.getElementById("txtHint").innerHTML="";
            return;
          }
          if (window.XMLHttpRequest) {
            xmlhttp=new XMLHttpRequest();
          } else { // code for IE6, IE5
            xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
          }
          xmlhttp.onreadystatechange=function() {
            if (this.readyState==4 && this.status==200) {
              var obj = JSON.parse(this.response);
              console.log(obj);

              var data = [
                      obj[0].ProductID,
                      obj[0].shelf_id,
                      obj[0].dealer_code,
                      "<button class='idelete'>Delete</button>"
                  ];
              oTable.row.add(data).draw();
              dataSet.push(data);
              localStorage.setItem('dataSet', JSON.stringify(dataSet));


            }
          }
          xmlhttp.open("GET","function.php?type=saveTable&key="+str,true);
          xmlhttp.send();

});

  $(document).on('click', '.idelete', function () {
      var row = $(this).closest('tr');
      oTable.row(row).remove().draw();
      var rowElements = row.find("td");
      for (var i = 0; i < dataSet.length; i++) {
          var equals = true;
          for (var j = 0; j < 3; j++) {
              if (dataSet[i][j] != rowElements[j].innerHTML) {
                  equals = false;
                  break;
              }
          }
          if (equals) {
              dataSet.splice(i, 1);
              break;
          }
      }
      localStorage.setItem('dataSet', JSON.stringify(dataSet));
  });


  $('#tSave').click(function(){
    console.log(dataSet);
  $.ajax({
         type: "POST",
         url: "saveTable.php",
         data: { tableArray : dataSet },
         success: function(result) {

         }
      });
  });

});

var getjson = <?= $getjoson?>;
var getdata = <?= $testdata?>;

$("#ProductID").autocomplete({
       source: getjson,
       minLength: 1
   });

$(".form_datetime").datepicker({
  format: 'yyyy-mm-dd',
  todayHighlight: true
}).on('changeDate', function(e){
$(this).datepicker('hide');
});



</script>
