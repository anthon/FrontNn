$(document).ready ->
	
  if document.domain is "localhost"
    window.domain = $("base").attr("href")
  else
    window.domain = "http://" + document.domain

  $('[data-pml]').each ()->
  	$this = $(this)
  	email = ''
  	link = ''
  	hashed_email = $this.data('pml')
  	email_array = hashed_email.split(',')
  	hashed_link = $this.data('link')
  	link_array = hashed_link.split(',')
  	for char in email_array
  		email += String.fromCharCode parseInt(char)
  	for char in link_array
  		link += String.fromCharCode parseInt(char)
  	$this.attr 'href', 'mailto:'+email
  	$this.html link

  $('a[href]').each ()->
  	$this = $(this)
  	href = $this.attr('href')
  	if href.indexOf('http') > -1 and href.indexOf(domain) is -1
      $this.attr('target', '_blank')