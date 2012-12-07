(function(){
  jQuery.ajaxSetup({
     'beforeSend': function(xhr) {xhr.setRequestHeader("Accept", "text/javascript")} 
  }); 
  $(document).ready(function(){
    
    $('.deleteFriends').on('click',function(e){
      var info = e.currentTarget.id.split('_');
      var myid = info[1];
      var friendid = info[2];
      var sentData = {my:myid,targ:friendid};
      $.ajax({
        url: '/relation',
        type: 'delete',
        dataType: 'json',
        data: sentData,
        success: function(eee){
          $('#'+e.currentTarget.id).remove();
        }
      });


    });
    $('.addFriends').on('click',function(e){
      var info = e.currentTarget.id.split('_');
      var myid = info[1];
      var friendid = info[2];
      var sentData = {my:myid,targ:friendid};
      $.ajax({
        url: '/relation',
        type: 'post',
        dataType: 'json',
        data: sentData,
        success: function(eee){
          $('#'+e.currentTarget.id).remove();
        }
      });


    });
    $('.addPost').on('click',function(e){
      var tmp = e.currentTarget.id.split('_');
      var uid = tmp[2];
      var content = $('#post_'+uid).val();
      var data = {uid:uid,content:content};
     
      var form = $('#post_form_'+uid);
      form.submit();
    });


    $('.pushcomment').on('click',function(e){
      var id = e.currentTarget.id;
      var info = id.split('_');
      
      var type = info[0];
      var userid = info[1];

      var value = $('#comment_content_'+userid).val();
      dataUpload({type:type,id:userid,value:{v:value}});

    });
    function dataUpload(data){
      $.ajax({
      url: '/'+data.type +'/' +data.id,
        dataType: 'json',
        type: 'post',
        data: data.value,
        success: function(res){
          $('.comments_class_'+data.id).append(res.result); 
        
        }
      });
    }
  });
})();
