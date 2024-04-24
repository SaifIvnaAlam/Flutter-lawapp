import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  const InputTextField({
    super.key,
    required TextEditingController controller,
  }) : _controller = controller;

  final TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: TextFormField(
          controller: _controller,
          maxLength: 10000,
          maxLines: null,
          onTapOutside: (pointerDownEvent) =>
              FocusManager.instance.primaryFocus?.unfocus(),
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
          decoration: const InputDecoration(
            counterText: "",
            fillColor: Color.fromARGB(255, 226, 223, 223),
            filled: true,
            border: InputBorder.none,
            hintText: 'Message',
            hintStyle: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              letterSpacing: 1.3,
            ),
          ),
        ),
      ),
    );
  }
}
