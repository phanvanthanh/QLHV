      <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> -->
      <script type="text/javascript" src="{{ asset('public/js/jquery.min.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/js/custom.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/js/checkAll.js') }}"></script>
      <!-- container-scroller -->
      <!-- plugins:js -->
      <script type="text/javascript" src="{{ asset('public/vendors/js/vendor.bundle.base.js') }}"></script>
      <!-- endinject -->
      <!-- Plugin js for this page-->
      <script type="text/javascript" src="{{ asset('public/vendors/lightgallery/js/lightgallery-all.min.js') }}"></script>
      <!-- End plugin js for this page-->

      <!-- Sumerynote -->
      <script type="text/javascript" src="{{ asset('public/vendors/summernote/dist/summernote-bs4.min.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/vendors/tinymce/tinymce.min.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/vendors/quill/quill.min.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/vendors/simplemde/simplemde.min.js') }}"></script>
      
      <!-- inject:js -->
      <script type="text/javascript" src="{{ asset('public/js/off-canvas.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/js/hoverable-collapse.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/js/misc.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/js/settings.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/js/todolist.js') }}"></script>
      <!-- endinject -->
      <!-- Custom js for this page-->
      <script type="text/javascript" src="{{ asset('public/js/light-gallery.js') }}"></script>




      <script type="text/javascript" src="{{ asset('public/vendors/jquery-tags-input/jquery.tagsinput.min.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/vendors/progressbar.js/progressbar.min.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/vendors/jquery-bar-rating/jquery.barrating.min.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/vendors/inputmask/jquery.inputmask.bundle.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/vendors/inputmask/phone.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/vendors/inputmask/phone-be.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/vendors/inputmask/phone-ru.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/vendors/inputmask/inputmask.binding.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/vendors/dropify/dropify.min.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/vendors/dropzone/dropzone.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/vendors/jquery-file-upload/jquery.uploadfile.min.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/vendors/jquery-asColor/jquery-asColor.min.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/vendors/jquery-asGradient/jquery-asGradient.min.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/vendors/jquery-asColorPicker/jquery-asColorPicker.min.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/vendors/bootstrap-datepicker/bootstrap-datepicker.min.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/vendors/moment/moment.min.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/vendors/x-editable/bootstrap-editable.min.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/vendors/clockpicker/jquery-clockpicker.min.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/vendors/jquery.repeater/jquery.repeater.min.js') }}"></script>
      <!-- Custom js for this page-->
      <script type="text/javascript" src="{{ asset('public/js/formpickers.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/js/form-addons.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/js/x-editable.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/js/dropify.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/js/dropzone.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/js/jquery-file-upload.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/js/formpickers.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/js/form-repeater.js') }}"></script>

      <!-- Plugin js for this page-->
      <script type="text/javascript" src="{{ asset('public/vendors/datatables.net/jquery.dataTables.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/vendors/datatables.net-bs4/dataTables.bootstrap4.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/js/data-table.js') }}"></script>
      <!-- End plugin js for this page-->
      
      <!-- End custom js for this page-->
      <script type="text/javascript" src="{{ asset('public/js/tooltips.js') }}"></script>
      <script type="text/javascript" src="{{ asset('public/js/popover.js') }}"></script>

      <script src="{{ asset('public/vendors/jquery-toast-plugin/jquery.toast.min.js') }}"></script>
      <script src="{{ asset('public/js/toastDemo.js') }}"></script>

      <script src="{{ asset('public/js/export-word/FileSaver.js') }}"></script>
      <script src="{{ asset('public/js/export-word/jquery.wordexport.js') }}"></script>

      <script type="text/javascript">
         jQuery(document).ready(function(){     
          
          function checkSlidebarIconOnly(){
            if(jQuery('body').hasClass('sidebar-icon-only')){
              jQuery('.navbar-brand').text('QLHV');
            }else{
              jQuery('.navbar-brand').text('VNPT - QLHV');
            }
            jQuery('.icon-menu').on('click',function(){
              if(jQuery('body').hasClass('sidebar-icon-only')){
                jQuery('.navbar-brand').text('VNPT - QLHV');
              }else{
                jQuery('.navbar-brand').text('QLHV');
              }
            });
          }
          checkSlidebarIconOnly();
            $(".dropify").change(function() {
                  $('#myImg').html('');
                  if (this.files && this.files[0]) {
                        for (var i = 0; i < this.files.length; i++) {
                              var reader = new FileReader();
                              reader.onload = imageIsLoaded;
                              reader.readAsDataURL(this.files[i]);
                        }
                  }
            });

            $('.summernote').summernote({
              height: 100,                 // set editor height
              minHeight: null,             // set minimum height of editor
              maxHeight: null,             // set maximum height of editor
              focus: false                 // set focus to editable area after initializing summernote
            });

            function imageIsLoaded(e) {
                  
                  $('#myImg').append('<img src=' + e.target.result + ' style="max-height:200px; max-width:200px;">');
            };

            jQuery('.dang-nhap').on('click',function(){
                  window.location.href = "{{ route('login') }}";
            });

            jQuery('.dang-ky').on('click',function(){
                  window.location.href = "{{ route('register') }}";
            });


            jQuery('.btn-browse-file').on('click',function(){
                  var inputClass=jQuery(this).attr('click-on-class');
                  jQuery(inputClass).click();
            });
            
            $('input[type=file]').change(function (e) {
                  var html='';
                  var showFileIntoClass=jQuery(this).attr('show-file');
                  $.each( e.target.files, function( key, value ) {
                        var name=value.name;
                        var arr=name.split(".");
                        if(arr[arr.length-1]=='xls' || arr[arr.length-1]=='xlsx'){
                            html+='<i style="color:green;" class="mdi mdi-file-excel"></i> '+name+'<br>';
                        }
                        else if(arr[arr.length-1]=='doc' || arr[arr.length-1]=='docx'){
                            html+='<i style="color:blue;" class="mdi mdi-file-word"></i> '+name+'<br>';
                        }
                        else if(arr[arr.length-1]=='ppt' || arr[arr.length-1]=='pptx'){
                            html+='<i style="color:red;" class="mdi mdi-file-powerpoint"></i> '+name+'<br>';
                        }
                        else if(arr[arr.length-1]=='pdf'){
                            html+='<i style="color:red;" class="mdi mdi-file-pdf-box"></i> '+name+'<br>';
                        }
                        else if(arr[arr.length-1]=='php' || arr[arr.length-1]=='prc' || arr[arr.length-1]=='html' || arr[arr.length-1]=='js' || arr[arr.length-1]=='java' || arr[arr.length-1]=='css' || arr[arr.length-1]=='asp' || arr[arr.length-1]=='aspx' || arr[arr.length-1]=='sql' || arr[arr.length-1]=='pbix'){
                            html+='<i style="color:grey;" class="mdi mdi-code-not-equal-variant"></i> '+name+'<br>';
                        }
                        else if(arr[arr.length-1]=='txt'){
                            html+='<i  style="color:grey;" class="mdi mdi-note-text"></i> '+name+'<br>';
                        }
                        else if(arr[arr.length-1]=='zip' || arr[arr.length-1]=='rar'){
                            html+='<i style="color:grey;" class="mdi mdi-zip-box"></i> '+name+'<br>';
                        }
                        else if(arr[arr.length-1]=='png' || arr[arr.length-1]=='jpg' || arr[arr.length-1]=='jpeg'){
                            html+='<i grey class="mdi mdi-file-image"></i> '+name+'<br>';
                        }else{
                            html+='<i grey class="mdi mdi-file"></i> '+name+'<br>';
                        }
                  });
                  $(showFileIntoClass).html(html);
            });

            var pathname = "/"+window.location.pathname.substring(1);
            jQuery('.nav-item').removeClass('active');
            jQuery('.nav-link').each(function( index ) {
              var href=jQuery(this).attr("href");
              if(href==pathname){
                jQuery(this).parent().addClass('active');
              }
            });


            


            jQuery('.show-file').each(function( index ) {
            var name=jQuery(this).text();
            if(name){
                var arr=name.split(".");
                if(arr[arr.length-1]=='xls' || arr[arr.length-1]=='xlsx'){
                    jQuery(this).html('<i style="color:green;" class="mdi mdi-file-excel"></i> '+name+'<br>');
                }
                else if(arr[arr.length-1]=='doc' || arr[arr.length-1]=='docx'){
                    jQuery(this).html('<i style="color:blue;" class="mdi mdi-file-word"></i> '+name+'<br>');
                }
                else if(arr[arr.length-1]=='ppt' || arr[arr.length-1]=='pptx'){
                    jQuery(this).html('<i style="color:red;" class="mdi mdi-file-powerpoint"></i> '+name+'<br>');
                }
                else if(arr[arr.length-1]=='pdf'){
                    jQuery(this).html('<i style="color:red;" class="mdi mdi-file-pdf-box"></i> '+name+'<br>');
                }
                else if(arr[arr.length-1]=='php' || arr[arr.length-1]=='prc' || arr[arr.length-1]=='html' || arr[arr.length-1]=='js' || arr[arr.length-1]=='java' || arr[arr.length-1]=='css' || arr[arr.length-1]=='asp' || arr[arr.length-1]=='aspx' || arr[arr.length-1]=='sql' || arr[arr.length-1]=='pbix'){
                    jQuery(this).html('<i style="color:grey;" class="mdi mdi-code-not-equal-variant"></i> '+name+'<br>');
                }
                else if(arr[arr.length-1]=='txt'){
                    jQuery(this).html('<i  style="color:grey;" class="mdi mdi-note-text"></i> '+name+'<br>');
                }
                else if(arr[arr.length-1]=='zip' || arr[arr.length-1]=='rar'){
                    jQuery(this).html('<i style="color:grey;" class="mdi mdi-zip-box"></i> '+name+'<br>');
                }
                else if(arr[arr.length-1]=='png' || arr[arr.length-1]=='jpg' || arr[arr.length-1]=='jpeg'){
                    jQuery(this).html('<i grey class="mdi mdi-file-image"></i> '+name+'<br>');
                }else{
                    jQuery(this).html('<i grey class="mdi mdi-file"></i> '+name+'<br>');
                }
            }
                
        }); 

            btnDisabled=function(){
              jQuery('.btn-disabled').addClass('disabled').attr('disabled', true);
              var checkLoaiVaiTro=''; var coCheckLoaiVaiTro=0;
              
              jQuery("input[type='checkbox'].id_payc").each(function( index ){
                if(jQuery(this).is(":checked")){
                  
                  var tr=jQuery(this).parent('th').parent('tr');
                  var vaiTro=tr.find('.vai-tro').attr('data');
                  if(checkLoaiVaiTro==''){
                    checkLoaiVaiTro=vaiTro;
                    coCheckLoaiVaiTro++;
                  }
                  if(checkLoaiVaiTro!='' && checkLoaiVaiTro!=vaiTro){
                    coCheckLoaiVaiTro++;
                  }
                  if(vaiTro==0){ // xem để biết
                    jQuery('.btn-hoan-tat-da-xem').removeClass('disabled').attr('disabled', false);
                  }else{
                    if (vaiTro==1) { // xử lý chính
                      jQuery('.btn-xu-ly-va-chuyen-lanh-dao').removeClass('disabled').attr('disabled', false);
                    } else { // phối hợp xử lý
                      jQuery('.btn-hoan-tat-phoi-hop').removeClass('disabled').attr('disabled', false);
                    }
                  }
                  if(coCheckLoaiVaiTro>1){
                    jQuery('.btn-disabled').addClass('disabled').attr('disabled', true);
                  }
                }
              });              
            }

            onOffButtonChucNang=function(){
              var coCheckDanhSachChoTiepNhan=0;
              jQuery("input[type='checkbox'].id_payc").each(function( index ){
                if(jQuery(this).is(":checked")){
                  coCheckDanhSachChoTiepNhan++;
                }
              });
              if(coCheckDanhSachChoTiepNhan>0){
                jQuery('.btn-chuc-nang').removeClass('disabled').attr('disabled', false);
              }else{
                jQuery('.btn-chuc-nang').addClass('disabled').attr('disabled', true);
              }
            }
            onOffButtonChucNang();


            jQuery('.check-id-payc').on('click', function(){
                if(jQuery(this).find('input:checkbox').is(":checked")){
                  jQuery(this).find('input:checkbox').prop('checked', false);
                  
                }else{
                  jQuery(this).find('input:checkbox').prop('checked', true);
                }
                btnDisabled();
                onOffButtonChucNang();
            });


            jQuery("input[type='checkbox'].id_payc").on('click',function(){
              jQuery(this).parent('.check-id-payc').click();

            });

            jQuery('.check-one-id-payc').on('click', function(){
              if(jQuery(this).find('input:checkbox').is(":checked")){
                jQuery(this).find('input:checkbox').prop('checked', false);
              }else{
                jQuery('.check-one-id-payc').find('input:checkbox').prop('checked', false);
                jQuery(this).find('input:checkbox').prop('checked', true);
              }
            });

            

            


        

        getDsIdPaycCheckbox=function(){
          var dsId='';
          jQuery('.id_payc').each(function( index ){
            if(jQuery(this).is(":checked")){
              dsId+=jQuery(this).val()+';';
            }
          });
          return dsId;
        }

        getDsIdUserCheckbox=function(){
          var dsId='';
          jQuery('.id-child-user').each(function( index ){
            if(jQuery(this).is(":checked")){
              dsId+=jQuery(this).val()+';';
            }
          });
          return dsId;
        }
        getIdPaycCapNhatCheckbox=function(){
          var id=''; var stt=0;
          jQuery('.id_payc').each(function( index ){
            if(jQuery(this).is(":checked")){
              stt++;
              id=jQuery(this).val();              
            }
          });
          if(stt==1){
            return id;
          }else{
            if(stt==0){
              alert("Vui lòng chọn YC cần cập nhật");  
            }else{
              alert("Chỉ được cập nhật 1 yêu cầu.");  
            }
          }
          
        }

        // MỚI LOAD TRANG
      var selectedQuanHuyen=jQuery('.ma_quan_huyen').val();
      showPhuongXa=function(loai){ // loại =1 là mới load trang, ngước lại là do người dùng onchange
        var co=0;
        jQuery('.ma_phuong_xa option').each(function( index ) {
              var maQuanHuyen=jQuery(this).attr('ma-quan-huyen');
              if(loai!=1){
          jQuery(this).removeAttr('selected');
              }
                
              if(maQuanHuyen!=selectedQuanHuyen){
                jQuery(this).css('display','none');
              }else{
                jQuery(this).css('display','block');
                if(co==0 && loai!=1){
                  jQuery(this).attr('selected','selected');
                  co=1;
                }
              }
          });
      }
      
      showPhuongXa(1);
      jQuery('.ma_quan_huyen').on('change',function(){
        selectedQuanHuyen=jQuery(this).val();
        showPhuongXa(2);
      });
        




        /*Kỹ thuật t-tree là kỹ thuật Thanh-Tree do Thanh tự làm đó mà*/
        jQuery('.t-tree').on('click',function(){
            var id=jQuery(this).attr('data-id');
            var dataShow=jQuery(this).attr('data-show');
            if(dataShow==1){
                jQuery(this).attr('data-show',0);
                jQuery(this).find('.tree-icon').removeClass('fa-minus-square-o');
                jQuery(this).find('.tree-icon').addClass('fa-plus-square-o');
            }else{
                jQuery(this).attr('data-show',1);
                jQuery(this).find('.tree-icon').removeClass('fa-plus-square-o');
                jQuery(this).find('.tree-icon').addClass('fa-minus-square-o');
            }
            tTree(id, dataShow);
        });
        tTree=function(id, dataShow){            
            jQuery('.t-tree').each(function(){
                if(jQuery(this).attr('data-parent')==id){
                    if(dataShow==1){
                        jQuery(this).hide();
                        jQuery(this).find('.tree-icon').removeClass('fa-minus-square-o');
                        jQuery(this).find('.tree-icon').addClass('fa-plus-square-o');
                    }else{
                        jQuery(this).show();
                        jQuery(this).find('.tree-icon').removeClass('fa-plus-square-o');
                        jQuery(this).find('.tree-icon').addClass('fa-minus-square-o');
                    }
                    tTree(jQuery(this).attr('data-id'), dataShow);
                }
            });
        }

        
        jQuery('#id_dich_vu').on('change',function(){
          var value=jQuery(this).val();
          if(value==1){
            jQuery('.dia_chi').removeClass('d-none');
          }else{
            jQuery('.dia_chi').addClass('d-none');
          }
        });
        

            

            
         })                
      </script>