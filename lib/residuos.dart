class Residuo {
  int id;
  String nombre;
  String tipo;
  String imagen;

  Residuo(this.id, this.nombre, this.tipo, this.imagen);
}

var residuos = [
  Residuo(0, "botella de plástico", "reciclable",
      "https://image.freepik.com/psd-gratis/maqueta-botella-agua-dulce_358694-287.jpg"),
  Residuo(1, "botella de plástico", "reciclable",
      "https://image.freepik.com/vector-gratis/concepto-paquete-chips_1284-35832.jpg"),
  Residuo(2, "botella de plástico", "reciclable",
      "https://image.freepik.com/foto-gratis/licor-botella-destileria-vodka-vidrio_1350-72.jpg"),
  Residuo(3, "botella de plástico", "reciclable",
      "https://image.freepik.com/foto-gratis/papelera-reciclaje-vista-superior-verduras-organicas_23-2148666785.jpg"),
  Residuo(4, "botella de plástico", "reciclable",
      "https://image.freepik.com/vector-gratis/productos-limpieza-caricaturas-hogar_18591-52042.jpg"),
  Residuo(5, "botella de plástico", "reciclable",
      "https://image.freepik.com/vector-gratis/productos-limpieza-caricaturas-hogar_18591-52042.jpg"),
];

/*
const residuos = [
  {
    id: 0,
    nombre: "botella de plástico",
    tipo: ,
    imageUrl:
      "https://image.freepik.com/psd-gratis/maqueta-botella-agua-dulce_358694-287.jpg",
  },
  {
    id: 1,
    nombre: "paquetes de alimentos",
    tipo: "no-aprovechable",
    imageUrl:
      "https://image.freepik.com/vector-gratis/concepto-paquete-chips_1284-35832.jpg",
  },
  {
    id: 2,
    nombre: "botella de vidrio",
    tipo: "reciclable",
    imageUrl:
      "https://image.freepik.com/foto-gratis/licor-botella-destileria-vodka-vidrio_1350-72.jpg",
  },
  {
    id: 3,
    nombre: "residuos de fruta",
    tipo: "organico",
    imageUrl:
      "https://image.freepik.com/foto-gratis/papelera-reciclaje-vista-superior-verduras-organicas_23-2148666785.jpg",
  },
  {
    id: 4,
    nombre: "residuos de barrido",
    tipo: "no-aprovechable",
    imageUrl:
      "https://image.freepik.com/vector-gratis/productos-limpieza-caricaturas-hogar_18591-52042.jpg",
  },
  {
    id: 5,
    nombre: "Bateria",
    tipo: "especial",
    imageUrl: "https://image.freepik.com/free-psd/battery-mockup_1310-481.jpg",
  },
  {
    id: 6,
    nombre: "Lata de refresco/bebida alcohólica",
    tipo: "reciclable",
    imageUrl:
      "https://image.freepik.com/free-vector/soda-can-aluminium-white_1308-32368.jpg",
  },
];
export default residuos;
*/