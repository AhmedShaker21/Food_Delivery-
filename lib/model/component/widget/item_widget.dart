import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:untitled11/model/component/constants.dart';
import 'package:untitled11/model/cores/dimensions.dart';
import 'package:untitled11/model/food_model.dart';

class ItemWidget extends StatefulWidget {
  final FoodModel? model;
  final Function updateFunction;

  const ItemWidget({super.key, this.model, required this.updateFunction});

  @override
  ItemWidgetState createState() => ItemWidgetState();
}

class ItemWidgetState extends State<ItemWidget> {
  List<FoodModel> model = [];

  @override
  void initState() {
    super.initState();
    model = List.of(FoodModel.list);
  }

  removeData(model) {
    model.removeAt(model);
  }

  // int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        return Row(
          children: [
            SizedBox(
              height: screenAwareSize(100, context),
              child: Stack(
                children: [
                  Slidable(
                      key: const ValueKey(FoodModel),
                      endActionPane: ActionPane(
                        dismissible: DismissiblePane(
                          onDismissed: () {},
                        ),
                        motion: const BehindMotion(),
                        children: [
                          SlidableAction(
                              icon: Icons.delete_forever_outlined,
                              borderRadius: BorderRadius.circular(25),
                              backgroundColor: Colors.orange,
                              onPressed: (context) => {removeData(model)})
                        ],
                      ),
                      child: _buildwidgetModel(context)),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildwidgetModel(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: AnimatedContainer(
            width: size.width * 0.9,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 2))
                ]),
            duration: const Duration(milliseconds: 100),
            margin: EdgeInsets.only(right: screenAwareSize(20, context)),
            padding: EdgeInsets.only(
                top: screenAwareSize(12, context), bottom: screenAwareSize(12, context)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: screenAwareSize(75, context),
                  height: screenAwareSize(75, context),
                  decoration: BoxDecoration(
                      image:
                          DecorationImage(image: ExactAssetImage("assets/${widget.model?.id}.png")),
                      borderRadius: const BorderRadius.all(Radius.circular(12))),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "${widget.model?.name}",
                        style: const TextStyle(
                          color: Colors.black38,
                          fontSize: 16,
                          height: 1.8,
                        ),
                      ),
                      Text(
                        "\$ ${widget.model?.price}",
                        style: const TextStyle(
                          color: Colors.black38,
                          fontSize: 16,
                          height: 1.8,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: screenAwareSize(250, context)),
                child: Container(
                  width: screenAwareSize(35, context),
                  height: screenAwareSize(35, context),
                  decoration: BoxDecoration(
                      color: const Color(0xFF8FFFCD),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 2))
                      ]),
                  child: IconButton(
                    onPressed: widget.model?.orderNumber == 0
                        ? null
                        : () {
                            widget.updateFunction();
                            _decrementCounter();
                          },
                    icon: const Icon(Icons.remove, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                width: screenAwareSize(30, context),
                height: screenAwareSize(25, context),
                child: Center(
                  child: Text(
                    '${widget.model!.orderNumber}',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: screenAwareSize(35, context),
                  height: screenAwareSize(35, context),
                  decoration: BoxDecoration(
                      color: iconColor,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          offset: Offset(0, 2),
                        )
                      ]),
                  child: IconButton(
                    onPressed: () {
                      widget.updateFunction();
                      _incrementCounter();
                    },
                    icon: const Icon(Icons.add, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void _incrementCounter() {
    setState(() {
      widget.model?.orderNumber++;
    });
  }

  void _decrementCounter() {
    setState(() {
      widget.model?.orderNumber--;
    });
  }
}
