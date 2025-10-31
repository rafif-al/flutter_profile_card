import 'package:flutter/material.dart';
import 'package:flutter_application_1/detail-profile.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  final List<String> ShoesList = const <String>[
    'https://images.pexels.com/photos/2529148/pexels-photo-2529148.jpeg',
    'https://images.unsplash.com/photo-1605348532760-6753d2c43329?auto=format&fit=crop&q=80&w=987',
    'https://images.unsplash.com/photo-1518002171953-a080ee817e1f?auto=format&fit=crop&q=80&w=2070',
    'https://images.unsplash.com/photo-1605408499391-6368c628ef42?auto=format&fit=crop&q=80&w=987',
    'https://images.unsplash.com/photo-1460353581641-37baddab0fa2?auto=format&fit=crop&q=80&w=2071',
    'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&q=80&w=1625',
    'https://images.unsplash.com/photo-1511556532299-8f662fc26c06?auto=format&fit=crop&q=80&w=2070',
    'https://images.pexels.com/photos/19090/pexels-photo.jpg',
    'https://images.unsplash.com/photo-1595341888016-a392ef81b7de?auto=format&fit=crop&q=80&w=2079',
    'https://images.unsplash.com/photo-1512374382149-233c42b6a83b?auto=format&fit=crop&q=80&w=1035',
  ];

  final String title = 'Muhammad Rafif Al Fauzan';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'About Me',
          style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Outfit'),
        ),
        backgroundColor: Colors.amberAccent,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('asset/profile.jpeg'),
              ),
              const SizedBox(height: 12),
              Text(
                title, // ✅ perbaikan di sini
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'Outfit',
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                'Integer enim est, fringilla sit amet convallis at, consectetur eu dolor. '
                'Morbi accumsan metus id lectus mattis, eget consequat turpis porta. '
                'Praesent justo ipsum, fermentum a pharetra eget, tristique in velit. '
                'Donec id facilisis tellus. Vestibulum auctor porttitor magna. '
                'Nunc feugiat dolor nec justo ultricies, id bibendum justo dignissim. '
                'Sed lorem sapien, tristique non lectus commodo, pulvinar ultrices urna. '
                'Mauris sit amet tellus tempor, porttitor ligula sit amet, pretium augue. '
                'Maecenas rhoncus lectus vel quam sollicitudin, quis consequat neque accumsan. '
                'Maecenas vel diam id dui consectetur fermentum. Proin neque magna, '
                'dignissim quis velit vitae, convallis euismod lectus.',
                style: TextStyle(fontFamily: 'Outfit'),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 20),

              // ======= Tombol ke Detail Profile =======
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailProfile(title: title),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding: const EdgeInsets.all(8.0),
                  child: const Text(
                    'D E T A I L  P R O F I L E',
                    style: TextStyle(
                      fontFamily: 'Outfit',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // ======= Shoes Section =======
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Colors.cyanAccent, Colors.blueAccent],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    'S H O E S',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Outfit',
                      fontSize: 22,
                      letterSpacing: 6,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              SizedBox(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: ShoesList.map((e) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(e),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
