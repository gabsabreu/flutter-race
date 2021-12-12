import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:meuapp/modules/create/create_controller.dart';
import 'package:meuapp/shared/theme/widgets/button/button.dart';
import 'package:meuapp/shared/theme/widgets/input_text/input_text.dart';

class CreateBottomsheet extends StatefulWidget {
  const CreateBottomsheet({Key? key}) : super(key: key);

  @override
  State<CreateBottomsheet> createState() => _CreateBottomsheetState();
}

class _CreateBottomsheetState extends State<CreateBottomsheet> {
  final controller = CreateController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 42, vertical: 16),
        child: Form(
          key: controller.formKey,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              InputText(
                label: "Produto",
                hint: "Digite um nome",
                validator: (value) => value!.isNotEmpty ? null : 'Favor digitar um nome',
              ),
              SizedBox(
                height: 8,
              ),
              InputText(
                label: "Preço",
                hint: "Digite o valor",
                keyboardType: TextInputType.number,
                inputFormatters: [MoneyInputFormatter(leadingSymbol: 'R\$')],
                validator: (value) => value!.isNotEmpty ? null : 'Favor digitar um valor',
              ),
              SizedBox(
                height: 8,
              ),
              InputText(
                label: "Data da compra",
                keyboardType: TextInputType.number,
                inputFormatters: [MaskedInputFormatter('00/00/00')],
                hint: "Digite dd/mm/aaaa",
                validator: (value) => value!.isNotEmpty ? null : 'Favor digitar uma data',
              ),
              SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 16,
              ),
              Button(
                  label: "Adicionar",
                  type: ButtonType.fill,
                  onTap: () {
                    controller.create();
                  })
            ],
          ),
        ),
      ),
    );
  }
}
