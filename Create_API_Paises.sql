DROP TABLE IF EXISTS public."API_Paises";

CREATE TABLE IF NOT EXISTS public."API_Paises"
(
    "Paisdeltratado" text COLLATE pg_catalog."default",
    "Codigodellamadas" text COLLATE pg_catalog."default",
    "Capital" text COLLATE pg_catalog."default",
    "Region" text COLLATE pg_catalog."default",
    "Subregion" text COLLATE pg_catalog."default",
    "Poblacion" text COLLATE pg_catalog."default",
    "Area" text COLLATE pg_catalog."default",
    "Zonahoraria" text COLLATE pg_catalog."default",
    "Monedas" text COLLATE pg_catalog."default",
    "Idiomas" text COLLATE pg_catalog."default",
    "Cantidadfronteras" text COLLATE pg_catalog."default",
    "Diferenciahoraszonahoraria" numeric
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."API_Paises"
    OWNER to postgres;