import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nomixe/common/domain/models/product/product_model.dart';
import 'package:nomixe/features/Products/presentation/providers/product_state_provider.dart';
import 'package:nomixe/features/Products/presentation/providers/state/product_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nomixe/features/Products/presentation/screens/alert_dialog.dart';
import 'package:nomixe/features/Products/presentation/screens/dragable_item.dart';
import 'package:nomixe/features/Products/presentation/screens/list_item_widget.dart';
import 'package:nomixe/common/theme/app_colors.dart';
import 'package:nomixe/common/theme/test_styles.dart';

@RoutePage()
class ProductsScreen extends ConsumerStatefulWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends ConsumerState<ProductsScreen> {
  final scrollController = ScrollController();
  bool isEditActive = false;
  final List<Product> selectedProduct = [];
  Timer? _debounce;
  int count = 0;

  @override
  void initState() {
    super.initState();
    scrollController.addListener(scrollControllerListener);
  }

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  void scrollControllerListener() {
    if (scrollController.position.maxScrollExtent == scrollController.offset) {
      final notifier = ref.read(productsNotifierProvider.notifier);

      notifier.fetchProducts();
    }
  }

  void refreshScrollControllerListener() {
    scrollController.removeListener(scrollControllerListener);
    scrollController.addListener(scrollControllerListener);
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(productsNotifierProvider);

    ref.listen(
      productsNotifierProvider.select((value) => value),
      ((ProductsState? previous, ProductsState product) {
        if (product.state == ProductsConcreteState.fetchedAllProducts) {
          if (product.message.isNotEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(product.message.toString())));
          }
        }
      }),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Products',
          style: AppTextStyles.bodyLg,
        ),
        centerTitle: true,
        leadingWidth: 60,
        leading: Center(
          child: InkWell(
            onTap: () {
              if (isEditActive) {
                isEditActive = !isEditActive;
              } else {
                isEditActive = true;
              }
              setState(() {});
            },
            child: Text(
              isEditActive ? 'Cancel' : 'Edit',
              style: AppTextStyles.bodyLg.copyWith(
                fontWeight: FontWeight.w400,
                color: AppColors.primary,
              ),
            ),
          ),
        ),
        actions: [
          Visibility(
            visible: isEditActive,
            child: InkWell(
              onTap: () {
                if (state.hasData) {
                  count = selectedProduct.length;
                  if (count != 0) {
                    DialogUtil.showDeleteDialog(
                      context: context,
                      confirmButtonText: 'Remove',
                      cancelButtonText: 'Cancel',
                      bodyText: 'Remove $count products?',
                      bodySubText: 'This action is irreversible and will permanently delete the product.',
                      onConfirm: () {
                        state.productList.removeWhere((product) => selectedProduct.contains(product));
                        selectedProduct.clear();
                        setState(() {});
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('$count products removed.', style: const TextStyle(color: AppColors.white, fontSize: 14.5)),
                            action: SnackBarAction(
                              label: 'Undo',
                              onPressed: () {
                                ScaffoldMessenger.of(context).hideCurrentSnackBar();
                              },
                            ),
                            duration: const Duration(seconds: 5),
                          ),
                        );
                        Navigator.pop(context);
                      },
                    );
                  }
                }
              },
              child: Text('Delete',
                  style: AppTextStyles.bodyLg.copyWith(
                    color: AppColors.primary,
                  )),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: state.state == ProductsConcreteState.loading
            ? const Center(child: CircularProgressIndicator())
            : state.hasData
                ? Column(
                    children: [
                      Expanded(
                        child: Scrollbar(
                          controller: scrollController,
                          child: ListView.separated(
                            separatorBuilder: (_, __) => const SizedBox(
                              height: 8.0,
                            ),
                            controller: scrollController,
                            itemCount: state.productList.length,
                            itemBuilder: (context, index) {
                              final product = state.productList[index];

                              // return ListItemWidget(product);
                              return DraggableItemTile(
                                  child: ListItemWidget(
                                    product,
                                    onTapCheck: (value) {
                                      if (value == true) {
                                        selectedProduct.add(product);
                                      } else {
                                        selectedProduct.remove(product);
                                      }
                                      setState(() {});
                                    },
                                    isChecked: selectedProduct.contains(product),
                                    showCheckBoxwithOverlay: isEditActive,
                                  ),
                                  addToDelete: () {
                                    selectedProduct.add(product);
                                  },
                                  onDeleteTap: () {
                                    state.productList.removeWhere((product) => selectedProduct.contains(product));
                                    selectedProduct.clear();
                                    setState(() {});
                                  });
                            },
                          ),
                        ),
                      ),
                      if (state.state == ProductsConcreteState.fetchingMore)
                        const Padding(
                          padding: EdgeInsets.only(bottom: 16.0),
                          child: CircularProgressIndicator(),
                        ),
                    ],
                  )
                : Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22.0),
                      child: Text(
                        state.message,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
      ),
    );
  }
}
