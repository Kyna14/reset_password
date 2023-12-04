import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Password Reset',
      initialRoute: '/',
      routes: {
        '/': (context) => VerificationPage(),
        '/reset_password': (context) => ResetPasswordPage(),
        '/reset_password_success': (context) => ResetPasswordSuccessPage(),
      },
    );
  }
}

class VerificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'assets/background_forgot_password.png'), // Ganti dengan path gambar Anda
              fit: BoxFit
                  .cover, // Menyesuaikan gambar agar sesuai dengan container
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 100,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    iconSize: 30,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 50,
                  child: Center(
                    child: Text(
                      "Verification",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 80),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    "Don't worry.",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    "Enter your email and we'll send you a verification code to reset your password.",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Enter your email',
                      prefixIcon: Icon(Icons.email_outlined),
                      hintStyle: GoogleFonts.poppins(
                        textStyle: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: BorderSide(
                          color: const Color.fromRGBO(
                              158, 179, 132, 5), // Ganti warna sesuai keinginan
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: BorderSide(
                          color: const Color.fromRGBO(206, 222, 189,
                              5), // Warna saat fokus (bisa diganti)
                        ),
                      ),
                    ),
                    cursorColor: const Color.fromRGBO(206, 222, 189, 5),
                  ),
                ),
                SizedBox(height: 170),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/reset_password');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromRGBO(
                          158, 179, 132, 5), // Warna latar belakang tombol
                      onPrimary: Colors.black, // Warna teks
                      padding: EdgeInsets.symmetric(
                          horizontal: 140, vertical: 10), // Tambahi padding
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(4), // Ubah radius border
                      ),
                    ),
                    child: Text(
                      'Send',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 14, // Ubah ukuran teks
                          fontWeight: FontWeight.w500, // Tambahi ketebalan teks
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ResetPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'assets/background_forgot_password.png'), // Ganti dengan path gambar Anda
              fit: BoxFit
                  .cover, // Menyesuaikan gambar agar sesuai dengan container
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 100,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    iconSize: 30,
                    onPressed: () {
                      Navigator.pop(context, '/');
                    },
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 50,
                  child: Center(
                    child: Text(
                      "Reset Password",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 50),
                Center(
                  child: Text(
                    'Create New Password',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: Text(
                    'Your new password must be different from previously used passwords.',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Password',
                      prefixIcon: Icon(Icons.lock_outline_rounded),
                      hintStyle: GoogleFonts.poppins(
                        textStyle: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: BorderSide(
                          color: const Color.fromRGBO(
                              158, 179, 132, 5), // Ganti warna sesuai keinginan
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: BorderSide(
                          color: const Color.fromRGBO(206, 222, 189,
                              5), // Warna saat fokus (bisa diganti)
                        ),
                      ),
                    ),
                    cursorColor: const Color.fromRGBO(206, 222, 189, 5),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Confirm Password',
                      prefixIcon: Icon(Icons.lock_outline_rounded),
                      hintStyle: GoogleFonts.poppins(
                        textStyle: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: BorderSide(
                          color: const Color.fromRGBO(
                              158, 179, 132, 5), // Ganti warna sesuai keinginan
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: BorderSide(
                          color: const Color.fromRGBO(206, 222, 189,
                              5), // Warna saat fokus (bisa diganti)
                        ),
                      ),
                    ),
                    cursorColor: const Color.fromRGBO(206, 222, 189, 5),
                  ),
                ),
                SizedBox(height: 100),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/reset_password_success');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromRGBO(
                          158, 179, 132, 5), // Warna latar belakang tombol
                      onPrimary: Colors.black, // Warna teks
                      padding: EdgeInsets.symmetric(
                          horizontal: 135, vertical: 10), // Tambahi padding
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(4), // Ubah radius border
                      ),
                    ),
                    child: Text(
                      'Create',
                      style: TextStyle(
                        fontSize: 14, // Ubah ukuran teks
                        fontWeight: FontWeight.w500, // Tambahi ketebalan teks
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ResetPasswordSuccessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background_forgot_password.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 150),
              Center(
                child: Text(
                  "Reset Password",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Image.asset(
                  'assets/success.png',
                  width: 200,
                  height: 200,
                ),
              ),
              SizedBox(height: 15),
              Center(
                child: Text(
                  'Password Updated',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: Center(
                  child: Text(
                    'Your password has been updated.',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(height: 100),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromRGBO(
                        158, 179, 132, 5), // Warna latar belakang tombol
                    onPrimary: Colors.black, // Warna teks
                    padding: EdgeInsets.symmetric(
                        horizontal: 135, vertical: 10), // Tambahi padding
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(4), // Ubah radius border
                    ),
                  ),
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      fontSize: 14, // Ubah ukuran teks
                      fontWeight: FontWeight.w500, // Tambahi ketebalan teks
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
