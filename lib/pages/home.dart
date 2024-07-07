import 'package:flutter/material.dart';

class HalamanUtama extends StatefulWidget {
  @override
  _HalamanUtamaState createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
  String selectedCategory = 'Semua'; // Default category
  final List<ItemProduk> produkList = [
    ItemProduk(
      name: 'Daihatsu Rocky',
      price: '\Rp.100000000',
      imageUrl:
          'https://th.bing.com/th/id/OIP.FTZ0zyZMyFP3y6nkeg2STwAAAA?rs=1&pid=ImgDetMain',
      category: 'Daihatsu',
    ),
    ItemProduk(
      name: 'Daihatsu Sirion',
      price: '\Rp.100000000',
      imageUrl:
          'https://th.bing.com/th/id/R.28ce845a9ee5b884410771c6475b64ab?rik=1PP1G15cRw3TXQ&riu=http%3a%2f%2fsrv1.portal.p-cd.net%2f850p%2f2017%2f08%2f25%2f168333-1503650900-459898.png&ehk=CUxi0Qd%2fuREZQnAx4A4vKOA1qHYiB6dsBoMC1RZDrlY%3d&risl=&pid=ImgRaw&r=0',
      category: 'Daihatsu',
    ),
    ItemProduk(
      name: 'Daihatsu Terios',
      price: '\Rp.100000000',
      imageUrl:
          'https://th.bing.com/th/id/R.d0ac81b880acdeb01a01988b380ad9db?rik=KutMJKxF73ZeNA&riu=http%3a%2f%2fwww.argus-de-tahiti.com%2fwp-content%2fuploads%2f2012%2f12%2fDaihatsu_TERIOS-TX_adventure.jpg&ehk=kYBPcyBjPMTxF5XyzUBAonj70y1QyDYzbLjYyIvvqmE%3d&risl=&pid=ImgRaw&r=0',
      category: 'Daihatsu',
    ),
    ItemProduk(
      name: 'Honda Jazz',
      price: '\Rp.80000000',
      imageUrl:
          'https://th.bing.com/th/id/R.e53c215242841fd20d4a38dcb54df1d4?rik=qGIrJe7e0GV14A&riu=http%3a%2f%2f1.bp.blogspot.com%2f-J5odtAw6I3o%2fUwtz9e-corI%2fAAAAAAAAHrU%2fCeJqaddOj3Y%2fs1600%2fDaftar%2bHarga%2bMobil%2bHonda%2bJazz%2bTerbaru.jpg&ehk=RMmZriV7zyEzajBlA18aAPIykDOQpB3LvUcVzlgHRCA%3d&risl=&pid=ImgRaw&r=0',
      category: 'Honda',
    ),
    ItemProduk(
      name: 'Honda Civic',
      price: '\Rp.500000000',
      imageUrl:
          'https://th.bing.com/th/id/OIP.F8xfVzK2UD_RFuq7TYfWzQAAAA?rs=1&pid=ImgDetMain',
      category: 'Honda',
    ),
    ItemProduk(
      name: 'Honda Brio',
      price: '\Rp.60000000',
      imageUrl:
          'https://th.bing.com/th/id/OIP.GltnmoOphsLeO_wTmXvwkgHaE8?rs=1&pid=ImgDetMain',
      category: 'Honda',
    ),
    ItemProduk(
      name: 'Mitsubishi Lancer',
      price: '\Rp.12000000',
      imageUrl:
          'https://th.bing.com/th/id/R.efef84a400e0260f14ee79f20616f991?rik=AAdkF3OWwubExQ&riu=http%3a%2f%2fbetterparts.org%2fimages%2fmitsubishi-lancer-01.jpg&ehk=XHqniUZpeWB2wnMNYfqHCtswJRzjT30hy0eh67W1nYI%3d&risl=&pid=ImgRaw&r=0',
      category: 'Mitsubishi',
    ),
    ItemProduk(
      name: 'Mitsubishi Xpander',
      price: '\RP.30000000',
      imageUrl:
          'https://th.bing.com/th/id/OIP.6GWvZ-T5tYVzyMItKv4fDgHaFj?w=947&h=710&rs=1&pid=ImgDetMain',
      category: 'Mitsubishi',
    ),
    ItemProduk(
      name: 'Pajero Sport',
      price: '\Rp.40000000',
      imageUrl:
          'https://th.bing.com/th/id/OIP.rmQZv6g0dqd3DbRCrySVpwAAAA?rs=1&pid=ImgDetMain',
      category: 'Mitsubishi',
    ),
    ItemProduk(
      name: 'Suzuki Jimmy',
      price: '\Rp.70000000',
      imageUrl:
          'https://th.bing.com/th/id/OIP.ocR32ZoxfJ0aT7SDj8tBJwHaE8?rs=1&pid=ImgDetMain',
      category: 'Suzuki',
    ),
    ItemProduk(
      name: 'Suzuki Grand',
      price: '\Rp.9000000',
      imageUrl:
          'https://th.bing.com/th/id/R.69f3b17f77ddd8ced8d42f91211bd9b1?rik=Z626JtnmzllUoQ&riu=http%3a%2f%2fdetailmobil.com%2fwp-content%2fuploads%2f2015%2f06%2fspesifikasi-mobil-suzuki-grand-vitara.jpg&ehk=RNLuOu%2bwCFK26zcHBjG7aZ22lQQBldNTMuTjH3VPyw4%3d&risl=&pid=ImgRaw&r=0&sres=1&sresct=1',
      category: 'Suzuki',
    ),
    ItemProduk(
      name: 'Suzuki Ertiga',
      price: '\Rp.1000000',
      imageUrl:
          'https://th.bing.com/th/id/R.1429f6ba9926ef8ff2e23bcf5bf1b6bc?rik=vQQiMJhmyeevmQ&riu=http%3a%2f%2fcdni.autocarindia.com%2fExtraImages%2f20180818123259_Ertiga-front-stati.jpg&ehk=AUsZr0dOcfCrjm2TkmQtDptkOPSFWTfEjLHOtl4DgNw%3d&risl=&pid=ImgRaw&r=0',
      category: 'Suzuki',
    ),
  ];

  List<ItemProduk> get filteredProdukList {
    if (selectedCategory == 'Semua') {
      return produkList;
    } else {
      return produkList
          .where((produk) => produk.category == selectedCategory)
          .toList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            // Icon(Icons.menu),
            SizedBox(width: 10),
            Text('AWAN MOBIL'),
            Spacer(),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(
                    context: context,
                    delegate: CustomSearchDelegate(produkList));
              },
            ),
            // Icon(Icons.shopping_cart),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Tombol Kategori
          Container(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                TombolKategori(
                    title: 'Semua', onTap: () => filterByCategory('Semua')),
                TombolKategori(
                    title: 'Daihatsu',
                    onTap: () => filterByCategory('Daihatsu')),
                TombolKategori(
                    title: 'Honda', onTap: () => filterByCategory('Honda')),
                TombolKategori(
                    title: 'Mitsubishi',
                    onTap: () => filterByCategory('Mitsubishi')),
                TombolKategori(
                    title: 'Suzuki', onTap: () => filterByCategory('Suzuki')),
              ],
            ),
          ),
          // Bagian Highlight
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Best Seller!",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: filteredProdukList.map((produk) {
                return ItemProduk(
                  name: produk.name,
                  price: produk.price,
                  imageUrl: produk.imageUrl,
                  category: produk.category,
                );
              }).toList(),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Kategori',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Cari',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifikasi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
      ),
    );
  }

  void filterByCategory(String category) {
    setState(() {
      selectedCategory = category;
    });
  }
}

class TombolKategori extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  TombolKategori({required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ElevatedButton(
        onPressed: onTap,
        child: Text(title),
      ),
    );
  }
}

class ItemProduk extends StatelessWidget {
  final String name;
  final String price;
  final String imageUrl;
  final String category;

  ItemProduk(
      {required this.name,
      required this.price,
      required this.imageUrl,
      required this.category});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.network(imageUrl),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              name,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Text(price),
        ],
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  final List<ItemProduk> produkList;

  CustomSearchDelegate(this.produkList);

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final List<ItemProduk> searchResults = produkList
        .where(
            (produk) => produk.name.toLowerCase().contains(query.toLowerCase()))
        .toList();
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: searchResults.map((result) {
        return ItemProduk(
          name: result.name,
          price: result.price,
          imageUrl: result.imageUrl,
          category: result.category,
        );
      }).toList(),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final List<ItemProduk> searchResults = produkList
        .where(
            (produk) => produk.name.toLowerCase().contains(query.toLowerCase()))
        .toList();
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: searchResults.map((result) {
        return ItemProduk(
          name: result.name,
          price: result.price,
          imageUrl: result.imageUrl,
          category: result.category,
        );
      }).toList(),
    );
  }
}
