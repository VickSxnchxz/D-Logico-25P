entity NOM_ENTIDAD is -- NOM_ENTIDAD cambiarlo por "componente"
port(
 -- declaracion de puertos entrada y salida de la FPGA
 a,b: in bit;
 f: out bit -- la ultima linea no lleva ";"
);
end NOM_ENTIDAD;

architecture ARCH_ENTIDAD of NOM_ENTIDAD is
    -- DECLARACION DE COMPONENTES
    component COMPONENTE2 is
        port(
            x,y: in bit;
            z: out bit  -- ultima instruccion no lleva ";"
        );
    end COMPONENTE2;
    begin
        -- uso de los componentes
        COMPONENTE2: COMPONENTE port map(a,b,F);
end ARCH_ENTIDAD;