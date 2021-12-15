import 'package:awesome_contact_app/contact_details_view.dart';
import 'package:awesome_contact_app/contact_model.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  final ScrollController _scrollController = ScrollController();

  final List<Map<String, String>> data = [
    {
      "name": "Gregory Kelly",
      "phone": "717-6679",
      "country": "Mexico",
      "email": "augue.porttitor.interdum@yahoo.couk",
      "region": "Bắc Giang"
    },
    {
      "name": "Jonas Vazquez",
      "phone": "844-4764",
      "country": "Russian Federation",
      "email": "molestie.orci.tincidunt@aol.com",
      "region": "Maule"
    },
    {
      "name": "Whilemina Cooley",
      "phone": "391-6171",
      "country": "China",
      "email": "fusce.aliquam@aol.org",
      "region": "Pará"
    },
    {
      "name": "Joseph Bonner",
      "phone": "1-764-428-7082",
      "country": "Vietnam",
      "email": "ut.mi@icloud.ca",
      "region": "Utrecht"
    },
    {
      "name": "Odette Ruiz",
      "phone": "1-643-521-3373",
      "country": "Vietnam",
      "email": "nec.urna.et@outlook.ca",
      "region": "Alsace"
    },
    {
      "name": "Jerry Hale",
      "phone": "555-4321",
      "country": "China",
      "email": "sodales.nisi.magna@icloud.couk",
      "region": "Jalisco"
    },
    {
      "name": "Tara Benson",
      "phone": "1-893-548-2128",
      "country": "Turkey",
      "email": "massa.rutrum.magna@yahoo.couk",
      "region": "Magadan Oblast"
    },
    {
      "name": "Buckminster Kinney",
      "phone": "435-3210",
      "country": "China",
      "email": "libero.et.tristique@outlook.ca",
      "region": "North Island"
    },
    {
      "name": "Winifred Shepard",
      "phone": "373-7266",
      "country": "Vietnam",
      "email": "vulputate.risus@outlook.edu",
      "region": "Huádōng"
    },
    {
      "name": "Hanae Romero",
      "phone": "1-661-661-8465",
      "country": "India",
      "email": "auctor@icloud.org",
      "region": "Alsace"
    },
    {
      "name": "Sasha Faulkner",
      "phone": "718-1177",
      "country": "Vietnam",
      "email": "tempor.erat.neque@yahoo.ca",
      "region": "Nuevo León"
    },
    {
      "name": "Jeanette Witt",
      "phone": "1-878-542-2588",
      "country": "Poland",
      "email": "vitae.sodales.at@yahoo.com",
      "region": "São Paulo"
    },
    {
      "name": "Jamalia Horne",
      "phone": "538-5675",
      "country": "United Kingdom",
      "email": "dictum@outlook.net",
      "region": "Novosibirsk Oblast"
    },
    {
      "name": "Damon Bird",
      "phone": "133-1643",
      "country": "Germany",
      "email": "purus.mauris@icloud.org",
      "region": "Puebla"
    },
    {
      "name": "Malik Steele",
      "phone": "694-5261",
      "country": "Ireland",
      "email": "ipsum@google.com",
      "region": "Lombardia"
    },
    {
      "name": "Lareina Pierce",
      "phone": "1-432-217-0512",
      "country": "Germany",
      "email": "praesent@yahoo.edu",
      "region": "Luik"
    },
    {
      "name": "Beatrice Ward",
      "phone": "373-7565",
      "country": "United Kingdom",
      "email": "interdum.ligula.eu@outlook.org",
      "region": "West Papua"
    },
    {
      "name": "Leah Wyatt",
      "phone": "1-563-741-1585",
      "country": "Russian Federation",
      "email": "phasellus.ornare.fusce@hotmail.com",
      "region": "Friesland"
    },
    {
      "name": "Yetta Dawson",
      "phone": "609-0166",
      "country": "South Korea",
      "email": "nunc@hotmail.org",
      "region": "Rheinland-Pfalz"
    },
    {
      "name": "Leandra Bass",
      "phone": "335-6756",
      "country": "Turkey",
      "email": "sodales.mauris@outlook.ca",
      "region": "Ulster"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'My Contacts',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Center(
              child: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('assets/1.jpg'),
              ),
            ),
          )
        ],
        elevation: 0,
        backgroundColor: Colors.white,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  hintText: 'Search by name or number',
                  prefixIcon: const Icon(Icons.search)),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          controller: _scrollController,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Recent',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
            ),
            ListView.separated(
                controller: _scrollController,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ContactDetailsView(
                            contact: Contact(
                                country: 'Ghana',
                                email: 'email_address@gmail.com',
                                name: 'Eric Asante',
                                phone: '+233 241 858 092',
                                region: 'Ashanti'));
                      }));
                    },
                    leading: const CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('assets/2.jpg'),
                    ),
                    title: const Text(
                      'Eric Asante',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    subtitle: const Text('+233 241 858 092'),
                    trailing: const IconButton(
                        onPressed: null, icon: Icon(Icons.more_horiz)),
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    indent: 25,
                    thickness: 2,
                  );
                },
                itemCount: 3),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Contacts',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
            ),
            GroupedListView<Map<String, String>, String>(
              shrinkWrap: true,
              elements: data,
              groupBy: (element) => element['name'].toString().substring(0, 1),
              groupSeparatorBuilder: (String groupByValue) => SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    groupByValue.substring(0, 1),
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                ),
              ),
              itemBuilder: (context, Map<String, String> element) {
                Contact contact = Contact.fromJson(element);
                return Column(
                  children: [
                    ListTile(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ContactDetailsView(contact: contact);
                        }));
                      },
                      leading: const CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/2.jpg'),
                      ),
                      title: Text(
                        '${element['name']}',
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      subtitle: Text('${element['phone']}'),
                      trailing: const IconButton(
                          onPressed: null, icon: Icon(Icons.more_horiz)),
                    ),
                    const Divider(
                      indent: 25,
                      thickness: 2,
                    )
                  ],
                );
              },
              itemComparator: (item1, item2) =>
                  item1['name']!.compareTo(item2['name']!), // optional
              useStickyGroupSeparators: true, // optional
              floatingHeader: true, // optional
              order: GroupedListOrder.ASC, // optional
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xff1A4ADA),
          onPressed: () {},
          child: const Icon(Icons.add)),
    );
  }
}
