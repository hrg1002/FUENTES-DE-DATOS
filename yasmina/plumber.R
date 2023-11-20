#
# This is a Plumber API. You can run the API by clicking
# the 'Run API' button above.
#
# Find out more about building APIs with Plumber here:
#
#    https://www.rplumber.io/
#

library(plumber)
# Instalar y cargar el paquete rvest
install.packages("rvest")
library(rvest)

# Definir la URL de la página web
url <- "https://facturadelaluz.com/solar/que-provincias-tienen-mas-horas-de-sol/"

# Leer la página web
pagina <- read_html(url)

# Extraer las tablas de la página web
tablas <- html_nodes(pagina, "table") %>% html_table(fill = TRUE)

# Ahora, 'tablas' es una lista de data.frames, cada uno correspondiente a una tabla en la página web
# Puedes acceder a cada tabla con tablas[[1]], tablas[[2]], etc.



#* @apiTitle Plumber Example API
#* @apiDescription Plumber example description.

#* Echo back the input
#* @param msg The message to echo
#* @get /echo
function(msg = "") {
    list(msg = paste0("The message is: '", msg, "'"))
}

#* Plot a histogram
#* @serializer png
#* @get /plot
function() {
    rand <- rnorm(100)
    hist(rand)
}

#* Return the sum of two numbers
#* @param a The first number to add
#* @param b The second number to add
#* @post /sum
function(a, b) {
    as.numeric(a) + as.numeric(b)
}

# Programmatically alter your API
#* @plumber
function(pr) {
    pr %>%
        # Overwrite the default serializer to return unboxed JSON
        pr_set_serializer(serializer_unboxed_json())
}
