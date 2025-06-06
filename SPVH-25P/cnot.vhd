entity cnot is 
port(
 a: in bit;
 f: out bit -- la ultima linea no lleva ";"
);
end cnot;
architecture ARCH_ENTIDAD of cnot is
    begin
	 f<= not(a);
end ARCH_ENTIDAD;