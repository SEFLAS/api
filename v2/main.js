try {
    let datarequest = {
        0:{
            Name : 'Synapse',
            Updated : '',
        },
        1:{
            Name : 'Script-Ware',
            Updated : ''
        },
        2:{
            Name : 'KRNL',
            Updated : '',
        },
        3:{
            Name : 'DX9WARE',
            Updated : '',
        },
        4:{
            Name : 'Electron',
            Updated : '',
        },
        5:{
            Name : 'WeAreDevs API',
            Updated : '',
        },
        6:{
            Name : 'Oxygen-U',
            Updated : '',
        },
        7:{
            Name : 'Fluxus',
            Updated : '',
        },
        8:{
            Name : 'Celestial',
            Updated : '',
        },
        9:{
            Name : 'Comet',
            Updated : '',
        },
        10:{
            Name : 'Elexe',
            Updated : '',
        },
        11: {
            Name : 'ROBLOX',
            Updated : '',
        },
    };
    fetch('https://api.whatexploitsare.online/status')
    .then(response => response.json())
    .then(data => {
        while (true) { // fk loop
            for (var k = 0; k < data.length; k++){
                if (k <= 10) {
                    datarequest[k]['Updated'] = data[k][datarequest[k]['Name']]['updated']
                    if (datarequest[k]['Updated'] == true) {
                        console.log(datarequest[k]['Name'],"Updated : ✔")
                        // document.getElementById('ID').innerHTML = '✔';
                    } else {
                        console.log(datarequest[k]['Name'],"Updated : ✖") 
                        // document.getElementById('ID').innerHTML = '✖';
                    }
                } else {
                    datarequest[k]['Updated'] = data[k][datarequest[k]['Name']]['version']
                    console.log(datarequest[k]['Name'],"Version :",datarequest[k]['Updated'])
                    // document.getElementById('ID').innerHTML = datarequest[k]['Updated'];
                };
            }
            break
        }
    })
    .catch(error => {
      console.error(error);
    });
} catch (s) {
    console.log(s)
    this.error = 'Hang on, we re having some issues loading the API';
};
