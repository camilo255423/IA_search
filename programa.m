

a=Estado();
a.nombre='A';
b=Estado();
b.nombre='B';
c=Estado();
c.nombre='C';
d=Estado();
d.nombre='D';
e=Estado();
e.nombre='E';
f=Estado();
f.nombre='F';
g=Estado();
g.nombre='G';
h=Estado();
h.nombre='H';
j=Estado();
j.nombre='I';
i=Estado();
i.nombre='J';
k=Estado();
k.nombre='K';

estados = [a b c d e f g h i j k];

distancias = zeros(length(estados));

distancias(1,2)=1;
distancias(1,3)=1;
distancias(1,4)=1;
distancias(2,5)=1;
distancias(3,6)=1;
distancias(4,7)=1;
distancias(5,8)=1;
distancias(6,9)=1;
distancias(7,6)=1;
distancias(7,9)=1;
distancias(8,9)=1;
distancias(8,10)=1;
distancias(8,6)=1;
distancias(9,11)=1;
distancias(10,11)=1;

estado_actual=a;
estado_final=k;
cola = Cola();
visitados = Visitados();

while(~estado_actual.es_igual_a(estado_final))

    if ~visitados.contiene(estado_actual) 
        estados_siguientes=generar_estados_siguientes(estado_actual,distancias,estados);
        cola.agregar(estados_siguientes);
        visitados.agregar_estado_visitado(estado_actual);
    end    
    
    estado_actual=cola.tomar_estado();

end

mostrar_ruta_hacia(estado_actual);









