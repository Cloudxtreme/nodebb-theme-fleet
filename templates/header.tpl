<!DOCTYPE html>
<html>
<head>
	<title>{browserTitle}</title>
	<!-- BEGIN metaTags -->
	{function.buildMetaTag}
	<!-- END metaTags -->
	<link rel="stylesheet" type="text/css" href="{relative_path}/stylesheet.css?{css-buster}" />

	<link rel="icon" type="image/x-icon" href="//s3-eu-west-1.amazonaws.com/fleet-forums-prod-uploads/favicon.ico" />
	<link rel="apple-touch-icon" href="//s3-eu-west-1.amazonaws.com/fleet-forums-prod-uploads/favicon.png" />

	<!--[if lt IE 9]>
  		<script src="//cdnjs.cloudflare.com/ajax/libs/es5-shim/2.3.0/es5-shim.min.js"></script>
  		<script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7/html5shiv.js"></script>
  		<script src="//cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.js"></script>
  		<script>__lt_ie_9__ = 1;</script>
	<![endif]-->

	<script>
		var RELATIVE_PATH = "{relative_path}";
	</script>
	<script src="{relative_path}/nodebb.min.js?{script-buster}"></script>

	<link href='//fonts.googleapis.com/css?family=Leckerli+One' rel='stylesheet' type='text/css' />
	<link href='//fonts.googleapis.com/css?family=Averia+Sans+Libre' rel='stylesheet' type='text/css' />

	<script>
		require.config({
			baseUrl: "{relative_path}/src/modules",
			waitSeconds: 3,
			urlArgs: "{cache-buster}",
			paths: {
				'forum': '../forum',
				'vendor': '../../vendor',
				'buzz': '../../vendor/buzz/buzz.min'
			}
		});		
	</script>

	<!-- IF useCustomJS -->
	{customJS}
	<!-- ENDIF useCustomJS -->
	<!-- IF useCustomCSS -->
	<style type="text/css">{customCSS}</style>
	<!-- ENDIF useCustomCSS -->

</head>

<body>

	<div id="banner">

		<a href="/">
			<div id="logo">
				<div class="sun"></div>
				<div class="line1 cloud">Fleet</div>
				<div class="line2 cloud">Forums</div>
			</div>
		</a>

		<!-- <img src="/plugins/nodebb-theme-fleet/images/street-flat.png" width="335" /> -->
	</div>

	<div class="navbar navbar-default header" role="navigation" id="header-menu">
		<div class="container">
			<!-- IMPORT partials/menu.tpl -->
		</div>
		<div class="loading-bar"></div>
	</div>

	<div class="container" id="content">
	<!-- IMPORT partials/noscript/warning.tpl -->
