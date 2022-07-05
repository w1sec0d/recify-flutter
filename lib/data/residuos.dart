// Configura la clase residuo y crea la lista residuos[]

class Residuo {
  final int id;
  final String nombre;
  final String tipo;
  final String imagen;
  final String descripcion;
  final String tiempoDegradacion;

  const Residuo({
    required this.id,
    required this.nombre,
    required this.tipo,
    required this.imagen,
    required this.descripcion,
    required this.tiempoDegradacion,
  });
}

const residuos = [
  Residuo(
    id: 0,
    nombre: "Botella de plástico",
    tipo: "Reciclable",
    imagen:
        "https://image.freepik.com/psd-gratis/maqueta-botella-agua-dulce_358694-287.jpg",
    tiempoDegradacion: "100-1000 años",
    descripcion:
        "Puedes desecharlo en cualquier Caneca Azul con nombre 'Plástico' o en Canecas grises con nombre 'Residuos Aprovechables'",
  ),
  Residuo(
    id: 1,
    nombre: "Paquetes de alimentos",
    tipo: "No Aprovechable",
    imagen:
        "https://image.freepik.com/vector-gratis/concepto-paquete-chips_1284-35832.jpg",
    tiempoDegradacion: "100-1000 años",
    descripcion:
        "Puedes desecharlo en cualquier Caneca Negra con nombre 'Residuos No Aprovechables'",
  ),
  Residuo(
    id: 2,
    nombre: "Botella de vidrio",
    tipo: "Reciclable",
    imagen:
        "https://image.freepik.com/foto-gratis/licor-botella-destileria-vodka-vidrio_1350-72.jpg",
    tiempoDegradacion: "4000 años",
    descripcion:
        "Puedes desecharlo en cualquier Caneca Azul con nombre 'Plástico' o en Canecas grises con nombre 'Residuos Aprovechables'",
  ),
  Residuo(
    id: 3,
    nombre: "Residuos de fruta",
    tipo: "Organico",
    imagen:
        "https://image.freepik.com/foto-gratis/papelera-reciclaje-vista-superior-verduras-organicas_23-2148666785.jpg",
    tiempoDegradacion: "Menos de 6 meses",
    descripcion:
        "Puedes desecharlo en cualquier Caneca Verde con nombre 'Ordinarios' o con nombre 'Residuos Orgánicos Aprovechables'",
  ),
  Residuo(
    id: 4,
    nombre: "Residuos de barrido",
    tipo: "No Aprovechable",
    imagen:
        "https://image.freepik.com/vector-gratis/productos-limpieza-caricaturas-hogar_18591-52042.jpg",
    tiempoDegradacion: "No aplica",
    descripcion:
        "Puedes desecharlo en cualquier Caneca Negra con nombre 'Residuos No Aprovechables'",
  ),
  Residuo(
    id: 5,
    nombre: "Bateria",
    tipo: "Baterias",
    imagen: "https://image.freepik.com/free-psd/battery-mockup_1310-481.jpg",
    tiempoDegradacion: "1000-5000 años",
    descripcion:
        "Puedes desecharlo en cualquier Caneca Roja con nombre 'Residuos Especials'o en CONTENEDOR C-THRU PARA BATERÍAS especialmente ubicados en centros comerciales",
  ),
  Residuo(
    id: 6,
    nombre: "Lata de refresco/bebida alcohólica",
    tipo: "Reciclable",
    imagen:
        "https://image.freepik.com/free-vector/soda-can-aluminium-white_1308-32368.jpg",
    tiempoDegradacion: "10 años",
    descripcion:
        "Puedes desecharlo en cualquier Caneca Azul con nombre 'Plástico' o en Canecas grises con nombre 'Residuos Aprovechables'",
  ),
  Residuo(
    id: 7,
    nombre: "Caja de Huevos Limpia",
    tipo: "Reciclable",
    imagen: "https://ongteprotejo.org/wp-content/uploads/2014/12/huevos1.jpg",
    tiempoDegradacion: "1-2 años",
    descripcion:
        "Puedes desecharlo en cualquier Caneca Azul con nombre 'Plástico' o en Canecas grises con nombre 'Residuos Aprovechables'",
  ),
  Residuo(
    id: 8,
    nombre: "Guantes,Jeringas y material de Curación Casero",
    tipo: "Peligroso",
    imagen:
        "https://abdc.es/wp-content/uploads/2020/11/clasificacion-residuos-sanitarios.jpg",
    tiempoDegradacion: "100-1000 años",
    descripcion:
        "Puedes desecharlo en cualquier Caneca Roja con nombre 'Residuos Especials'",
  ),
  Residuo(
    id: 9,
    nombre: "Colillas de Cigarrillos",
    tipo: "Peligroso",
    imagen:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Finished_cigarette.JPG/1200px-Finished_cigarette.JPG",
    tiempoDegradacion: "1-10 años",
    descripcion:
        "Puedes desecharlo en cualquier Caneca Roja con nombre 'Residuos Especials'o en contenedores especiales ubicados en lugares de mayor consumo de cigarros, como bares, restaurantes, parques, discotecas, universidades, o playas podemos prevenir una mayor contaminación",
  ),
  Residuo(
    id: 10,
    nombre: "Papeleria de Oficina",
    tipo: "Reciclable",
    imagen:
        "https://codexverde.cl/wp-content/uploads/2014/05/Papel%20oficina.jpg",
    tiempoDegradacion: "1,5 años",
    descripcion:
        "Puedes desecharlo en cualquier Caneca Azul con nombre 'Plástico' o en Canecas grises con nombre 'Residuos Aprovechables'",
  ),
  Residuo(
    id: 11,
    nombre: "Envases en TRETAPAK",
    tipo: "Reciclable",
    imagen:
        "https://www.peru-retail.com/wp-content/uploads/tetrapack-package-portfolio.jpg",
    tiempoDegradacion: "30 años",
    descripcion:
        "Puedes desecharlo en cualquier Caneca Azul con nombre 'Plástico' o en Canecas grises con nombre 'Residuos Aprovechables'",
  ),
  Residuo(
    id: 12,
    nombre: "Cajas de Cereal",
    tipo: "Reciclable",
    imagen:
        "https://www.themarkethink.com/wp-content/uploads/2020/05/mensajes-aliento-cajas-kellogg.jpg",
    tiempoDegradacion: "1-2 años",
    descripcion:
        "Puedes desecharlo en cualquier Caneca Azul con nombre 'Plástico' o en Canecas grises con nombre 'Residuos Aprovechables'",
  ),
  Residuo(
    id: 13,
    nombre: "Juguetes Dañados solo de Plástico",
    tipo: "Reciclable",
    imagen: "https://www.salud.mapfre.es/media/2021/06/juguetes-plastico.jpg",
    tiempoDegradacion: "300 años",
    descripcion:
        "Puedes desecharlo en cualquier Caneca Azul con nombre 'Plástico' o en Canecas grises con nombre 'Residuos Aprovechables'",
  ),
  Residuo(
    id: 14,
    nombre: "Servilletas Usadas",
    tipo: "No Aprovechable",
    imagen:
        "https://www.renovablesverdes.com/wp-content/uploads/2019/01/Servilletas-sucias-que-no-se-pueden-reciclar.png",
    tiempoDegradacion: "1 año",
    descripcion:
        "Puedes desecharlo en cualquier Caneca Negra con nombre 'Residuos No Aprovechables'",
  ),
  Residuo(
    id: 15,
    nombre: "Vaso de Icopor con restos orgánicos",
    tipo: "No Aprovechable",
    imagen:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/Cortado_%286170237822%29.jpg/271px-Cortado_%286170237822%29.jpg",
    tiempoDegradacion: "50 años",
    descripcion:
        "Puedes desecharlo en cualquier Caneca Negra con nombre 'Residuos No Aprovechables'",
  ),
];
