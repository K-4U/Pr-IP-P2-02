<div class="row">
    <div class="well-upper">
        <div class="rating pull-right" data-rate-value="{$feedback.rating}"></div>
                        <span class="feedbackUser">{$feedback.username} {*cheat*}
                            <span>{if $feedback.isseller == 0} (verkoper) {else} (koper) {/if} </span>
                        </span>
        <div class="feedbackTime">{date_format($feedback.date,'H:i d-m-Y')}</div>
        <p>{$feedback.comment}</p>
    </div>
</div>