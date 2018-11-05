supported_devices=(
  'angler'
  'bacon'
  'castor'
  'castor_windy'
  'cheeseburger'
  'dumpling'
  'enchilada'
  'honami'
  'kenzo'
  'land'
  'mako'
  'maple'
  'marlin'
  'mata'
  'mido'
  'oneplus2'
  'oneplus3'
  'poplar'
  'potter'
  's5neoltexx'
  'sailfish'
  'shamu'
  'star2lte'
  'starlte'
  'sirius'
  'taimen'
  'tissot'
  'x2'
  'z2_plus'
  'z3'
  'z3c'
)

for device in ${supported_devices[@]}; do
    add_lunch_combo carbon_${device}-user
    add_lunch_combo carbon_${device}-userdebug
done