import 'package:flutter/material.dart';
import 'package:tfg_v2/domain/model/plan.dart';
import 'package:tfg_v2/ui/widgets/components/box_spacer.dart';
import 'package:tfg_v2/ui/widgets/components/list_items/plan_preview_item.dart';

class PlansList extends StatelessWidget {
  const PlansList({
    super.key,
    required this.planList,
    required this.joinButtonBehaviour,
    required this.isJoinedChecker,
  });

  final List<Plan> planList;

  final Function({
    required Plan plan,
    required bool isJoin,
  }) joinButtonBehaviour;

  final Function({
    required Plan plan,
  }) isJoinedChecker;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ListView(
        children: [
          BoxSpacer.v4(),
          for (Plan plan in planList)
            PlanPreviewItem(
              plan: plan,
              joinButtonBehaviour: joinButtonBehaviour,
              checkIfJoined: isJoinedChecker,
            ),
        ],
      ),
    );
  }
}
