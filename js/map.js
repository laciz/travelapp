
function getCoords(){
   
    navigator.geolocation.getCurrentPosition(map,handle_error);

   
  } 

  function handle_error(error) {
    if (error.code == error.PERMISSION_DENIED){
      alert("Please allow  the location ,then refresh this page");
   
    }
  
  }

  function map(position){

    var platform = new H.service.Platform({
        apikey: window.apikey
      });
     
      var defaultLayers = platform.createDefaultLayers();
      var targetElement = document.getElementById('map');
    
    var map = new H.Map(
        document.getElementById('map'),
        defaultLayers.vector.normal.map,
        {
            pixelRatio: window.devicePixelRatio || 1,
          zoom: 15,
         
          center: { lat: position.coords.latitude, lng: position.coords.longitude }
        });
        var ui = H.ui.UI.createDefault(map, defaultLayers, 'en-US');
     
      var mapEvents = new H.mapevents.MapEvents(map);
 

      var icon2 = new H.map.Icon('../home/images/human.png');
      coords2 = {lat: position.coords.latitude, lng:position.coords.longitude};
      marker2 = new H.map.Marker(coords2, {icon: icon2});

      map.addObject(marker2);
      


map.addEventListener('tap', function(evt) {
 
    console.log(evt.type, evt.currentPointer.type);
});


var behavior = new H.mapevents.Behavior(mapEvents);
    


/************* */


 

   /*   var http=new XMLHttpRequest();
var url='https://places.ls.hereapi.com/places/v1/discover/explore?at='+position.coords.latitude+'%2C'+position.coords.longitude+'&cat=eat-drink%2Cgoing-out%2Csights-museums%2Ctransport&apiKey=HQCRAxCAMwEmKNbhSrEW4JE5Vye_YbczGs0qx4zBfsM';
http.open("GET",url);
http.send();
console.log(url);

http.onreadystatechange=function (){
   
    var result=JSON.parse(this.responseText);
    console.log(result.results.items[1].title);
    for(var i=0; i<result.results.items.length; i++){
        console.log(result.results.items[i].title)
        console.log(result.results.items[i].position)
       
        var iko=result.results.items[i].icon;
        var icon = new H.map.Icon('../home/images/kok.png');
        console.log(icon);
        coords = {lat:result.results.items[i].position[0] , lng:result.results.items[i].position[1]};
        marker = new H.map.Marker(coords, {icon: icon});

      

       
        //};
    
   
    map.addObject(marker);
    //map.setCenter(coords);


    }
  }*/
  /*  FILTER PLACES BY CATEGORY.. GOING OUT!!!!.. */
var marker1;
var marker2;
var marker3;
var marker4;
var  nearby_going_out= [];
  document.getElementById("goingout").addEventListener("click", function(){
    var http=new XMLHttpRequest();
    var url='https://places.ls.hereapi.com/places/v1/discover/explore?at='+position.coords.latitude+'%2C'+position.coords.longitude+'&cat=going-out&apiKey=HQCRAxCAMwEmKNbhSrEW4JE5Vye_YbczGs0qx4zBfsM';
    http.open("GET",url);
    http.send();
    console.log(url);
    
    http.onreadystatechange=function (){
       
        var result=JSON.parse(this.responseText);
        console.log(result.results.items[1].title);
        for(var i=0; i<result.results.items.length; i++){
           // console.log(result.results.items[i].title)
           // console.log(result.results.items[i].position)
          
           nearby_going_out[i]=result.results.items[i].title;
           //console.log(result.results.items[i].title);
      
            var iko=result.results.items[i].icon;
            var icon = new H.map.Icon('../home/images/goingout.png');
            console.log(icon);
            coords = {lat:result.results.items[i].position[0] , lng:result.results.items[i].position[1]};
            marker1 = new H.map.Marker(coords, {icon: icon});
            
             
            map.addObject(marker1);
           /*********  MARKER ON HOVER... */

       

           
map.addObject(marker1);
           
            }

            for(var i=0; i<nearby_going_out.length; i++){
              var icon
              document.getElementById("places").innerHTML+=result.results.items[i].title+"||";

            }
           
           

        
        // Add the marker to the map and center the map at the location of the marker:
    
       // map.setCenter(coords);

   }
  
 /*  var xhttp=new XMLHttpRequest();
 
 
    xhttp.onreadystatechange=function(){
      alert(xhttp.responseText);
    }
var valami=JSON.stringify(nearby_going_out);
    xhttp.open("POST",'../functions/insertnearby.php');
 
    xhttp.send("nearby="+  valami+"");
*/
  });

       
 /*  FILTER PLACES BY CATEGORY.. SHOPPING !!!!.. */
   

 document.getElementById("shopping").addEventListener("click", function(){
  var http=new XMLHttpRequest();
  var url='https://places.ls.hereapi.com/places/v1/discover/explore?at='+position.coords.latitude+'%2C'+position.coords.longitude+'&cat=shopping&apiKey=HQCRAxCAMwEmKNbhSrEW4JE5Vye_YbczGs0qx4zBfsM';
  http.open("GET",url);
  http.send();
  console.log(url);
  
  http.onreadystatechange=function (){
     
      var result=JSON.parse(this.responseText);
      console.log(result.results.items[1].title);
      for(var i=0; i<result.results.items.length; i++){
          console.log(result.results.items[i].title)
          console.log(result.results.items[i].position)
         
          //var iko=result.results.items[i].icon;
          var icon = new H.map.Icon('../home/images/shop.png');
          console.log(icon);
          coords = {lat:result.results.items[i].position[0] , lng:result.results.items[i].position[1]};
          marker2 = new H.map.Marker(coords, {icon: icon});
  
        
          map.addObject(marker2);
         // map.removeObjects(marker1);

         
          }
      
      

 }

});



 /*  FILTER PLACES BY CATEGORY.. TRANSPORT !!!!.. */


 document.getElementById("transport").addEventListener("click", function(){
  var http=new XMLHttpRequest();
  var url='https://places.ls.hereapi.com/places/v1/discover/explore?at='+position.coords.latitude+'%2C'+position.coords.longitude+'&cat=transport&apiKey=HQCRAxCAMwEmKNbhSrEW4JE5Vye_YbczGs0qx4zBfsM';
  http.open("GET",url);
  http.send();
  console.log(url);
  
  http.onreadystatechange=function (){
     
      var result=JSON.parse(this.responseText);
      console.log(result.results.items[1].title);
      for(var i=0; i<result.results.items.length; i++){
          console.log(result.results.items[i].title)
          console.log(result.results.items[i].position)
         
          //var iko=result.results.items[i].icon;
          var icon = new H.map.Icon('../home/images/taxi.png');
          console.log(icon);
          coords = {lat:result.results.items[i].position[0] , lng:result.results.items[i].position[1]};
          marker3 = new H.map.Marker(coords, {icon: icon});
  
        
          map.addObject(marker3);
         // map.removeObjects(marker1);

         
          }
      
      

 }

});


 /*  FILTER PLACES BY CATEGORY..MUSEUM !!!!.. */


 
 document.getElementById("museum").addEventListener("click", function(){
  var http=new XMLHttpRequest();
  var url='https://places.ls.hereapi.com/places/v1/discover/explore?at='+position.coords.latitude+'%2C'+position.coords.longitude+'&cat=sights-museums&apiKey=HQCRAxCAMwEmKNbhSrEW4JE5Vye_YbczGs0qx4zBfsM';
  http.open("GET",url);
  http.send();
  console.log(url);
  
  http.onreadystatechange=function (){
     
      var result=JSON.parse(this.responseText);
      console.log(result.results.items[1].title);
      for(var i=0; i<result.results.items.length; i++){
          console.log(result.results.items[i].title)
          console.log(result.results.items[i].position)
         
          //var iko=result.results.items[i].icon;
          var icon = new H.map.Icon('../home/images/museum.png');
          console.log(icon);
          coords = {lat:result.results.items[i].position[0] , lng:result.results.items[i].position[1]};
          marker4 = new H.map.Marker(coords, {icon: icon});
  
         
          map.addObject(marker4);
         // map.removeObjects(marker1);

         
          }
      
      

 }

});








      var reverseGeocodingParameters = {
            prox: position.coords.latitude+" ,"+position.coords.longitude,
            mode: 'retrieveAddresses',
            maxresults: 1
          };
      
      function onSuccess(result) {
        var location = result.Response.View[0].Result[0];
         var countriname=location.Location.Address.AdditionalData[0].value;
         var postalcode=location.Location.Address.PostalCode;
         var cityname=location.Location.Address.City;
      
        var http=new XMLHttpRequest();
        http.open("POST",'../functions/insertinfo.php');
       
        http.onreadystatechange=function(){
        //  alert(http.responseText);
        }
        http.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
        http.send("postalcode="+postalcode+"&cityname="+cityname+"");
     
      
    } 
    
    var geocoder = platform.getGeocodingService();


geocoder.search(reverseGeocodingParameters, onSuccess, function(e) {
    alert(e);
  });
     
      

}


window.onload=map(position);



