import 'package:flutter/material.dart';
import 'package:travel_app/models/tab_icon_data.dart';

class BottomMenuNavView extends StatefulWidget {
  const BottomMenuNavView(
      {Key? key,
      required this.tabIconsList,
      required this.changeIndex,
      required this.addClick})
      : super(key: key);

  final Function(int index) changeIndex;
  final Function addClick;
  final List<TabIconData> tabIconsList;

  @override
  _BottomBarViewState createState() => _BottomBarViewState();
}

class _BottomBarViewState extends State<BottomMenuNavView>
    with TickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    animationController.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: <Widget>[
        AnimatedBuilder(
          animation: animationController,
          builder: (BuildContext context, Widget? child) {
            return Container(
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 4,
                  blurRadius: 2,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ]),
              padding: const EdgeInsets.only(left: 8, right: 8, top: 4),
              height: 62,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TabIcons(
                      tabIconData: widget.tabIconsList[0],
                      removeAllSelect: () {
                        setRemoveAllSelection(widget.tabIconsList[0]);
                        widget.changeIndex(0);
                      },
                      iconColor: Colors.black54,
                    ),
                  ),
                  Expanded(
                    child: TabIcons(
                      tabIconData: widget.tabIconsList[1],
                      removeAllSelect: () {
                        setRemoveAllSelection(widget.tabIconsList[1]);
                        widget.changeIndex(1);
                      },
                      iconColor: Colors.black54,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: TabIcons(
                        tabIconData: widget.tabIconsList[2],
                        removeAllSelect: () {
                          setRemoveAllSelection(widget.tabIconsList[2]);
                          widget.changeIndex(2);
                        },
                        iconColor: Colors.black54,
                      ),
                    ),
                  ),
                  Expanded(
                    child: TabIcons(
                      tabIconData: widget.tabIconsList[3],
                      removeAllSelect: () {
                        setRemoveAllSelection(widget.tabIconsList[3]);
                        widget.changeIndex(3);
                      },
                      iconColor: Colors.black54,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }

  void setRemoveAllSelection(TabIconData tabIconData) {
    if (!mounted) return;
    setState(() {
      widget.tabIconsList.forEach((TabIconData tab) {
        tab.isSelected = false;
        if (tabIconData.index == tab.index) {
          tab.isSelected = true;
        }
      });
    });
  }
}

class TabIcons extends StatefulWidget {
  TabIcons(
      {Key? key,
      required this.tabIconData,
      required this.iconColor,
      required this.removeAllSelect})
      : super(key: key);

  final TabIconData tabIconData;
  final Function removeAllSelect;
  Color iconColor = Colors.white;

  @override
  _TabIconsState createState() => _TabIconsState();
}

class _TabIconsState extends State<TabIcons> with TickerProviderStateMixin {
  @override
  void initState() {
    widget.tabIconData.animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    )..addStatusListener((AnimationStatus status) {
        if (status == AnimationStatus.completed) {
          if (!mounted) return;
          widget.removeAllSelect();
          widget.tabIconData.animationController!.reverse();
        }
      });
    super.initState();
  }

  void setAnimation() {
    widget.tabIconData.animationController!.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Center(
        child: InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
          onTap: () {
            if (!widget.tabIconData.isSelected) {
              setAnimation();
            }
          },
          child: IgnorePointer(
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: <Widget>[
                ScaleTransition(
                  alignment: Alignment.center,
                  scale: Tween<double>(begin: 0.88, end: 1.0).animate(
                      CurvedAnimation(
                          parent: widget.tabIconData.animationController!,
                          curve:
                              Interval(0.1, 1.0, curve: Curves.fastOutSlowIn))),
                  child: Container(
                    padding: const EdgeInsets.only(bottom: 8),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                width: 2,
                                color: widget.tabIconData.isSelected
                                    ? Colors.greenAccent
                                    : Colors.transparent))),
                    child: Image.asset(
                      widget.tabIconData.isSelected
                          ? widget.tabIconData.selectedImagePath
                          : widget.tabIconData.imagePath,
                      height: 24,
                      width: 24,
                      color: widget.iconColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
