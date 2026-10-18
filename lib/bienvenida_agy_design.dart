import 'package:flutter/material.dart';

/// Propuesta alternativa propia para la pantalla de bienvenida de ExploraEC.
///
/// Concepto visual: "Radar de Proximidad & Descubrimiento Ecuatorial".
/// Prioriza una jerarquía limpia, estética moderna basada en proximidad y
/// micro-componentes informativos que explican de inmediato el valor de la app.
class BienvenidaScreenAgyDesign extends StatelessWidget {
  const BienvenidaScreenAgyDesign({super.key});

  // Paleta cromática distintiva: Esmeralda andino, pizarra profundo y oro solar
  static const Color primaryColor = Color(0xFF059669);
  static const Color primaryDark = Color(0xFF065F46);
  static const Color accentAmber = Color(0xFFD97706);
  static const Color textHeadline = Color(0xFF0F172A);
  static const Color textBody = Color(0xFF475569);
  static const Color bgSurface = Color(0xFFF8FAFC);
  static const Color cardBg = Colors.white;
  static const Color borderLine = Color(0xFFE2E8F0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgSurface,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight - 40,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Sección 1: Ícono de radar e identidad principal
                    _buildHeaderSection(),

                    const SizedBox(height: 24),

                    // Sección 2: Tarjeta interactiva del Radar de Lugares Cercanos
                    _buildDiscoveryRadarCard(),

                    const SizedBox(height: 28),

                    // Sección 3: Botón principal "Empezar" y detalles de valor
                    _buildActionSection(),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  /// Construye el encabezado con el ícono superior estilo radar y los textos principales.
  Widget _buildHeaderSection() {
    return Column(
      children: [
        const SizedBox(height: 12),

        // Ícono superior con ondas de pulso/radar de proximidad
        Center(
          child: Container(
            width: 84,
            height: 84,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: primaryColor.withAlpha(20),
            ),
            child: Center(
              child: Container(
                width: 62,
                height: 62,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: primaryColor.withAlpha(45),
                ),
                child: Center(
                  child: Container(
                    width: 44,
                    height: 44,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [primaryColor, primaryDark],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x33059669),
                          blurRadius: 12,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.location_searching_rounded,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),

        // Título con jerarquía editorial contemporánea
        Text.rich(
          const TextSpan(
            text: 'Explora',
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.w800,
              letterSpacing: -0.8,
              color: textHeadline,
            ),
            children: [
              TextSpan(
                text: 'EC',
                style: TextStyle(
                  color: primaryColor,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),

        // Subtítulo con buena separación y tono amigable
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Descubre y guarda lugares cerca de ti',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              height: 1.4,
              color: textBody,
            ),
          ),
        ),
      ],
    );
  }

  /// Construye la tarjeta central que simula el radar de lugares descubiertos.
  Widget _buildDiscoveryRadarCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: cardBg,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: borderLine),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0F0F172A),
            blurRadius: 20,
            offset: Offset(0, 8),
          ),
          BoxShadow(
            color: Color(0x08059669),
            blurRadius: 10,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Cabecera de la tarjeta: Estado del radar
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  Icon(Icons.radar_rounded, size: 18, color: primaryColor),
                  SizedBox(width: 8),
                  Text(
                    'PUNTOS DE INTERÉS CERCANOS',
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.8,
                      color: textBody,
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                decoration: BoxDecoration(
                  color: primaryColor.withAlpha(20),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      radius: 3.5,
                      backgroundColor: primaryColor,
                    ),
                    SizedBox(width: 5),
                    Text(
                      'En vivo',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        color: primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          const Divider(height: 1, color: borderLine),
          const SizedBox(height: 12),

          // Lista de lugares destacados simulados con distancia y botón de guardar
          _buildPlaceItem(
            icon: Icons.landscape_outlined,
            iconBg: const Color(0xFFEFF6FF),
            iconColor: const Color(0xFF2563EB),
            name: 'Mirador El Panecillo',
            distance: '850 m de ti',
            category: 'Mirador',
          ),
          const SizedBox(height: 10),
          _buildPlaceItem(
            icon: Icons.local_cafe_outlined,
            iconBg: const Color(0xFFFFFBEB),
            iconColor: accentAmber,
            name: 'Café de las Flores',
            distance: '1.2 km de ti',
            category: 'Gastronomía',
          ),
          const SizedBox(height: 10),
          _buildPlaceItem(
            icon: Icons.park_outlined,
            iconBg: const Color(0xFFECFDF5),
            iconColor: primaryColor,
            name: 'Parque La Carolina',
            distance: '2.4 km de ti',
            category: 'Naturaleza',
          ),
        ],
      ),
    );
  }

  /// Elemento individual de lugar con distancia y botón para guardar.
  Widget _buildPlaceItem({
    required IconData icon,
    required Color iconBg,
    required Color iconColor,
    required String name,
    required String distance,
    required String category,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: bgSurface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: borderLine.withAlpha(120)),
      ),
      child: Row(
        children: [
          // Ícono de categoría del lugar
          Container(
            width: 38,
            height: 38,
            decoration: BoxDecoration(
              color: iconBg,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, size: 20, color: iconColor),
          ),
          const SizedBox(width: 12),

          // Información textual del lugar
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: textHeadline,
                  ),
                ),
                const SizedBox(height: 2),
                Row(
                  children: [
                    Text(
                      distance,
                      style: const TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                        color: textBody,
                      ),
                    ),
                    const Text(' • ', style: TextStyle(color: textBody)),
                    Text(
                      category,
                      style: const TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: primaryColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Ícono para guardar lugar favorito
          Container(
            width: 32,
            height: 32,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.bookmark_border_rounded,
              size: 18,
              color: textBody,
            ),
          ),
        ],
      ),
    );
  }

  /// Construye la sección de acción con el botón principal "Empezar" y detalles inferiores.
  Widget _buildActionSection() {
    return Column(
      children: [
        // Botón principal "Empezar" con diseño píldora y sombra de elevación
        Container(
          width: double.infinity,
          height: 56,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28),
            gradient: const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [primaryColor, primaryDark],
            ),
            boxShadow: const [
              BoxShadow(
                color: Color(0x40059669),
                blurRadius: 18,
                offset: Offset(0, 8),
              ),
            ],
          ),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(28),
              ),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Empezar',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.3,
                  ),
                ),
                SizedBox(width: 8),
                Icon(Icons.arrow_forward_rounded, size: 20),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),

        // Puntos destacados del valor de la app
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _FeatureChip(icon: Icons.near_me_outlined, label: 'GPS en vivo'),
            SizedBox(width: 12),
            _FeatureChip(icon: Icons.bookmark_added_outlined, label: 'Guarda sitios'),
            SizedBox(width: 12),
            _FeatureChip(icon: Icons.public_outlined, label: 'Ecuador'),
          ],
        ),
        const SizedBox(height: 10),

        // Microcopia inferior
        const Text(
          'Explora cafeterías, miradores y rutas a tu alrededor.',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 11,
            color: Color(0xFF94A3B8),
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}

/// Chip de característica rápida para el pie de pantalla.
class _FeatureChip extends StatelessWidget {
  final IconData icon;
  final String label;

  const _FeatureChip({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 14, color: const Color(0xFF64748B)),
        const SizedBox(width: 4),
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Color(0xFF64748B),
          ),
        ),
      ],
    );
  }
}
