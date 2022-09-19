import 'package:flutter/material.dart';
import 'package:notely/src/core/constants/constants.dart';
import 'package:notely/src/core/extensions/extensions.dart';
import 'package:notely/src/core/router/app_router.dart';
import 'package:notely/src/features/manage_notes/data/models/note.dart';
import 'package:notely/src/shared/widgets/svg_renderer.dart';

import '../widgets/recent_notes_builder.dart';

class RecentNotesPage extends StatelessWidget {
  const RecentNotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.width),
        child: Column(
          children: [
            SizedBox(height: 63.height),
            Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {
                      Navigator.of(context).pushNamed(AppRouter.profile);
                    },
                    child: Padding(
                      padding: EdgeInsets.all(8.radius),
                      child: SvgRenderer(AppAssetsPath.menuSvg),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    'Recent Notes',
                    style: AppTextStyles.bodyTwo,
                    textAlign: TextAlign.center,
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: Navigator.of(context).pop,
                    child: Padding(
                      padding: EdgeInsets.all(8.radius),
                      child: SvgRenderer(
                        AppAssetsPath.searchSvg,
                        width: 20.radius,
                        height: 20.radius,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 28.height),
            const Expanded(
              child: RecentNotesBuilder(
                notes: [
                  Note(
                    title: 'Cerebral palsy sport',
                    body: 'Cerebral palsy sport classification is a '
                        'classification system used by sports that include'
                        ' people with cerebral palsy (CP) with different'
                        ' degrees of severity to compete fairly '
                        'against each...',
                  ),
                  Note(
                      title: 'Trends List',
                      body: '\u2022 Glassmorphism\n'
                          '\u2022 Claymorphism\n'
                          '\u2022 Big Typography\n'
                          '\u2022 3d Illustrations\n'
                          '\u2022 Flat Colors...\n'),
                  Note(
                    title: 'Emotions of Typography',
                    body: 'Typography is a part of user interface. '
                        'Many of us focus on User Experience rather than User '
                        'Interface as a novice UI/UX designer since deciding '
                        'a typeface, colors, and typefaces is a '
                        'pain as it takes a lot of...',
                  ),
                  Note(
                    title: 'School Essay on Accessibility',
                    body:
                        'Accessibility is the practice of making your websites '
                        'usable by as many people as possible. '
                        'We traditionally think of this as being '
                        'about people with disabilities...',
                  ),
                  Note(
                    title: 'Lamina Peak',
                    body: 'Lamina Peak (70°32′S 68°45′WCoordinates: '
                        '70°32′S 68°45′W) '
                        'is a prominent pyramid-shaped peak, 1,280 metres'
                        ' (4,200 ft) high, surmounting a stratified ridge '
                        'which curves down from Mount Edred northeastward '
                        'toward George VI Sound.',
                  ),
                  Note(
                    title: 'IG Posts',
                    body: '\u2022 Typography Checklist\n'
                        '\u2022 Make 3D Card inside Figma\n'
                        '\u2022 Best figma plugins stock images websites',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
