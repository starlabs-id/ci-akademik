<table class="tpmain">
	<thead>
		<tr>
			<th>ID RUANGAN</th>
			<th>NAMA RUANGAN</th>
			
			<th width="50" class="center nsort">DETAIL</th>
			<th width="70" class="center nsort">.::.</th>
		</tr>
	</thead>
	<tbody id="f<?php echo $menu;?>dt">
		<?php if ($dat) {?>
			<?php foreach($dat as $r => $td) {?>
				<!--?php foreach($dat as $r => $td)?-->
					<tr>
						<td class="postit ID_RUANGAN pk" val="<?php echo $td['ID_RUANGAN'];?>"><?php echo $td['ID_RUANGAN'];?></td>
						<td class="postit NAMA_RUANGAN" val="<?php echo $td['NAMA_RUANGAN'];?>"><?php echo $td['NAMA_RUANGAN'];?></td>
						<td class="center">
							<a href="#f<?php echo $menu;?>" rel="detail" class="info" title="Detail" onclick="tr2dform2(this, event, 'Detail')"><a/>
						</td>
						<td class="center">
							<a href="#f<?php echo $menu;?>" rel="update" class="upd" title="Edit" onclick="tr2dform(this, event, 'Edit')"><a/>
							<a href="#f<?php echo $menu;?>" rel="delete" class="del" title="Delete" onclick="delete_r(this, event)"><a/>
						</td>
					</tr>
				<!--?php }?-->
			<?php }?>
		<?php }?>
	</tbody>
	<tfoot>
		<tr>
			<th class="right" colspan="18"><a href="#f<?php echo $menu;?>" rel="create" class="easyui-linkbutton" plain="true" iconCls="icon-add" title="Add" onclick="tr2dform(this, event, 'Add New')">Add New<a/></th>
		</tr>
	</tfoot>
</table>

<div id="<?php echo 'f'.$menu?>" class="hide">
	<form class="ss">
		<fieldset class="ss">
		<legend class="just_add ss">Add New</legend>
		<legend class="just_upd ss">Edit</legend>
		<legend class="just_info ss">RUANGAN</legend>
			<label class="ss">ID RUANGAN</label><input type="text" class="postit ID_RUANGAN wide ro pk" value=""/><br/>
			<label class="ss">NAMA RUANGAN</label><input type="text" class="postit NAMA_RUANGAN wide" value=""/><br/>
	</form>
</div>