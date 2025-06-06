entity NOM_ENTIDAD is
port(
 -- declaracion de puertos entrada y salida de la FPGA
 SW: in bit_vector(n-1 downto 0);
 LEDG: out bit_vector(m-1 downto 0); -- para un unico dato se pone bit_vector(8 to 0)
 LEDR: out bit_vector(n-1 downto 0) -- la ultima linea no lleba ";"

);
end NOM_ENTIDAD;

architecture ARCH_ENTIDAD of NOM_ENTIDAD is
    -- DECLARACION DE COMPONENTES
    component COMPONENTE is
        port(
            a,b: in bit;
            f: out bit  -- ultima instruccion no lleva ";"
        );
    end COMPONENTE;
    
    begin
        -- uso de los componentes
        COMPONENTE1: COMPONENTE port map(SW(0),SW(1),ledG(8));
        SW<=LEDR;
end ARCH_ENTIDAD;