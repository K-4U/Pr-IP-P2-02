{include file="header.tpl"}
{if $loginError}
    <div class=" alert alert-danger"> {$loginError} </div>
{/if}
{include file="dialogs/login.tpl"}


{include file="footer.tpl"}