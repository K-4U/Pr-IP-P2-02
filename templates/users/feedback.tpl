{include file="header.tpl" extracss='feedback.css'}

<div class="row">
    <div class="col-sm-9 col-sm-offset-3 col-md-8 col-md-offset-2 main">
        <h2>Mijn Feedback</h2>
        {if $feedbackItemsSel|sizeof == 0 && $feedbackItemsBuy|sizeof == 0}
            <div class="alert alert-info">Er is nog geen feedback gegeven over transacties met u.</div>
        {/if}
        {foreach $feedbackItemsSel as $feedback}
            {include file="entries/feedback.tpl"}
        {/foreach}

        {foreach $feedbackItemsBuy as $feedback}
            {include file="entries/feedback.tpl"}
        {/foreach}
    </div>
</div>

{include file="footer.tpl"}