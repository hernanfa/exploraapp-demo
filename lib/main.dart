import 'package:flutter/material.dart';

void main() {
  runApp(const ExploraEcApp());
}

/// Widget principal de la aplicación ExploraEC.
class ExploraEcApp extends StatelessWidget {
  const ExploraEcApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ExploraEC',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFFAF8FF),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF00685F),
          primary: const Color(0xFF00685F),
          secondary: const Color(0xFF855300),
          surface: const Color(0xFFFAF8FF),
        ),
      ),
      home: const BienvenidaScreen(),
    );
  }
}

/// Pantalla de bienvenida fiel al diseño generado en Stitch para ExploraEC.
class BienvenidaScreen extends StatelessWidget {
  const BienvenidaScreen({super.key});

  static const Color primaryTeal = Color(0xFF00685F);
  static const Color onSurfaceSlate = Color(0xFF131B2E);
  static const Color onSurfaceVariant = Color(0xFF3D4947);
  static const Color outlineVariant = Color(0xFFBCC9C6);
  static const Color borderSubtle = Color(0xFFE2E8F0);
  static const Color amberAccent = Color(0xFFFEA619);
  static const Color surfaceContainerLow = Color(0xFFF2F3FF);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight - 48,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Cabecera e identidad de la marca
                    _buildHeader(),

                    const SizedBox(height: 20),

                    // Tarjeta visual inspiradora (Bento Showcase)
                    _buildShowcaseCard(),

                    const SizedBox(height: 24),

                    // Área de acción inferior y beneficios rápidos
                    _buildActionFooter(),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  /// Construye el encabezado con el ícono superior, insignia, título y subtítulo.
  Widget _buildHeader() {
    return Column(
      children: [
        // Ícono superior estilizado en cápsula con sombra
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 68,
              height: 68,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: borderSubtle),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x140F172A),
                    blurRadius: 24,
                    offset: Offset(0, 8),
                  ),
                  BoxShadow(
                    color: Color(0x0D00685F),
                    blurRadius: 12,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Center(
                child: Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: primaryTeal.withAlpha(25),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: const Icon(
                    Icons.explore,
                    color: primaryTeal,
                    size: 30,
                  ),
                ),
              ),
            ),
            Positioned(
              top: -2,
              right: -2,
              child: Container(
                width: 12,
                height: 12,
                decoration: BoxDecoration(
                  color: amberAccent,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 2),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),

        // Insignia temática "Ecuador en tu bolsillo"
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
          decoration: BoxDecoration(
            color: primaryTeal.withAlpha(20),
            borderRadius: BorderRadius.circular(999),
          ),
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.travel_explore, size: 14, color: primaryTeal),
              SizedBox(width: 6),
              Text(
                'ECUADOR EN TU BOLSILLO',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.8,
                  color: primaryTeal,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),

        // Título principal
        const Text(
          'ExploraEC',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w800,
            letterSpacing: -0.6,
            color: onSurfaceSlate,
            height: 1.15,
          ),
        ),
        const SizedBox(height: 8),

        // Subtítulo
        const Text(
          'Descubre y guarda lugares cerca de ti',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: onSurfaceVariant,
            height: 1.35,
          ),
        ),
      ],
    );
  }

  /// Construye la tarjeta central Bento con imagen paisajística y métricas.
  Widget _buildShowcaseCard() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: borderSubtle),
        boxShadow: const [
          BoxShadow(
            color: Color(0x140F172A),
            blurRadius: 24,
            offset: Offset(0, 8),
          ),
          BoxShadow(
            color: Color(0x0D00685F),
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          // Ventana de imagen con badges y gradiente
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: SizedBox(
              height: 230,
              width: double.infinity,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  // Imagen de fondo con respaldo estético en caso de desconexión
                  Image.network(
                    'https://lh3.googleusercontent.com/aida-public/AB6AXuC3TUzkBvXQygQfI1dAySXu09cJyB5eCCwpYX9f4fr3c_t1ID1JqCf0UN0ahwUG1DNCSG6nSBscrX1kH43a0If_rHbfZipV2KpDJuBFoQmBbvNK5pnJSgNJ1BxXriZyvP96AW93eaJDMxFmjJuECu8S_IS0U7wc116akGa_7nradNP_LQcnhGU1HydG0eJGRP1WTZ4yYQID4hdcjElNDDVtoXehBtqiLuwN7Wk8XyuX9fBsseJz5rpdmXeEk6XwnF85xc60KxwQUS4',
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xFF89F5E7),
                              Color(0xFF00685F),
                              Color(0xFF131B2E),
                            ],
                          ),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.landscape_rounded,
                            size: 64,
                            color: Colors.white60,
                          ),
                        ),
                      );
                    },
                  ),

                  // Gradiente oscuro inferior para legibilidad del texto
                  const DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.0, 0.45, 1.0],
                        colors: [
                          Colors.transparent,
                          Color(0x330F172A),
                          Color(0xD90F172A),
                        ],
                      ),
                    ),
                  ),

                  // Insignias superiores flotantes
                  Positioned(
                    top: 10,
                    left: 10,
                    right: 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildFrostedBadge(
                          icon: Icons.location_on,
                          iconColor: primaryTeal,
                          text: 'Quito y Alrededores',
                        ),
                        _buildFrostedBadge(
                          icon: Icons.star_rounded,
                          iconColor: amberAccent,
                          text: '4.9',
                        ),
                      ],
                    ),
                  ),

                  // Contenido inferior dentro de la tarjeta
                  Positioned(
                    bottom: 12,
                    left: 12,
                    right: 12,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Categorías destacadas
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              _buildCategoryChip(Icons.coffee, 'Cafés'),
                              const SizedBox(width: 6),
                              _buildCategoryChip(Icons.landscape, 'Miradores'),
                              const SizedBox(width: 6),
                              _buildCategoryChip(Icons.park, 'Naturaleza'),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),

                        // Título y contador de sitios
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Rutas Locales & Joyas Ocultas',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: -0.2,
                                    ),
                                  ),
                                  SizedBox(height: 2),
                                  Text(
                                    '+1,200 sitios auténticos curados',
                                    style: TextStyle(
                                      color: Color(0xFFDAE2FD),
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 32,
                              height: 32,
                              decoration: const BoxDecoration(
                                color: primaryTeal,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x33000000),
                                    blurRadius: 6,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: const Icon(
                                Icons.near_me,
                                size: 16,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 10),

          // Fila de estado rápido (Radio y Colecciones)
          Row(
            children: [
              Expanded(
                child: _buildStatusTile(
                  icon: Icons.radar,
                  iconColor: primaryTeal,
                  label: 'RADIO',
                  value: 'A menos de 5 km',
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: _buildStatusTile(
                  icon: Icons.bookmark_added,
                  iconColor: const Color(0xFF855300),
                  label: 'COLECCIONES',
                  value: 'Acceso sin conexión',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Cápsula traslúcida para las etiquetas de la imagen.
  Widget _buildFrostedBadge({
    required IconData icon,
    required Color iconColor,
    required String text,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white.withAlpha(235),
        borderRadius: BorderRadius.circular(999),
        boxShadow: const [
          BoxShadow(
            color: Color(0x1F000000),
            blurRadius: 6,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: iconColor),
          const SizedBox(width: 4),
          Text(
            text,
            style: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w700,
              color: onSurfaceSlate,
            ),
          ),
        ],
      ),
    );
  }

  /// Chip de categoría para filtrar puntos de interés.
  Widget _buildCategoryChip(IconData icon, String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white.withAlpha(230),
        borderRadius: BorderRadius.circular(999),
        boxShadow: const [
          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 4,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 12, color: primaryTeal),
          const SizedBox(width: 4),
          Text(
            label,
            style: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w600,
              color: onSurfaceSlate,
            ),
          ),
        ],
      ),
    );
  }

  /// Celda de métrica / característica rápida debajo de la imagen.
  Widget _buildStatusTile({
    required IconData icon,
    required Color iconColor,
    required String label,
    required String value,
  }) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: surfaceContainerLow,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: borderSubtle),
      ),
      child: Row(
        children: [
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: iconColor.withAlpha(25),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, size: 16, color: iconColor),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    fontSize: 9,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.5,
                    color: onSurfaceVariant,
                  ),
                ),
                Text(
                  value,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                    color: onSurfaceSlate,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Pie de pantalla con el botón principal "Empezar" y sellos de confianza.
  Widget _buildActionFooter() {
    return Column(
      children: [
        // Botón principal "Empezar"
        SizedBox(
          width: double.infinity,
          height: 54,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: primaryTeal,
              foregroundColor: Colors.white,
              elevation: 4,
              shadowColor: primaryTeal.withAlpha(120),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 24),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Empezar',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.2,
                  ),
                ),
                SizedBox(width: 8),
                Icon(Icons.arrow_forward_rounded, size: 20),
              ],
            ),
          ),
        ),
        const SizedBox(height: 14),

        // Beneficios clave en una sola línea
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.check_circle_rounded, size: 15, color: primaryTeal),
            SizedBox(width: 4),
            Text(
              'Sin registro obligatorio',
              style: TextStyle(
                fontSize: 12,
                color: onSurfaceVariant,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(width: 12),
            Text('•', style: TextStyle(color: outlineVariant, fontSize: 14)),
            SizedBox(width: 12),
            Icon(Icons.my_location_rounded, size: 15, color: primaryTeal),
            SizedBox(width: 4),
            Text(
              'GPS en tiempo real',
              style: TextStyle(
                fontSize: 12,
                color: onSurfaceVariant,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),

        // Microcopia secundaria
        const Text(
          'Al continuar, aceptas descubrir Ecuador bajo tus propios pasos.',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 11,
            color: Color(0xFF6D7A77),
          ),
        ),
      ],
    );
  }
}
