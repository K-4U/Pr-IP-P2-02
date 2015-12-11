<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Eenmaal Andermaal</title>

    <!-- start: Mobile Specific -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- end: Mobile Specific -->

    <!-- start: CSS -->
    {csstag url='bootstrap.min.css'}
    {csstag url='style.css'}
    {csstag url='font-awesome.min.css'}
    {if $extracss}
        {csstag url=$extracss}
    {/if}
    <!-- end: CSS -->

    <!-- start: reCaptcha -->
    <script src='https://www.google.com/recaptcha/api.js'></script>
    <!-- end: reCaptcha -->

    <!-- start: JS -->
    <script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
    {jstag url='bootstrap.min.js'}
    {jstag url='jq.js'}
    {jstag url='plugins/rater.min.js'}
    <!-- end: JS -->
</head>
<body>
<div class="login">
    {include file="dialogs/login.tpl"}
</div>
<div class="register">
    {include file="dialogs/register.tpl"}
</div>
<div class="row headerrow">
    <div class="col-sm-9 col-sm-offset-3 col-md-8 col-md-offset-2">
        <div class="col-md-8">
            <h1 class="muted"><a href="{baseurl url=""}">EenmaalAndermaal</a></h1>
        </div>
        {if !$user.loggedIn}
            <div class="col-md-3 pull-right hidden-xs btn-group login-register">
                <button class="btn btn-cta btn-sm loginBtn">Login</button>
                <button class="btn btn-cta btn-sm registerBtn">Registreren</button>
            </div>
        {/if}
    </div>
</div>

<nav class="navbar navbar-inverse headerrow headernav menu">
    <div class="col-sm-9 col-sm-offset-3 col-md-8 col-md-offset-2">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li>
                    <a href="{baseurl url="Kavel/New"}">Kavel aanbieden</a>
                </li>
                <li>
                    <a href="{baseurl url=""}">Veilingen</a>
                </li>
                <li>
                    <a href="{baseurl url="Static/about"}">Over ons</a>
                </li>

                <li>
                    <a href="{baseurl url="Static/contact"}">Contact</a>
                </li>

                <li>
                    <a href="{baseurl url="Static/terms"}">Voorwaarden</a>
                </li>
            </ul>

            {if $user.loggedIn}
            <ul class="nav navbar-nav navbar-right">
                <li><img src="{$gravatarUrl}" class="avatar" alt="Info"/>
                    <ul class="usermenu">
                        <li><a href="{baseurl url="Users/CP"}">Mijn Gegevens</a></li>
                        <li><a href="#">Mijn Feedback</a></li>
                        <li><a href="#">Mijn Kavels</a></li>
                        <li><a href="#">Mijn Biedingen</a></li>
                        <li><a href="{baseurl url="Users/Logout"}">Uitloggen</a></li>
                    </ul>
                </li>

            </ul>
            {/if}

            <form class="navbar-form navbar-right">
                <div class="form-group input-group">
                    <input type="text" class="form-control" placeholder="Search">
                    <span class="input-group-btn">
                        <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
                    </span>
                </div>
            </form>
            {if !$user.loggedIn}
            <ul class="nav navbar-nav navbar-right hidden-lg hidden-md hidden-sm">
                <li><a href="{baseurl url="Users/Login"}">Login</a></li>
                <li><a href="#">Registreer</a></li>
            </ul>
            {/if}
        </div>
    </div>
</nav>

<div class="container-fluid content">
    {if $breadcrumbs|sizeof > 0}
    <ol class="breadcrumb col-md-offset-2 col-md-8">
        {foreach $breadcrumbs as $breadcrumb}
            {if $breadcrumb.link}
                <li><a href="{$breadcrumb.link}">{$breadcrumb.name}</a></li>
            {else}
                <li class="active">{$breadcrumb.name}</li>
            {/if}
        {/foreach}
    </ol>
    {/if}
