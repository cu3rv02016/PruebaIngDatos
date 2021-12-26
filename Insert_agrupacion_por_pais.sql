INSERT INTO public.agrupacion_por_pais(
    "país", cantidaddetratadosvigentes, cantidaddetratadosnovigentes, "fechaadopciónprimertratado", diferenciaenmesesdesdeelprimeracuerdoalafechaactual)
SELECT *
       ,(DATE_PART('year', current_date::date) - DATE_PART('year', FechadeAdopcionVigente::date) ) * 12 +
              (DATE_PART('month', current_date::date) - DATE_PART('month', FechadeAdopcionVigente::date))
              AS diferencia
    FROM
    (
        SELECT A."Paisdeltratado", CantidadVigentes, CantidadNoVigentes, A.FechadeAdopcionVigente
            FROM
                (SELECT "Paisdeltratado", MIN("FechadeAdopcion") AS FechadeAdopcionVigente, COUNT(*) AS CantidadVigentes
                    FROM public."InformacionPais"
                    WHERE "Vigente" = true
                    GROUP BY "Paisdeltratado") A
            INNER JOIN
                (SELECT "Paisdeltratado", MIN("FechadeAdopcion") AS FechadeAdopcionNoVigente, COUNT(*) AS CantidadNoVigentes
                    FROM public."InformacionPais"
                    WHERE "Vigente" = false
                    GROUP BY "Paisdeltratado") B
                ON A."Paisdeltratado" = b."Paisdeltratado"
            GROUP BY A."Paisdeltratado", CantidadVigentes, CantidadNoVigentes, A.FechadeAdopcionVigente
    )T1;