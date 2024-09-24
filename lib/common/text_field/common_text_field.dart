import 'package:adventure_planner/utils/constants/common_colors.dart';
import 'package:adventure_planner/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CommonTextField extends StatefulWidget {
  const CommonTextField({
    required this.controller,
    required this.labelText,
    this.prefixIcon,
    super.key,
    this.maxLines,
    this.minLines,
    this.height,
    this.keyboardType,
    this.inputFormatters,
    this.maxLength,
  });

  final TextEditingController controller;
  final String labelText;
  final Widget? prefixIcon;
  final int? maxLines;
  final int? minLines;
  final double? height;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLength;

  @override
  State<CommonTextField> createState() => _CommonTextFieldState();
}

class _CommonTextFieldState extends State<CommonTextField> {
  int _currentTextLength = 0;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_updateTextLength);
  }

  @override
  void dispose() {
    widget.controller.removeListener(_updateTextLength);
    super.dispose();
  }

  void _updateTextLength() {
    setState(() {
      _currentTextLength = widget.controller.text.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return widget.height != null
        ? SizedBox(
            height: widget.height,
            child: _buildTextField(),
          )
        : _buildTextField();
  }

  Widget _buildTextField() {
    return TextFormField(
      cursorColor: CommonColors.neutrals2,
      style: AppTextStyle.caption.copyWith(
        color: CommonColors.neutrals2,
      ),
      onChanged: (value) {
        setState(() {
          _currentTextLength = value.length;
        });
      },
      maxLength: widget.maxLength,
      controller: widget.controller,
      inputFormatters: widget.inputFormatters,
      keyboardType: widget.keyboardType,
      maxLines: widget.maxLines,
      minLines: widget.minLines,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        counterText: widget.maxLength != null ? '$_currentTextLength/${widget.maxLength}' : null,
        counterStyle: widget.maxLength != null && _currentTextLength == widget.maxLength
            ? const TextStyle(color: CommonColors.neutrals2)
            : const TextStyle(color: CommonColors.neutrals2),
        contentPadding: EdgeInsets.only(
          left: 10,
        ),
        labelText: widget.labelText,
        alignLabelWithHint: true,
        labelStyle: AppTextStyle.caption.copyWith(
          color: CommonColors.neutrals2,
        ),
      ),
    );
  }
}
