{include file="header.tpl"}

<div class="col-sm-9 col-sm-offset-3 col-md-8 col-md-offset-2 well">
    <div class="row">
        <div class="col-md-12">
            <img src="{$profileUser.gravatarUrl}" class="col-md-2" alt="Avatar van {$profileUser.username}">

            <div class="col-md-3">
                <div class="row">
                    <div class="col-md-12 username">{$profileUser.username}</div>
                </div>
                <div class="row">
                    <div class="col-md-12 username">{$profileUser.city}</div>
                </div>
            </div>
            <div class="col-md-2 pull-right">
                <div class="row">
                    <div class="col-md-12 rating" data-rate-value="{$profileUser.rating}"></div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <button class="btn btn-cta">Email deze gebruiker</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    {if $profileUser.isseller}
    <div class="row row-spacing">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="panel-title">Huidige kavels van {$profileUser.username}</div>
                </div>
                <div class="panel-body">
                    {foreach $profileUser.objects as $object}
                        {include file="entries/object.tpl"}
                    {/foreach}
                </div>
            </div>
        </div>
    </div>
    {/if}

    <div class="row row-spacing">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="panel-title">Reacties op {$profileUser.username}</div>
                </div>
                <div class="panel-body">
                    {if $profileUser.feedback|sizeof > 0}
                    {foreach $profileUser.feedback as $feedback}
                        {include file="entries/feedback.tpl"}
                    {/foreach}
                    {else}
                        <div class="alert-info alert">Deze gebruiker heeft nog geen feedback gekregen.</div>
                    {/if}
                </div>
            </div>
        </div>
    </div>
</div>


{include file="footer.tpl"}