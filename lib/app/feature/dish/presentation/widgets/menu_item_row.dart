import 'package:flutter/material.dart';

import '../../../../../common/color_extension.dart';
import '../../../../../common/constants.dart';
import '../../../../../common/text_theme.dart';
import '../../../../../gen/assets.gen.dart';
import '../../data/model/dish_model.dart';

class MenuItemRow extends StatelessWidget {
  final Dish? dish;
  final VoidCallback onTap;
  const MenuItemRow({super.key, required this.dish, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              dish?.image,
              width: 90,
              height: 90,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${dish?.name}",
                style: tStyle.PrM(),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Image.asset(Assets.images.rate.path, width: 14, height: 14),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    "5",
                    style: tStyle.PrM(color: AppColorScheme.secondaryText),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Row(
                    children: [
                      Image.asset(Assets.images.locationPin.path,
                          width: 14, height: 14),
                      Text(
                        "1km",
                        style: tStyle.PrM(color: AppColorScheme.secondaryText),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Text(MoneyUtils.vndDong(dish?.price ?? 0), style: tStyle.PrS()),
            ],
          )
        ],
      ),
    );
  }
}
