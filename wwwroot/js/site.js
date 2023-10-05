    
    function validarContraseña() {
        const campoContraseña = document.getElementById('contraseña').value,
        campoContraseña2 = document.getElementById('contraseña2').value;
        if (campoContraseña.length < 8) {
            return false;
        }

    const caracteresEspeciales = "!@#$%^&*()_+{}[]:;<>,.?~\\-";

    for (const char of campoContraseña) 
    {
        if (char.match(/[A-Z]/)) 
        {
            return true;
        } 
        else if (caracteresEspeciales.includes(char)) 
        {
           return true;
        }
    }
    if(campoContraseña != campoContraseña2){
        return false;
        
    }
    else{
        return true;
    }
    }