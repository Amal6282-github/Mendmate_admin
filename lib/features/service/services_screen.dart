import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/web.dart';
import 'package:mendmate_homepage/custom_widgets/custom_button.dart';
import 'package:mendmate_homepage/features/service/add_edit_category.dart';
import 'package:mendmate_homepage/features/service/service_card.dart';

import '../../custom_widgets/custom_alert_dialog.dart';
import '../../util/check_login.dart';
import 'categories_bloc/categories_bloc.dart';

class Servicesscreen extends StatefulWidget {
  const Servicesscreen({super.key});

  @override
  State<Servicesscreen> createState() => _ServicesscreenState();
}

class _ServicesscreenState extends State<Servicesscreen> {
  final CategoriesBloc _categoriesBloc = CategoriesBloc();

  Map<String, dynamic> params = {
    'query': null,
  };

  List<Map> _categories = [];

  @override
  void initState() {
    checkLogin(context);
    getCategories();
    super.initState();
  }

  void getCategories() {
    _categoriesBloc.add(GetAllCategoriesEvent(params: params));
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _categoriesBloc,
      child: BlocConsumer<CategoriesBloc, CategoriesState>(
        listener: (context, state) {
          if (state is CategoriesFailureState) {
            showDialog(
              context: context,
              builder: (context) => CustomAlertDialog(
                title: 'Failure',
                description: state.message,
                primaryButton: 'Try Again',
                onPrimaryPressed: () {
                  getCategories();
                  Navigator.pop(context);
                },
              ),
            );
          } else if (state is CategoriesGetSuccessState) {
            _categories = state.categories;
            Logger().w(_categories);
            setState(() {});
          } else if (state is CategoriesSuccessState) {
            getCategories();
          }
        },
        builder: (context, state) {
          return Container(
            color: const Color(0xFFF3F4F6),
            child: Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Services",
                            style: GoogleFonts.roboto(
                                fontSize: 30.0, fontWeight: FontWeight.bold),
                          ),
                          const Expanded(child: SizedBox()),
                          Center(
                            child: Row(
                              children: [
                                CustomButton(
                                  label: 'Add service',
                                  iconData: Icons.add_circle_outline,
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          return BlocProvider.value(
                                            value: _categoriesBloc,
                                            child: AddEditCategory(),
                                          );
                                        });
                                  },
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      if (state is CategoriesLoadingState)
                        const Center(child: CircularProgressIndicator()),
                      if (state is CategoriesGetSuccessState &&
                          _categories.isEmpty)
                        const Center(child: Text('No Categories Found')),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Wrap(
                            children: List.generate(
                              _categories.length,
                              (index) {
                                return Servicecard(
                                  title: _categories[index]['name'],
                                  icon: Icons.add,
                                  img: NetworkImage(
                                      _categories[index]['image_url']),
                                  color: Colors.white,
                                  onEdit: () {
                                    showDialog(
                                      context: context,
                                      builder: (context) => BlocProvider.value(
                                        value: _categoriesBloc,
                                        child: AddEditCategory(
                                          categorieDetails: _categories[index],
                                        ),
                                      ),
                                    );
                                  },
                                  onDelete: () {
                                    showDialog(
                                      context: context,
                                      builder: (context) => CustomAlertDialog(
                                        title: 'Delete Categorie?',
                                        description:
                                            'Deletion will fail if there are records under this categorie',
                                        primaryButton: 'Delete',
                                        onPrimaryPressed: () {
                                          _categoriesBloc.add(
                                            DeleteCategorieEvent(
                                              categorieId: _categories[index]
                                                  ['id'],
                                            ),
                                          );
                                          Navigator.pop(context);
                                        },
                                        secondaryButton: 'Cancel',
                                      ),
                                    );
                                  },
                                );
                              },
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
        },
      ),
    );
  }
}
