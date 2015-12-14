<div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="well-upper">
            <div class="rating pull-right" data-rate-value="{$feedback.rating}"></div>
                        <span class="feedbackUser">{$feedback.username} {*cheat*}
                            <span>{if $feedback.isseller == 0} (verkoper) {else} (koper) {/if} </span>
                        </span>

            <div class="feedbackTime">{date_format($feedback.date,'H:i d-m-Y')}</div>
            <p>{$feedback.comment}</p>
        </div>
    </div>
</div>