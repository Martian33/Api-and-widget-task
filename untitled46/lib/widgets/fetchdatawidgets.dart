import 'package:flutter/material.dart';
import 'package:untitled46/models/modeling.dart';
import '../services/api_service.dart';

class FetchDataWidget extends StatefulWidget {
  const FetchDataWidget({super.key});

  @override
  _FetchDataWidgetState createState() => _FetchDataWidgetState();
}

class _FetchDataWidgetState extends State<FetchDataWidget> {
  Modeling? modeling;
  bool isLoading = false;

  Future<void> fetchData() async {
    setState(() {
      isLoading = true;
    });
    try {
      ApiService apiService = ApiService();
      Modeling fetchedModeling = await apiService.fetchTodo();
      setState(() {
        modeling = fetchedModeling;
      });
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (modeling != null)
          const Text('Məlumat Tapmadım'),
        ElevatedButton(
          onPressed: fetchData,
          child: const Text('Məlumatı Gətir'),
        ),
      ],
    );
  }
}
