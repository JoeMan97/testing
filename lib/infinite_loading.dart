import 'package:flutter/material.dart';

class InfiniteLoading extends StatefulWidget {
  @override
  _InfiniteLoadingState createState() => _InfiniteLoadingState();
}

class _InfiniteLoadingState extends State<InfiniteLoading> {

  ScrollController _scrollController = new ScrollController();

  _addItems() {
    for(int i = 0; i < 5; i++) {
      setState(() {
        list.add(null);   
      });
    }
  }

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
        _addItems();
      }
    });

    _addItems();
  }

  @override
  void dispose() {
    _scrollController.dispose();

    super.dispose();
  }

  List<String> list = new List();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.builder(
        controller: _scrollController,
        itemCount: list.length,
        itemBuilder: (context, index) =>
          Container(
            // aqui va tu estilo
          )
      ),
    );
  }
}