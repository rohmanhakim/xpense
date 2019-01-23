import 'package:test/test.dart';
import 'package:xpense/number_inputs.dart';
import 'package:xpense/screens/transaction_amount/transaction_amount_view_model.dart';

void main() {
  test('update amount should calculate correct amount', () {
    TransactionAmountViewModel viewModel =
        new TransactionAmountViewModelImpl(null);

    viewModel.updateAmount(NumberInput.input1);
    expect(viewModel.amount, 1);

    viewModel.updateAmount(NumberInput.input2);
    expect(viewModel.amount, 12);

    viewModel.updateAmount(NumberInput.input3);
    expect(viewModel.amount, 123);

    viewModel.deleteAmountLastCharacter();
    expect(viewModel.amount, 12);

    viewModel.clearAmount();
    expect(viewModel.amount, 0);
  });

  test('amount should have limit 10 digits', () {
    TransactionAmountViewModel viewModel =
        new TransactionAmountViewModelImpl(null);

    viewModel.updateAmount(NumberInput.input1);
    viewModel.updateAmount(NumberInput.input2);
    viewModel.updateAmount(NumberInput.input3);
    viewModel.updateAmount(NumberInput.input4);
    viewModel.updateAmount(NumberInput.input5);
    viewModel.updateAmount(NumberInput.input6);
    viewModel.updateAmount(NumberInput.input7);
    viewModel.updateAmount(NumberInput.input8);
    viewModel.updateAmount(NumberInput.input9);
    viewModel.updateAmount(NumberInput.input0);
    viewModel.updateAmount(NumberInput.input1);
    viewModel.updateAmount(NumberInput.input2);
    expect(viewModel.amount, 1234567890);
  });

  test('delete one digit amount should change it to zero', () {
    TransactionAmountViewModel viewModel =
        new TransactionAmountViewModelImpl(null);

    viewModel.updateAmount(NumberInput.input1);
    viewModel.deleteAmountLastCharacter();
    expect(viewModel.amount, 0);
  });
}
