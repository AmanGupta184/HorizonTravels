window.alert = function(message, timeout = null) {
	const alert = document.createElement('div');
	const alertButton=document.createElement('button');
	alertButton.innerText='X';
	alert.classList.add('alert');
	alert.setAttribute('style', `
	position:fixed;
	background-color:rgba(255,0,0);
	color:white;
	top:13%;
	left:43%;
	padding:10px;
	border-radius:10px;
	box-shadow:0 10px 5px 0 #00000044;
	`);
	alertButton.setAttribute('style',`
	border:none;
	background-color:rgba(255,0,0);
	color:white;
	margin-left:20px;
	`);
	alert.innerText = message;
	alert.appendChild(alertButton);
	alertButton.addEventListener('click',(e)=>{
		alert.remove();
	});
	if(timeout!=null){
		setTimeout(()=>{
			alert.remove();
		},Number(timeout));
	}
	document.body.appendChild(alert);
}