import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/news_list_builder.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.orange),
        scrolledUnderElevation: 0,
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          category.categoryName,
          style: GoogleFonts.jost(
            fontSize: 27,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          NewsListBuilder(
            category: category.categoryName,
          ),
        ],
      ),
    );
  }
}
