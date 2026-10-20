/// Modelo de datos de ExploraEC — Sesión 2.
///
/// Por ahora vive únicamente en memoria: [lugaresEjemplo] es una lista
/// escrita a mano. La Sesión 6 la reemplaza por datos reales obtenidos
/// de la Overpass API (OpenStreetMap).
class Place {
  final String id;
  final String nombre;
  final String categoria;
  final String descripcion;
  final double lat;
  final double lng;

  Place({
    required this.id,
    required this.nombre,
    required this.categoria,
    required this.descripcion,
    required this.lat,
    required this.lng,
  });
}

// TODO(sesion-02): borra la línea de abajo y descomenta el bloque completo.
// Por qué: sin datos de ejemplo no hay nada que dibujar en la lista de
// Inicio (Paso 4) — estos 6 lugares reales de Quito permiten probar
// PlaceCard y ListView.builder antes de conectar una fuente de datos
// real en la Sesión 6.
//final List<Place> lugaresEjemplo = [];
final List<Place> lugaresEjemplo = [
  Place(
    id: '1',
    nombre: 'parque el ejido',
    categoria: 'parques',
    descripcion: 'parque urbano en el centro-norte de quito, con ferias de arte los fines de semana.',
    lat: -0.2073,
    lng: -78.4900,
  ),
  Place(
    id: '2',
    nombre: 'café galletti',
    categoria: 'cafeterías',
    descripcion: 'cafetería de especialidad con opciones de trabajo remoto y buen wifi.',
    lat: -0.1938,
    lng: -78.4869,
  ),
  Place(
    id: '3',
    nombre: 'museo casa del alabado',
    categoria: 'museos',
    descripcion: 'museo de arte precolombino en el centro histórico de quito.',
    lat: -0.2201,
    lng: -78.5125,
  ),
  Place(
    id: '4',
    nombre: 'mercado central',
    categoria: 'restaurantes',
    descripcion: 'mercado tradicional con puestos de comida típica ecuatoriana.',
    lat: -0.2185,
    lng: -78.5110,
  ),
  Place(
    id: '5',
    nombre: 'parque la carolina',
    categoria: 'parques',
    descripcion: 'parque metropolitano con jardín botánico, canchas deportivas y lago para botes.',
    lat: -0.1807,
    lng: -78.4859,
  ),
  Place(
    id: '6',
    nombre: 'vista hermosa',
    categoria: 'restaurantes',
    descripcion: 'restaurante con terraza y vista panorámica del centro histórico.',
    lat: -0.2199,
    lng: -78.5122,
  ),
];
