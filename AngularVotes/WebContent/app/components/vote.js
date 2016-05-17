(function() {
	// HasselHoff
	document.getElementById('daveBtn').addEventListener('click', function(e) {
		e.preventDefault();
	
		// target form from the button (target element)
		var form = e.target.parentElement.parentElement.parentElement;
	
		// target indivdual check-boxes
		var daveCheckElements = document.getElementsByClassName('daveChecks');
		
		// take in value from checkbox for vote
		var value = null;
		for (var i = 0; i < daveCheckElements.length; i++) {
			if (daveCheckElements[i].checked) {
				value = daveCheckElements[i].value;
				break;
			}
		}
		
		// JS Object for submitting a vote to db
		var newDaveVote = {
			name: form.name.value,
			vote: value

		};
		
		// xhr posting of vote to db
		var jsonDaveVote = JSON.stringify(newDaveVote);
		
		var xhr = new XMLHttpRequest();
		xhr.open('POST', 'rest/AddVote');
		
		xhr.setRequestHeader('Content-type', 'application/json');
		
		xhr.onreadystatechange = function() {
			if (xhr.readyState === 4 && xhr.status < 400) {
				location.reload();				
			}
		}
		
		xhr.send(jsonDaveVote);
	});
		
	// LaBeouf
	document.getElementById('shiaBtn').addEventListener('click', function(e) {
		e.preventDefault();
	
		// target form from the button (target element)
		var form = e.target.parentElement.parentElement.parentElement;
	
		// target indivdual check-boxes
		var shiaCheckElements = document.getElementsByClassName('shiaChecks');
		
		var value = null;
		for (var i = 0; i < shiaCheckElements.length; i++) {
			if (shiaCheckElements[i].checked) {
				value = shiaCheckElements[i].value;
				break;
			}
		}
		
		// JS Object for submitting a vote to db
		var newShiaVote = {
			name: form.name.value,
			vote: value

		};
		
		// xhr posting of vote to db
		var jsonShiaVote = JSON.stringify(newShiaVote);
		
		var xhr = new XMLHttpRequest();
		xhr.open('POST', 'rest/AddVote');
		
		xhr.setRequestHeader('Content-type', 'application/json');
		
		xhr.onreadystatechange = function() {
			if (xhr.readyState === 4 && xhr.status < 400) {
				location.reload();				
			}
		}
		
		xhr.send(jsonShiaVote);
	});
	
	
	// Gosling
	document.getElementById('ryanBtn').addEventListener('click', function(e) {
		e.preventDefault();
	
		// target form from the button (target element)
		var form = e.target.parentElement.parentElement.parentElement;
	
		// target indivdual check-boxes
		var ryanCheckElements = document.getElementsByClassName('ryanChecks');
		
		var value = null;
		for (var i = 0; i < ryanCheckElements.length; i++) {
			if (ryanCheckElements[i].checked) {
				value = ryanCheckElements[i].value;
				break;
			}
		}
		
		// JS Object for submitting a vote to db
		var newRyanVote = {
			name: form.name.value,
			vote: value

		};
		
		// xhr posting of vote to db
		var jsonRyanVote = JSON.stringify(newRyanVote);
		
		var xhr = new XMLHttpRequest();
		xhr.open('POST', 'rest/AddVote');
		
		xhr.setRequestHeader('Content-type', 'application/json');
		
		xhr.onreadystatechange = function() {
			if (xhr.readyState === 4 && xhr.status < 400) {
				location.reload();				
			}
		}
		
		xhr.send(jsonRyanVote);
	});
	
})();