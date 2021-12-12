import 'package:flutter/material.dart';
import 'package:meuapp/shared/theme/app_theme.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Perfil',
              style: AppTheme.textStyles.title.copyWith(fontSize: 36),
            ),
            SizedBox(
              height: 80,
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.account_circle,
                      size: 78,
                    ),
                    title: Text(
                      'Olá, Gabe!',
                      style: AppTheme.textStyles.title,
                    ),
                    subtitle: Text('Aqui é seu espaço de configuração do aplicativo.', style: AppTheme.textStyles.subtitle),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Nosso app ainda esta em construção, e você pode nos ajudar a evoluir! \nSe tiver dúvidas, sugestões envie para email@email.com',
                      style: AppTheme.textStyles.subtitle,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                color: AppTheme.colors.textEnabled,
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                onTap: () {
                  Navigator.pushReplacementNamed(context, "/login");
                },
                title: Text(
                  'Sair do aplicativo',
                  style: AppTheme.textStyles.titleListTile,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
