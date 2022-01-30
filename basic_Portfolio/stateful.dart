body: Padding(
        padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/moin.jpg'),
                  radius: 55.0,
                ),
              ),
              Text(
                'Name: ',
                style: GoogleFonts.josefinSans(textStyle: TextStyle(color: Colors.white),fontSize: 22,fontWeight: FontWeight.bold , letterSpacing: 2,
                ),
              ),
              Text(
                'Mohammed Moinuddin',
                style: GoogleFonts.exo2(textStyle: TextStyle(color: Colors.amberAccent),fontSize: 22 ,fontWeight: FontWeight.bold , letterSpacing: 2,),
              ),
              SizedBox(height: 15),
              Text(
                'Looking for:',
                style: GoogleFonts.josefinSans(textStyle: TextStyle(color: Colors.white),fontSize: 22,fontWeight: FontWeight.bold , letterSpacing: 2,
                ),
              ),
              Text(
                'A fresher role across growing IT companies to give my career a kickstart',
                style: GoogleFonts.exo2(textStyle: TextStyle(color: Colors.amberAccent),fontSize: 20 ,fontStyle: FontStyle.italic, letterSpacing: 2,),
              ),
              SizedBox(height: 15),
              Text(
                'Im good at:',
                style: GoogleFonts.josefinSans(textStyle: TextStyle(color: Colors.white),fontSize: 22,fontWeight: FontWeight.bold , letterSpacing: 2,
                ),
              ),
              Image(image: AssetImage('assets/good_at.png'),),
              SizedBox(height: 30),
              Row(
                children: [
                  Icon(Icons.email_rounded, color: Colors.tealAccent),
                  SizedBox(width: 5),
                  Text('moinuddin9777@gmail.com', style: GoogleFonts.exo2(textStyle: TextStyle(color: Colors.amberAccent),fontSize: 15 ,fontWeight: FontWeight.bold , letterSpacing: 2,),),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.phone_android, color: Colors.tealAccent),
                  SizedBox(width: 5),
                  Text('+919618351406', style: GoogleFonts.exo2(textStyle: TextStyle(color: Colors.amberAccent),fontSize: 15 ,fontWeight: FontWeight.bold , letterSpacing: 2,),),
                ],
              ),
              Row(
                children: [
                  Icon(CommunityMaterialIcons.github, color: Colors.tealAccent),
                  SizedBox(width: 5),
                  Text('Moinuddin9777', style: GoogleFonts.exo2(textStyle: TextStyle(color: Colors.amberAccent),fontSize: 15 ,fontWeight: FontWeight.bold , letterSpacing: 2,),),
                ],
              ),
            ]
          ),
        ),
      ),
