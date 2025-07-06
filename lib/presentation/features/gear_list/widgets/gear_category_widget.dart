import 'package:flutter/material.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/constants/app_constants.dart';

class GearCategoryWidget extends StatefulWidget {
  final String categoryTitle;
  final String categoryIcon;
  final List<Widget> gearItems;
  final bool initiallyExpanded;

  const GearCategoryWidget({
    super.key,
    required this.categoryTitle,
    required this.categoryIcon,
    required this.gearItems,
    this.initiallyExpanded = true,
  });

  @override
  State<GearCategoryWidget> createState() => _GearCategoryWidgetState();
}

class _GearCategoryWidgetState extends State<GearCategoryWidget>
    with SingleTickerProviderStateMixin {
  late bool _isExpanded;
  late AnimationController _animationController;
  late Animation<double> _expandAnimation;

  @override
  void initState() {
    super.initState();
    _isExpanded = widget.initiallyExpanded;
    
    _animationController = AnimationController(
      duration: AppConstants.animationDurationMedium,
      vsync: this,
    );
    
    _expandAnimation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );
    
    if (_isExpanded) {
      _animationController.value = 1.0;
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _toggleExpanded() {
    setState(() {
      _isExpanded = !_isExpanded;
      if (_isExpanded) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: AppConstants.paddingMedium),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
        border: Border.all(
          color: AppTheme.textLight.withValues(alpha: 0.2),
          width: 1,
        ),
      ),
      child: Column(
        children: [
          // 分類標題區域
          InkWell(
            onTap: _toggleExpanded,
            borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
            child: Container(
              padding: const EdgeInsets.all(AppConstants.paddingMedium),
              child: Row(
                children: [
                  // 分類圖標
                  Text(
                    widget.categoryIcon,
                    style: const TextStyle(fontSize: 20),
                  ),
                  
                  const SizedBox(width: AppConstants.paddingSmall),
                  
                  // 分類標題
                  Expanded(
                    child: Text(
                      widget.categoryTitle,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppTheme.textPrimary,
                      ),
                    ),
                  ),
                  
                  // 展開/收合圖標
                  AnimatedRotation(
                    turns: _isExpanded ? 0.5 : 0.0,
                    duration: AppConstants.animationDurationMedium,
                    child: const Icon(
                      Icons.keyboard_arrow_down,
                      color: AppTheme.textSecondary,
                    ),
                  ),
                ],
              ),
            ),
          ),
          
          // 裝備項目列表
          SizeTransition(
            sizeFactor: _expandAnimation,
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Color(0xFFe0e0e0),
                    width: 1,
                  ),
                ),
              ),
              child: Column(
                children: widget.gearItems,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
