import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildProfileHeader(),
          _BuildProfileName(),
          _NamePara(),
          _Homework_List(),
          _Bottom_Buttons(),
        ],
      ),
    );
  }

  Widget _buildProfileHeader() {
    return Stack(
      children: <Widget>[
        Center(
          child: SizedBox(
            height: 235,
            width: double.infinity,
            child: Stack(
              children: [
                _buildProfileCard(),
                _buildProfileImage(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildProfileCard() {
    return Positioned(
      child: Center(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.grey.shade300,
              image: const DecorationImage(
                image: AssetImage(
                  'assets/images/background_banner.jpeg',
                ),
                fit: BoxFit.cover,
              )),
          width: 300,
          height: 150,
          child: Column(
            children: [
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () {
                        // Add your back button functionality here
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  const Text(
                    "Profile",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                    child: IconButton(
                      icon: const Icon(Icons.more_horiz),
                      onPressed: () {
                        // Add your three dots button functionality here
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileImage() {
    return Positioned(
      bottom: 0,
      left: 120,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(90),
          border: Border.all(color: Colors.white, width: 2),
        ),
        height: 120,
        width: 120,
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(90),
              image: const DecorationImage(
                image: AssetImage('assets/images/1.png'),
              ),
            ),
            width: 80,
            height: 80,
          ),
        ),
      ),
    );
  }
}

Widget _BuildProfileName() {
  return Column(
    children: [
      const SizedBox(
        height: 30,
        width: 300,
        child: Center(
          child: Text(
            'Andrew Tate',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ),
      SizedBox(
        height: 40,
        width: 250,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildInfoItem(Icons.location_on, 'Venice,italy'),
            _buildInfoItem(Icons.cake, 'Age 25'),
            _buildButton('Regular', const Color.fromRGBO(251, 230, 228, 1)),
          ],
        ),
      ),
    ],
  );
}

Widget _buildInfoItem(IconData icon, String value) {
  return Row(
    children: [
      Container(
          padding: const EdgeInsets.all(5),
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.grey.shade700,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Icon(
            icon,
            size: 9,
            color: Colors.white,
          )), // Adjust the size of the icon

      Text(
        value,
        style: const TextStyle(fontSize: 9), // Adjust the font size
      ),
    ],
  );
}

Widget _buildButton(String text, Color bgColor) {
  return SizedBox(
    height: 23,
    width: 80,
    child: ElevatedButton(
      onPressed: () {
        // Add your button's functionality here
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
      ),
      child: Text(
        text,
        style: const TextStyle(
            fontSize: 9, color: Colors.red, fontWeight: FontWeight.w700),
      ),
    ),
  );
}

Widget _NamePara() {
  return const SizedBox(
    height: 200,
    width: 300,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 30,
        ),
        Text(
          'Andrew Notes',
          style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "A Flutter developer is a skilled professional who uses the Flutter framework, developed by Google. ",
          style: TextStyle(fontSize: 12),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'To build cross-platform mobile applications for iOS, Android, and web platforms. They design and implement user interfaces, manage app logic etc.',
          style: TextStyle(fontSize: 12),
        ),
      ],
    ),
  );
}

Widget _Homework_List() {
  return SizedBox(
    height: 170,
    width: double.infinity,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '      Homework',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 130,
          width: double.infinity,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(
                  width: 32,
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                            height: 50,
                            width: 50,
                            child: Image.asset(
                              'assets/images/download_sign.jpeg',
                            )),
                        const Text(
                          'English_speaking',
                          style: TextStyle(
                            fontSize: 9,
                          ),
                        ),
                        const Text(
                          'meeting.docx',
                          style: TextStyle(
                            fontSize: 9,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                            height: 50,
                            width: 50,
                            child: Image.asset(
                              'assets/images/download_sign.jpeg',
                            )),
                        const Text(
                          'German_writing',
                          style: TextStyle(
                            fontSize: 9,
                          ),
                        ),
                        const Text(
                          'Notes.docx',
                          style: TextStyle(
                            fontSize: 9,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                            height: 50,
                            width: 50,
                            child: Image.asset(
                              'assets/images/download_sign.jpeg',
                            )),
                        const Text(
                          'German_writing',
                          style: TextStyle(
                            fontSize: 9,
                          ),
                        ),
                        const Text(
                          'notes.docx',
                          style: TextStyle(
                            fontSize: 9,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                            height: 50,
                            width: 50,
                            child: Image.asset(
                              'assets/images/download_sign.jpeg',
                            )),
                        const Text(
                          'English_speaking',
                          style: TextStyle(
                            fontSize: 9,
                          ),
                        ),
                        const Text(
                          'meeting.docx',
                          style: TextStyle(
                            fontSize: 9,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _Bottom_Buttons() {
  return Container(
    height: 81,
    width: double.infinity,
    decoration: BoxDecoration(
        border: BorderDirectional(
      top: BorderSide(color: Colors.grey),
    )),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 50,
          width: 120,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(15)),
          child: Row(
            children: [
              SizedBox(
                width: 5,
              ),
              Container(
                  padding: EdgeInsets.all(2),
                  height: 30,
                  width: 30,
                  child: Image.asset('assets/images/premium_badge.jpeg')),
              Text(
                'Premium',
                style: TextStyle(
                    fontSize: 17,
                    color: Color.fromARGB(255, 121, 37, 246),
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Container(
          height: 50,
          width: 180,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(15)),
          child: Center(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blue,
              ),
              child: Center(
                child: Text(
                  'Get Detail',
                  style: TextStyle(
                      fontSize: 19,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
