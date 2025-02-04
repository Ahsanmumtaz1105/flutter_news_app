import 'package:canton_design_system/canton_design_system.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ErrorBody extends ConsumerWidget {
  final String? message;
  final AutoDisposeFutureProvider? provider;

  ErrorBody(this.message, this.provider);
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Text(
            message!,
            style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                ),
          ),
        ),
        SizedBox(height: 12),
        CantonPrimaryButton(
          buttonText: 'Retry',
          textColor: CantonColors.white,
          containerWidth: MediaQuery.of(context).size.width / 2 - 34,
          onPressed: () => context.refresh(provider!),
        ),
      ],
    ));
  }
}
