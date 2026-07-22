# set formula viewer
from sage.misc.viewer import pdf_viewer, viewer
viewer.pdf_viewer('okular')

# set some variables
for var_name in (
    "x",
    "y",
    "z",
    "t",
    "r",
    "a",
    "b",
    "c",
):
    globals()[var_name] = var(var_name)

