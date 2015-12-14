<div class="well col-md-12 col-xs-12 col-sm-12 clickable" data-link="{baseurl url="Kavel/Item/`$object.id`"}">
    <img class="col-md-2 col-xs-6 col-sm-6" src="{$object.image}" alt="{$object.title}" />
    <div class="col-md-6 col-xs-6 col-sm-6">
        <div class=" ">{$object.title}</div>
        <div class=" ">{$object.timeRemaining}</div>
        <div class=" "><h6>Huidig bod:</h6>&euro;{$object.currentBid}</div>
        <div class=" "><h6>Uw bod:</h6>&euro;{$object.ownBid}</div>
        <div class=" "><h6>Verkoper:</h6>{$object.seller}</div>
        <div class=" "><h6>Verkoper:</h6>{$object.seller}</div>

        {foreach $object.categoryTree as $cat}
            <a href="{$cat.link}">{$cat.name}</a>
        {/foreach}

        {*foreach($categories as $cat){*}
        {*$this->addToBreadcrumbs($cat['name'], baseurl("Rubriek/" . $cat['id']));*}
        {*}*}
    </div>
</div>