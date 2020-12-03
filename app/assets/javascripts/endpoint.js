function pay_calculate(months, amount, id){

  let table = document.getElementById("datum_table");

  const t = document.getElementById(id).querySelector('td[name=frecuency]');

  let varMonths = parseFloat(months)
  let varTasa = 18/100.00
  let varAmount = parseFloat(amount)
  let due = varAmount * ( (varTasa * ((1+varTasa)**varMonths)) / (((1+varTasa)**varMonths)-1))

  if(t.innerText == 'quincenal'){
    due = due/2
  }

  var datos  = [];

   datos.push({
        "amount"    : varAmount,
        "text"      : "La cuota sería $"+parseFloat(due)+" "+t.innerText+" durante "+varMonths+" meses.",
        "frecuency" : t.innerText,
        "payTime"   : varMonths
    });
  console.log(JSON.stringify(datos));
  $("#info_calc").val("La cuota sería $"+parseFloat(due)+" "+t.innerText+" durante "+varMonths+" meses.");

}

function send_mail(){

  const t = document.getElementById("info_calc")
  if(t.value!="no information"){
    Email.send({
        SecureToken : "78e11aab-402d-4979-b6c5-f931d50ed784",
        To : "sergio@mawi.io",
        //To : "johanhg1024@gmail.com",
        From : "johanhg1024@gmail.com",
        Subject : "Mawi - Info",
        Body : t.value
    }).then( function(message){
        alert("Mail enviado con éxito!")
    });

  }
  }
