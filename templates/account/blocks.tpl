<div class="account">
	<!-- IMPORT partials/breadcrumbs.tpl -->

	<!-- IMPORT partials/account/menu.tpl -->

	<h2>[[pages:account/blocks, {username}]]</h2>
	<div class="users row">
		<div class="col-sm-8 col-xs-12">
			<ul id="users-container" class="users-container" data-nextstart="{nextStart}">
				<!-- IMPORT partials/users_list.tpl -->
			</ul>
			<div class="alert alert-warning text-center"<!-- IF users.length --> style="display: none;"<!-- END -->>[[user:has_no_blocks]]</div>
			<!-- IMPORT partials/paginator.tpl -->
		</div>
		<div class="col-sm-4 col-xs-12">
			<div class="panel panel-default">
				<div class="panel-body form">
					<div class="form-group">
						<label for="user-search">[[users:search]]</label>
						<input class="form-control" type="text" id="user-search" placeholder="[[users:enter_username]]" />
						<div class="block-edit">
							<!-- IF edit -->
							<!-- BEGIN edit -->
							<hr />
							<button class="btn btn-sm btn-primary pull-right" data-uid="{../uid}" data-action="toggle">[[user:block_toggle]]</button>
							<div class="pull-left">
								<a href="{config.relative_path}/uid/{../uid}">
									<!-- IF ../picture -->
									<img class="avatar avatar-sm" component="user/picture" src="{../picture}" itemprop="image" />
									<!-- ELSE -->
									<div class="avatar avatar-sm" component="user/picture" style="background-color: {../icon:bgColor};">{../icon:text}</div><!-- END -->{../username}
								</a>
							</div>
							<!-- END -->
							<!-- END -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>