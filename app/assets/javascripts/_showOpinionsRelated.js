var button = document.getElementById('relatedOpinions'); // Assumes element with id='button'

button.onclick = function() {
    var div = document.getElementById('relatedOpinionsCards');
    if (div.style.display !== 'block') {
        div.style.display = 'block';
    }
    else {
        div.style.display = 'none';
    }
};
