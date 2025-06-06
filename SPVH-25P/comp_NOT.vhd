entity comp_NOT is
    port(
        -- Declaracion de puertos entrada y salida de la FPGA
        SW: in bit;  -- Entrada de un solo bit
        LEDG: out bit; -- Salida para el LED verde (NOT de SW)
        LEDR: out bit  -- Salida para el LED rojo (igual a SW)
    );
end comp_NOT;

architecture ARCH_ENTIDAD of comp_NOT is
    -- Declaracion del componente cnot
    component cnot is
        port(
            a: in bit;    -- Entrada del componente cnot
            f: out bit    -- Salida del componente cnot (NOT)
        );
    end component;

begin
    -- Uso de los componentes
    cnot1: cnot port map(SW, LEDG);  -- Realiza la operacion NOT en SW y asigna a LEDG
    LEDR <= SW;  -- LEDR sigue el estado de SW sin cambio
end ARCH_ENTIDAD;