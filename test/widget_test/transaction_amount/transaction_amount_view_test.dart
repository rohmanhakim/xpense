import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:xpense/number_inputs.dart';
import '../../mock_app.dart';

import 'package:xpense/screens/transaction_amount/transaction_amount_view_model.dart';
import 'package:xpense/screens/transaction_amount/transaction_amount_view.dart';

void main() {
  testWidgets('Should call correct method when click button',
      (WidgetTester tester) async {
    TransactionAmountViewModel vm = new TransactionViewModelMock();
    await tester.pumpWidget(MockApp(TransactionAmountView(viewModel: vm)));

    await tester.tap(find.byKey(Key("numberPad1")));
    await tester.pump();
    expect((vm as TransactionViewModelMock).updateAmountCalledWithParam,
        NumberInput.input1);

    await tester.tap(find.byKey(Key("numberPad2")));
    await tester.pump();
    expect((vm as TransactionViewModelMock).updateAmountCalledWithParam,
        NumberInput.input2);

    await tester.tap(find.byKey(Key("numberPad3")));
    await tester.pump();
    expect((vm as TransactionViewModelMock).updateAmountCalledWithParam,
        NumberInput.input3);

    await tester.tap(find.byKey(Key("numberPad4")));
    await tester.pump();
    expect((vm as TransactionViewModelMock).updateAmountCalledWithParam,
        NumberInput.input4);

    await tester.tap(find.byKey(Key("numberPad5")));
    await tester.pump();
    expect((vm as TransactionViewModelMock).updateAmountCalledWithParam,
        NumberInput.input5);

    await tester.tap(find.byKey(Key("numberPad6")));
    await tester.pump();
    expect((vm as TransactionViewModelMock).updateAmountCalledWithParam,
        NumberInput.input6);

    await tester.tap(find.byKey(Key("numberPad7")));
    await tester.pump();
    expect((vm as TransactionViewModelMock).updateAmountCalledWithParam,
        NumberInput.input7);

    await tester.tap(find.byKey(Key("numberPad8")));
    await tester.pump();
    expect((vm as TransactionViewModelMock).updateAmountCalledWithParam,
        NumberInput.input8);

    await tester.tap(find.byKey(Key("numberPad9")));
    await tester.pump();
    expect((vm as TransactionViewModelMock).updateAmountCalledWithParam,
        NumberInput.input9);

    await tester.tap(find.byKey(Key("numberPad0")));
    await tester.pump();
    expect((vm as TransactionViewModelMock).updateAmountCalledWithParam,
        NumberInput.input0);

    await tester.tap(find.byKey(Key("numberPadBackSpace")));
    await tester.pump();
    expect(
        (vm as TransactionViewModelMock).deleteAmountLastCharacterCalled, true);

    await tester.tap(find.byKey(Key("numberPadClear")));
    await tester.pump();
    expect((vm as TransactionViewModelMock).clearAmountCalled, true);
  });
}

class TransactionViewModelMock implements TransactionAmountViewModel {
  bool clearAmountCalled = false;
  bool deleteAmountLastCharacterCalled = false;
  NumberInput updateAmountCalledWithParam;

  @override
  double amount = 0;

  @override
  var onStateChanged;

  @override
  void clearAmount() {
    clearAmountCalled = true;
  }

  @override
  void deleteAmountLastCharacter() {
    deleteAmountLastCharacterCalled = true;
  }

  @override
  void updateAmount(NumberInput input) {
    updateAmountCalledWithParam = input;
  }
}
