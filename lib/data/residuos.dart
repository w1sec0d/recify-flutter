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
        "Puedes desecharlo en cualquier caneca azul con nombre 'Plástico' o en las grises nombre 'Reciclable'",
  ),
  Residuo(
    id: 1,
    nombre: "Paquetes de alimentos",
    tipo: "No Aprovechable",
    imagen:
        "https://image.freepik.com/vector-gratis/concepto-paquete-chips_1284-35832.jpg",
    tiempoDegradacion: "100-1000 años",
    descripcion:
        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum!",
  ),
  Residuo(
    id: 2,
    nombre: "Botella de vidrio",
    tipo: "Reciclable",
    imagen:
        "https://image.freepik.com/foto-gratis/licor-botella-destileria-vodka-vidrio_1350-72.jpg",
    tiempoDegradacion: "4000 años",
    descripcion:
        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum!",
  ),
  Residuo(
    id: 3,
    nombre: "Residuos de fruta",
    tipo: "Organico",
    imagen:
        "https://image.freepik.com/foto-gratis/papelera-reciclaje-vista-superior-verduras-organicas_23-2148666785.jpg",
    tiempoDegradacion: "Menos de 6 meses",
    descripcion:
        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum!",
  ),
  Residuo(
    id: 4,
    nombre: "Residuos de barrido",
    tipo: "No Aprovechable",
    imagen:
        "https://image.freepik.com/vector-gratis/productos-limpieza-caricaturas-hogar_18591-52042.jpg",
    tiempoDegradacion: "No aplica",
    descripcion:
        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum!",
  ),
  Residuo(
    id: 5,
    nombre: "Bateria",
    tipo: "Especial",
    imagen: "https://image.freepik.com/free-psd/battery-mockup_1310-481.jpg",
    tiempoDegradacion: "500-1000 años",
    descripcion:
        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum!",
  ),
  Residuo(
    id: 6,
    nombre: "Lata de refresco/bebida alcohólica",
    tipo: "Reciclable",
    imagen:
        "https://image.freepik.com/free-vector/soda-can-aluminium-white_1308-32368.jpg",
    tiempoDegradacion: "100-1000 años",
    descripcion:
        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum!",
  ),
  Residuo(
    id: 7,
    nombre: "Batería",
    tipo: "Especial",
    imagen: "https://image.freepik.com/free-psd/battery-mockup_1310-481.jpg",
    tiempoDegradacion: "100-1000 años",
    descripcion:
        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum!",
  ),
  Residuo(
    id: 8,
    nombre: "Lata de refresco/bebida alcohólica",
    tipo: "Reciclable",
    imagen:
        "https://image.freepik.com/free-vector/soda-can-aluminium-white_1308-32368.jpg",
    tiempoDegradacion: "100-1000 años",
    descripcion:
        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum!",
  ),
  Residuo(
    id: 9,
    nombre: "Bateria",
    tipo: "Especial",
    imagen: "https://image.freepik.com/free-psd/battery-mockup_1310-481.jpg",
    tiempoDegradacion: "100-1000 años",
    descripcion:
        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum!",
  ),
  Residuo(
    id: 10,
    nombre: "Bebida en lata",
    tipo: "Reciclable",
    imagen:
        "https://image.freepik.com/free-vector/soda-can-aluminium-white_1308-32368.jpg",
    tiempoDegradacion: "100-1000 años",
    descripcion:
        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum!",
  ),
];
