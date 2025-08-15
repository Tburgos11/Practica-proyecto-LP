import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Huella de Carbono ESPOL',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const HuellaCarbonoPage(),
    );
  }
}

class HuellaCarbonoPage extends StatefulWidget {
  const HuellaCarbonoPage({super.key});

  @override
  State<HuellaCarbonoPage> createState() => _HuellaCarbonoPageState();
}

class _HuellaCarbonoPageState extends State<HuellaCarbonoPage> {
  late Future<List<dynamic>> huellas;

  @override
  void initState() {
    super.initState();
    huellas = fetchHuellas();
  }

  Future<List<dynamic>> fetchHuellas() async {
    final response = await http.get(Uri.parse('http://localhost:3000/api/estudiantes'));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Error al obtener las huellas');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Huella de Carbono de Estudiantes ESPOL'),
      ),
      body: FutureBuilder<List<dynamic>>(
        future: huellas,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No hay datos disponibles'));
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final estudiante = snapshot.data![index];
                return ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Estudiante ID: ${estudiante['estudianteId']}'),
                  subtitle: Text('Huella de carbono: ${estudiante['huella']} kg CO₂'),
                );
              },
            );
          }
        },
      ),
    );
  }
}
