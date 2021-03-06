classdef Estado < handle
    
    properties
       canibales_orilla1=0;
       canibales_orilla2=0;
       misioneros_orilla1=0;
       misioneros_orilla2=0;
       bote=-1;
       antecesor=[];
    end
    
    methods
        
        function respuesta=es_igual_a(this, otro)
            if strcmp(this.nombre,otro.nombre)
                respuesta=true;
            else
                respuesta=false;
            end
        end
        
        function this=agregar_antecesor(this,antecesor)
            this.antecesor = antecesor;      
        end
        
        function antecesor=obtener_antecesor(this)
            antecesor=this.antecesor;
        end
        
        function mostrar_informacion(this)
                mensaje=[];
                for i=1:this.canibales_orilla1
                    mensaje = [mensaje 'C'];
                end
                for i=1:this.misioneros_orilla1
                    mensaje = [mensaje 'M'];

                end
                if this.bote==-1
                    mensaje = [mensaje 'X'];
                end
                
                 mensaje = [mensaje ' / '];
                for i=1:this.canibales_orilla2
                    mensaje = [mensaje 'C'];
                end
                for i=1:this.misioneros_orilla2
                    mensaje = [mensaje 'M'];

                end
                if this.bote==1
                    mensaje = [mensaje 'X'];
                end
            
            disp(mensaje);
        end
    end
    
end

