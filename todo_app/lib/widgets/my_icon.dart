import 'package:flutter/material.dart';

class MyIcon extends StatelessWidget {
  final IconData? icon;
  final String? imageAsset; 
  final double size; 
  final Color? color; 
  final VoidCallback? onPressed; 

  // ignore: use_super_parameters
  const MyIcon({
    Key? key,
    this.icon, 
    this.imageAsset, 
    required this.size, 
    this.color,
    this.onPressed, 
  })  : assert(icon != null || imageAsset != null,
            'Either icon or imageAsset must be provided'),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: icon != null
          ? Icon(
            
              icon,
              size: size,
              color: color ?? Colors.black, 
            )
          : imageAsset != null
              ? ColorFiltered(
                  colorFilter: color != null
                      ? ColorFilter.mode(
                          color!, BlendMode.srcIn) 
                      : const ColorFilter.mode(Colors.transparent,
                          BlendMode.dst),
                  child: Image.asset(
                    imageAsset!,
                    width: size,
                    height: size,
                  ),
                )
              : const SizedBox(), 
    );
  }
}
