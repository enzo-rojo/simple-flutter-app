import 'package:flutter/material.dart';

class TermScreen extends StatefulWidget {
  TermScreen({Key? key}) : super(key: key);

  @override
  State<TermScreen> createState() => _TermScreenState();
}

class _TermScreenState extends State<TermScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Term & Condition',
            style: TextStyle(
              color: Colors.black,
            )
          ),
          titleSpacing: 0.0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () => Navigator.pop(context),
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
                  physics: AlwaysScrollableScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris et tempor magna. Cras quis congue purus. Vivamus accumsan consectetur arcu, et volutpat felis commodo sit amet. Nullam placerat ante sapien, nec gravida turpis mattis vel. Sed pulvinar hendrerit turpis, eget laoreet urna tincidunt non. Maecenas at pharetra neque. Phasellus id fermentum quam. Maecenas sed erat varius, rutrum mauris sed, dignissim mi. Etiam eleifend condimentum ligula non blandit. Ut molestie orci eget erat convallis tempus.\n\n Sed orci justo, aliquet vel tempor id, faucibus vitae magna. Morbi volutpat, nibh pretium faucibus dignissim, nibh lorem faucibus massa, sit amet mollis libero lectus et dui. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris et tempor magna. Cras quis congue purus. Vivamus accumsan consectetur arcu, et volutpat felis commodo sit amet. Nullam placerat ante sapien, nec gravida turpis mattis vel. Sed pulvinar hendrerit turpis, eget laoreet urna tincidunt non. Maecenas at pharetra neque. Phasellus id fermentum quam. Maecenas sed erat varius, rutrum mauris sed, dignissim mi. Etiam eleifend condimentum ligula non blandit. Ut molestie orci eget erat convallis tempus. Sed orci justo, aliquet vel tempor id, faucibus vitae magna. Morbi volutpat, nibh pretium faucibus dignissim, nibh lorem faucibus massa, sit amet mollis libero lectus et dui. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris et tempor magna. Cras quis congue purus. Vivamus accumsan consectetur arcu, et volutpat felis commodo sit amet. Nullam placerat ante sapien, nec gravida turpis mattis vel.\n\n Sed pulvinar hendrerit turpis, eget laoreet urna tincidunt non. Maecenas at pharetra neque. Phasellus id fermentum quam. Maecenas sed erat varius, rutrum mauris sed, dignissim mi. Etiam eleifend condimentum ligula non blandit. Ut molestie orci eget erat convallis tempus. Sed orci justo, aliquet vel tempor id, faucibus vitae magna. Morbi volutpat, nibh pretium faucibus dignissim, nibh lorem faucibus massa, sit amet mollis libero lectus et dui. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris et tempor magna. Cras quis congue purus. Vivamus accumsan consectetur arcu, et volutpat felis commodo sit amet. Nullam placerat ante sapien, nec gravida turpis mattis vel. Sed pulvinar hendrerit turpis, eget laoreet urna tincidunt non. Maecenas at pharetra neque. Phasellus id fermentum quam. Maecenas sed erat varius, rutrum mauris sed, dignissim mi. Etiam eleifend condimentum ligula non blandit. Ut molestie orci eget erat convallis tempus. Sed orci justo, aliquet vel tempor id, faucibus vitae magna. Morbi volutpat, nibh pretium faucibus dignissim, nibh lorem faucibus massa, sit amet mollis libero lectus et dui.'),
                    ],
                  ),
                )
              ),
              SizedBox(height: 15),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10.0),
                  primary: Theme.of(context).primaryColor,
                ), 
                onPressed: (() {
                  print('coucou');
                }), 
                child: Text(
                  'Accept'.toUpperCase(),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}