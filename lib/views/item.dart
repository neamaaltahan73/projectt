import 'package:flutter/material.dart';

void main() => runApp(
  const MaterialApp(home: ItemDetailsPage(), debugShowCheckedModeBanner: false),
);

class ItemDetailsPage extends StatelessWidget {
  const ItemDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFF2E8CA4);
    const titleStyle = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    );
    const subtitleStyle = TextStyle(fontSize: 14, color: Colors.grey);
    const priceStyle = TextStyle(
      color: Colors.red,
      fontSize: 22,
      fontWeight: FontWeight.bold,
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  "assets/el.png",
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.fill,
                ),

                Positioned(
                  top: 50,
                  left: 16,
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 28,
                    ),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 90, left: 16, right: 16),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Stack(
                          children: [
                            Center(
                              child: Image.asset(
                                "assets/n.png",
                                height: 190,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ],
                        ),
                      ),

                      Expanded(
                        child: Column(
                          children: [
                            _buildSmallImage("assets/n.png", primaryColor),
                            _buildSmallImage("assets/n.png", primaryColor),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text("480da / 1Kg", style: priceStyle),
                      const SizedBox(width: 12),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blue[50],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text(
                          "52% OFF ends in 3 days",
                          style: TextStyle(
                            fontSize: 11,
                            color: primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),

                  const Text(
                    "Bell Pepper Nutella karmen lopu Karmen mon",
                    style: titleStyle,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Text("Quantity : 1Kg ", style: subtitleStyle),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: primaryColor.withValues(alpha: 0.7),
                        size: 18,
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    "Categories : solip , kolimatrio , hellop , mafirat , mop lopiranto",
                    style: subtitleStyle,
                  ),
                  const SizedBox(height: 20),

                  GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    childAspectRatio: 2.3,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                    children: [
                      _buildInfoCard(
                        "80 kcal",
                        "100 Gram",
                        Icons.home_work,
                        Colors.redAccent,
                        primaryColor,
                      ),
                      _buildInfoCard(
                        "100%",
                        "Organic",
                        Icons.eco,
                        Colors.green,
                        primaryColor,
                      ),
                      _buildInfoCard(
                        "1 Year",
                        "Expiration",
                        Icons.calendar_today,
                        Colors.orange,
                        primaryColor,
                      ),
                      _buildInfoCard(
                        "4.8 (256)",
                        "Reviews",
                        Icons.star,
                        Colors.amber,
                        primaryColor,
                      ),
                    ],
                  ),
                  const SizedBox(height: 100),
                ],
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        decoration: BoxDecoration(
          color: Colors.blue[50]!.withValues(alpha: 0.5),
          borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
        ),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Total price",
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                  Text(
                    "800.00da",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.remove,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        "1pcs",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSmallImage(String imagePath, Color borderColor) => Container(
    margin: const EdgeInsets.all(6),
    padding: const EdgeInsets.all(2),
    decoration: BoxDecoration(
      border: Border.all(color: borderColor, width: 1.5),
      borderRadius: BorderRadius.circular(16),
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(14),
      child: Image.asset(imagePath, height: 65, width: 65, fit: BoxFit.cover),
    ),
  );

  Widget _buildInfoCard(
    String title,
    String sub,
    IconData icon,
    Color iconColor,
    Color borderColor,
  ) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: borderColor.withValues(alpha: 0.3), width: 1.5),
      borderRadius: BorderRadius.circular(16),
    ),
    child: Row(
      children: [
        Icon(icon, size: 28, color: iconColor),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                sub,
                style: const TextStyle(fontSize: 11, color: Colors.grey),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
