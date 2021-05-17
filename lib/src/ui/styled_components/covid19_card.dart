import 'package:canton_design_system/canton_design_system.dart';
import 'package:canton_news_app/src/ui/views/covid19_view.dart';

class COVID19Card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => CantonMethods.viewTransition(context, COVID19View()),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(7),
          child: Row(
            children: [
              Expanded(
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'COVID-19 News: ',
                        style: Theme.of(context).textTheme.bodyText2.copyWith(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      TextSpan(
                          text: 'Get the latest coverage of the coronavirus',
                          style: Theme.of(context).textTheme.bodyText2),
                    ],
                  ),
                ),
              ),
              CantonHeaderButton(
                icon: IconlyIcon(
                  IconlyBold.ArrowRight1,
                  color: Theme.of(context).colorScheme.secondaryVariant,
                ),
                radius: 35,
                size: 55.0,
                onPressed: () =>
                    CantonMethods.viewTransition(context, COVID19View()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
