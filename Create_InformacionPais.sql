DROP TABLE IF EXISTS public."InformacionPais";

CREATE TABLE IF NOT EXISTS public."InformacionPais"
(
    "NombredelTratado" text COLLATE pg_catalog."default",
    "Bilateral" boolean,
    "LugardeAdopcion" text COLLATE pg_catalog."default",
    "FechadeAdopcion" date,
    "Estados-Organismos" text COLLATE pg_catalog."default",
    "Temas" text COLLATE pg_catalog."default",
    "NaturalezadelTratado" text COLLATE pg_catalog."default",
    "Depositario" text COLLATE pg_catalog."default",
    "SuscribioPorColombia" text COLLATE pg_catalog."default",
    "Vigente" boolean,
    "FechaLeyAprobatoria" date,
    "NumeroLeyAprobatoria" text COLLATE pg_catalog."default",
    "SentenciaFechaLey" date,
    "SentenciaNumero" text COLLATE pg_catalog."default",
    "DecretoFechaDiarioOficial" date,
    "DecretoNúmeroDiarioOficial" text COLLATE pg_catalog."default",
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
    "Cantidadfronteras" bigint,
    "Diferenciahoraszonahoraria" numeric
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."InformacionPais"
    OWNER to postgres;