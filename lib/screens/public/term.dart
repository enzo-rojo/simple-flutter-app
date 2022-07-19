import 'package:flutter/material.dart';

class TermScreen extends StatefulWidget {
  final Function(int) onChangeStep;

  const TermScreen({Key? key, required this.onChangeStep}) : super(key: key);

  @override
  State<TermScreen> createState() => _TermScreenState();
}

class _TermScreenState extends State<TermScreen> {
  late ScrollController _scrollController;
  bool _termReaded = false;

  @override
  void initState() {
    super.initState();

    _scrollController = ScrollController();

    _scrollController.addListener(() {
      if (_scrollController.offset >=
              _scrollController.position.maxScrollExtent &&
          !_scrollController.position.outOfRange) {
        setState(() => _termReaded = true);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text('Term & Condition',
                style: TextStyle(
                  color: Colors.black,
                )),
            titleSpacing: 0.0,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () => widget.onChangeStep(0),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                    child: SingleChildScrollView(
                      controller: _scrollController,
                  physics: AlwaysScrollableScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris et tempor magna. Cras quis congue purus. Vivamus accumsan consectetur arcu, et volutpat felis commodo sit amet. Nullam placerat ante sapien, nec gravida turpis mattis vel. Sed pulvinar hendrerit turpis, eget laoreet urna tincidunt non. Maecenas at pharetra neque. Phasellus id fermentum quam. Maecenas sed erat varius, rutrum mauris sed, dignissim mi. Etiam eleifend condimentum ligula non blandit. Ut molestie orci eget erat convallis tempus.\n\n Sed orci justo, aliquet vel tempor id, faucibus vitae magna. Morbi volutpat, nibh pretium faucibus dignissim, nibh lorem faucibus massa, sit amet mollis libero lectus et dui. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris et tempor magna. Cras quis congue purus. Vivamus accumsan consectetur arcu, et volutpat felis commodo sit amet. Nullam placerat ante sapien, nec gravida turpis mattis vel. Sed pulvinar hendrerit turpis, eget laoreet urna tincidunt non. Maecenas at pharetra neque. Phasellus id fermentum quam. Maecenas sed erat varius, rutrum mauris sed, dignissim mi. Etiam eleifend condimentum ligula non blandit. Ut molestie orci eget erat convallis tempus. Sed orci justo, aliquet vel tempor id, faucibus vitae magna. Morbi volutpat, nibh pretium faucibus dignissim, nibh lorem faucibus massa, sit amet mollis libero lectus et dui. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris et tempor magna. Cras quis congue purus. Vivamus accumsan consectetur arcu, et volutpat felis commodo sit amet. Nullam placerat ante sapien, nec gravida turpis mattis vel.\n\n Sed pulvinar hendrerit turpis, eget laoreet urna tincidunt non. Maecenas at pharetra neque. Phasellus id fermentum quam. Maecenas sed erat varius, rutrum mauris sed, dignissim mi. Etiam eleifend condimentum ligula non blandit. Ut molestie orci eget erat convallis tempus. Sed orci justo, aliquet vel tempor id, faucibus vitae magna. Morbi volutpat, nibh pretium faucibus dignissim, nibh lorem faucibus massa, sit amet mollis libero lectus et dui. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris et tempor magna. Cras quis congue purus. Vivamus accumsan consectetur arcu, et volutpat felis commodo sit amet. Nullam placerat ante sapien, nec gravida turpis mattis vel. Sed pulvinar hendrerit turpis, eget laoreet urna tincidunt non. Maecenas at pharetra neque. Phasellus id fermentum quam. Maecenas sed erat varius, rutrum mauris sed, dignissim mi. Etiam eleifend condimentum ligula non blandit. Ut molestie orci eget erat convallis tempus. Sed orci justo, aliquet vel tempor id, faucibus vitae magna. Morbi volutpat, nibh pretium faucibus dignissim, nibh lorem faucibus massa, sit amet mollis libero lectus et dui.'),
                    ],
                  ),
                )),
                SizedBox(height: 15),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(10.0),
                    primary: Theme.of(context).primaryColor,
                  ),
                  onPressed: _termReaded ? () => widget.onChangeStep(2) : null,
                  child: Text(
                    'Accept'.toUpperCase(),
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
