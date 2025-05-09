import IESopt


# Create and run the model.
model = IESopt.run("opt/config.iesopt.yaml")

# Get the stratified thermal storage, to see "custom" results that the template created.
sts = IESopt.get_component(model, "sts")

# Check its power (`> 0` means injecting into the grid).
IESopt.internal(model).results.components["sts"].exp.power

# Check the losses in MWh.
IESopt.internal(model).results.components["sts"].exp.loss
