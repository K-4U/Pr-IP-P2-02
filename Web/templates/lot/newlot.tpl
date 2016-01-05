{include file="header.tpl"}

<div class="col-md-offset-2 col-md-8 well">
    {if $errors}
        {foreach $errors as $key => $value}
            <div class=" alert alert-danger alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>{$value} </div>
        {/foreach}
    {/if}
    <form action="{$self}" method="post" enctype="multipart/form-data">
        <div class="col-md-6">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="panel-title">
                        Kavel info
                    </div>
                </div>
                <div class="panel-body">
                    <div class="form-group">
                        <div class="row">
                            <div class="col-md-4 text-right"><label for="title">Titel</label></div>
                            <div class="col-md-8"><input type="text" id="title" name="title" class="form-control"
                                                         required maxlength="60" placeholder="Titel" value="{$values.title}"></div>
                        </div>

                        <div class="row">
                            <div class="col-md-4 text-right"><label for="description">Beschrijving</label></div>
                            <div class="col-md-8"><textarea maxlength="4000" name="description" id="description"
                                                            class="form-control" placeholder="Beschrijving">{$values.description}</textarea>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-4 text-right"><label for="start_bid">Startprijs</label></div>
                            <div class="col-md-8">
                                <div class="input-group">
                                    <div class="input-group-addon"><i class="fa fa-eur"></i></div>
                                    <input type="text" class="form-control numeric_only" id="start_bid" name="start_bid"
                                           maxlength="11" required placeholder="Startprijs" value="{$values.start_bid}">
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4 text-right"><label for="location">Plaatsnaam</label></div>
                            <div class="col-md-8"><input type="text" id="location" name="location" class="form-control"
                                                         required maxlength="163" placeholder="Plaatsnaam" value="{$values.location}"></div>
                        </div>

                        <!--<div class="row">
                            <div class="col-md-4 text-right"><label for="location">Plaatsnaam</label></div>
                            <div class="col-md-8"><input type="text" id="location" name="location" class="form-control" required maxlength="163" placeholder="Plaatsnaam"></div>
                        </div>-->

                        <div class="row">
                            <div class="col-md-4 text-right"><label for="duration">Looptijd</label></div>
                            <div class="col-md-8">
                                <select class="form-control" name="duration" id="duration" required>
                                    <option {if !$values.duration}selected{/if}disabled hidden>Looptijd</option>
                                    <option value="1" {if $values.duration == 1}selected{/if}>1</option>
                                    <option value="3" {if $values.duration == 3}selected{/if}>3</option>
                                    <option value="5" {if $values.duration == 5}selected{/if}>5</option>
                                    <option value="7" {if $values.duration == 7}selected{/if}>7</option>
                                    <option value="10" {if $values.duration == 10}selected{/if}>10</option>
                                </select>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4 text-right"><label for="payment_method">Betalingswijze</label></div>
                            <div class="col-md-8">
                                <select class="form-control" name="payment_method" id="payment_method" required>
                                    <option {if !$values.payment_method}selected {/if}disabled hidden>Betalingswijze</option>
                                    <option value="Overschrijving" {if $values.payment_method == "Overschrijving"}selected{/if}>Overschrijving</option>
                                    <option value="Contant" {if $values.payment_method == "Contant"}selected{/if}>Contant</option>
                                    <option value="PayPal" {if $values.payment_method == "PayPal"}selected{/if}>PayPal</option>
                                    <option value="Bitcoin" {if $values.payment_method == "Bitcoin"}selected{/if}>Bitcoin</option>
                                    <option value="Anders" {if $values.payment_method == "Anders"}selected{/if}>Anders</option>
                                </select>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4 text-right"><label
                                        for="payment_instructions">Betalingsinstructies</label></div>
                            <div class="col-md-8"><textarea maxlength="255" name="payment_instructions"
                                                            id="payment_instructions" class="form-control"
                                                            placeholder="Betalingsinstructies">{$values.payment_instructions}</textarea></div>
                        </div>

                        <div class="row">
                            <div class="col-md-4 text-right"><label for="shipment_costs">Verzendkosten</label></div>
                            <div class="col-md-8">
                                <div class="input-group">

                                    <div class="input-group-addon"><i class="fa fa-eur"></i></div>
                                    <input type="text" class="form-control numeric_only" id="shipment_costs" name=""
                                           maxlength="11" placeholder="Verzendkosten" value="{$values.shipment_costs}">

                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4 text-right"><label
                                        for="shipment_instructions">Verzendinstructies</label></div>
                            <div class="col-md-8"><textarea maxlength="255" name="shipment_instructions"
                                                            id="shipment_instructions" class="form-control"
                                                            placeholder="Verzendinstructies" value="{$values.shipment_instructions}"></textarea></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <div class="panel-title">
                                Kavel afbeeldingen
                            </div>
                        </div>
                        <div class="panel-body">

                            <div class="form-group">
                                <span class="btn btn-default btn-file">
                                    Browse <input type="file" name="fileToUpload" required>
                                </span>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <div class="panel-title">Rubriek</div>
                        </div>
                        <div class="panel-body">
                        <select class="form-control" name="category" id="category" required size="6">
                            <option selected disabled hidden>Categorie</option>
                            {foreach $categoryList as $category}
                                <option value="{$category.id}" {if $category.disabled}disabled{/if} {if $category.id == $values.category}selected{/if}>{$category.name}</option>
                            {/foreach}
                        </select>
                        </div>
                    </div>
                </div>
            </div>


        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="panel-title">
                            Acties
                        </div>
                    </div>
                    <div class="panel-body">
                        <button class="btn btn-default btn-cta" type="submit" name="submit">Aanbieden</button>
                    </div>
                </div>
            </div>
        </div>
</div>
</form>
</div>

{include file="footer.tpl"}