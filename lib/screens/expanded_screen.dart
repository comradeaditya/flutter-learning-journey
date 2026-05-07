import 'package:flutter/material.dart';

class ExpandedScreen extends StatelessWidget{
  const ExpandedScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(

      appBar: AppBar(
        title: const Text(
          "Expanded + Flexible Widget",
        ),
      ),

      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                //tells flutter- "take available remaining space"
                //flutter divides available Row space equally
                flex: 2,
                child: Container(
                  height: 100, 
                  color: Colors.red,
                  child: const Center(
                    child: Text(
                      "Flex 2",
                    ),
                  ),
                ),
              ),

              Expanded(
                flex: 1,
                child: Container(
                  height: 100, 
                  color: Colors.green,
                  child: const Center(
                    child: Text(
                      "Flex 1",
                    ),
                  ),
                ),
              ),

              Expanded(
                flex: 1,
                child: Container(
                  height: 100, 
                  color: Colors.blue,
                  child: const Center(
                    child: Text(
                      "Flex 1",
                    ),
                  ),
                ),
              ),
            ],
          ),
          
          const SizedBox(height: 30),
          
          Row(
            children: [
              Container(
                width: 100, 
                height: 100, 
                color: Colors.orange,
                child: const Center(
                  child: Text(
                    "Fixed Width",
                  ),
                ),
              ),
              
              //Flexible- takes available space but can shrink if needed

              Flexible(
                child: Container(
                  color: Colors.yellow,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: const Text(
                    "This is very very very long text inside Flexible widget",
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}