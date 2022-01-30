{{#if buttons}}
<div class="col-button1">
    <div class="up">
        <a href="javascript:void(0)" class="btn btn-number plus" data-type="plus"
            data-field="quant[{{idx}}]" onclick="this.blur();">
            <em class="fas fa-plus fa-small fa-thermostat"></em>
        </a>
    </div>
    <div class="down">
        <a href="javascript:void(0)" class="btn btn-number min" data-type="minus"
            data-field="quant[{{idx}}]" onclick="this.blur();">
            <em class="fas fa-minus fa-small fa-thermostat"></em>
        </a>
    </div>
</div>
{{/if}}
<div class="col-xs-2 col-icon">
    {{#if mImage}}<img src="img/{{mImage}}" class="on icon">{{/if}}
    {{#if mIcon}}<em class="{{mIcon}} on icon" style="max-height:35px;"></em>{{/if}}
</div>
<div class="col-xs-8 col-data {{#buttons}}right1col{{/buttons}}">
    <strong class="title">{{title}}</strong>
    <br />
    <span class="state">{{value}}</span>
    <br />
    {{#if showinfo}}
    <span class="lastupdate">{{lastupdate}}</span>
    {{/if}}
</div>