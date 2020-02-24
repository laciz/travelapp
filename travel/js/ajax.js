window.addEventListener('load',show_post);

document.getElementById("upload_photo").onclick=function(){


    const url = '../functions/insertpost.php'
    const form = document.querySelector('form')
   //var image=document.getElementById("imgupload");
   
   const files = document.querySelector('[type=file]').files;
   const formData = new FormData();

   for (let i = 0; i < files.length; i++) {
    let file = files[i]
  
    formData.append('files[]', file)
    
   
  }
   
   
  fetch(url, {
    method: 'POST',
    body: formData,
  }).then(response => {
    console.log(response)
  })
  setTimeout(show_post, 2000);


}





    function show_post(){
        var xmlhttp=new XMLHttpRequest();
        xmlhttp.onreadystatechange=function(){
          document.getElementById("posts").innerHTML=xmlhttp.responseText;
        }
        
        xmlhttp.open("POST","../functions/showpost.php");
        xmlhttp.send();

    }