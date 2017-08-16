<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>

<html>

	<head>
		<title>New Device</title>
	</head>
	
	<body>
		<div class="container">
			<s:form label="New device info" cssClass="form-inline">
				<div class="row">
					<div class="form-group col-sm-6">
						<label for="new_brand" class="col-sm-4 col-form-label">Brand</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" id="new_brand" name="brand" placeholder="Type the brand ex. Dell, HP, Apple" />
						</div>
					</div>
					<div class="form-group col-sm-6">
						<label for="new_qad" class="col-sm-4 col-form-label">QAD Tag</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" id="new_qad" name="qad_tag" placeholder="Type the inventory tag number ex. MX000XXX" />
						</div>
					</div>
				</div>
				<div class="row">
					<div class="form-group col-sm-6">
						<label for="new_model" class="col-sm-4 col-form-label">Model</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" id="new_model" name="model" placeholder="Type the model ex. Latitude, Inspiron, MacBook" />
						</div>
					</div>
					<div class="form-group col-sm-6">
						<label for="new_service" class="col-sm-4 col-form-label">Service Tag</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" id="new_service" name="service_tag" placeholder="Type the service tag number" />
						</div>
					</div>
				</div>
				<div class="row">
					<div class="form-group col-sm-6">
						<label for="new_series" class="col-sm-4 col-form-label">Series</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" id="new_series" name="series" placeholder="Type the series ex. E5470, E7470, Pro15''" />
						</div>
					</div>
					<div class="form-group col-sm-6">
						<label for="new_express" class="col-sm-4 col-form-label">Express Service Code</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" id="new_express" name="express" placeholder="Type the express service code" />
						</div>
					</div>
				</div>
				<div class="row">
					<div class="form-group col-sm-6">
						<label for="new_purchase" class="col-sm-4 col-form-label">Purchase Date</label>
						<div class="col-sm-8">
							<input type="date" class="form-control" id="new_purchase" name="purchase" />
						</div>
					</div>
					<div class="form-group col-sm-6">
						<label for="new_warranty" class="col-sm-4 col-form-label">Warranty end date</label>
						<div class="col-sm-8">
							<input type="date" class="form-control" id="new_warranty" name="warranty_end" />
						</div>
					</div>
				</div>
				<!-- 
				<s:textfield 	label="Brand" 					name="brand"  		/>
				<s:textfield 	label="Model" 					name="model" 		/>
				<s:textfield 	label="Series" 					name="series" 		/>
				<s:textfield 	label="QAD Tag" 				name="qad_tag" 		/>
				<s:textfield 	label="Service Tag" 			name="service_tag" 	/>
				<s:textfield 	label="Express Service Code" 	name="express" 		type="number"/>
				<s:textfield 	label="Purchase date"			name="purchase" 	type="date"/>
				<s:textfield 	label="Warranty end date"		name="warranty_end" type="date"/>
				<s:textarea 	label="Comments"				name="comments" />
				-->
				<s:submit value="Create" cssClass="btn btn-primary" />
			</s:form>
		</div>
	</body>
</html>