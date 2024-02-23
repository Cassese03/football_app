import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:football_app/common/appbar.dart';
import 'package:football_app/constants.dart';
import 'package:badges/badges.dart' as badges;
import 'package:football_app/screens/account/bloc/account_bloc.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});
  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarAll(),
      body: BlocProvider(
        create: (context) => AccountBloc(),
        child: Builder(builder: (context) {
          return BlocConsumer<AccountBloc, AccountState>(
            listener: (BuildContext context, AccountState state) {
              if (state is AccountEditing) {
                TextEditingController nome = TextEditingController();
                TextEditingController cognome = TextEditingController();
                TextEditingController ruolo = TextEditingController();
                TextEditingController squadra = TextEditingController();
                showDialog<AccountTryEdit?>(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text(
                      'Modifica Profilo',
                    ),
                    content: SingleChildScrollView(
                      child: ListBody(
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 4.0),
                            child: Text(
                              'Inserisci Nome',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          TextField(
                            controller: nome,
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 4.0),
                            child: Text(
                              'Inserisci Cognome',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          TextField(
                            controller: cognome,
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 4.0),
                            child: Text(
                              'Inserisci Ruolo',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          TextField(
                            controller: ruolo,
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 4.0),
                            child: Text(
                              'Inserisci Squadra',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          TextField(
                            controller: squadra,
                          ),
                        ],
                      ),
                    ),
                    actions: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop(
                            AccountTryEdit(
                              'prova',
                              'prova',
                              'prova',
                              'prova',
                            ),
                          );
                        },
                        child: const Text('Modifica'),
                      )
                    ],
                  ),
                ).then(
                  (value) {
                    if (value == null) return;
                    context.read<AccountBloc>().add(value);
                  },
                );
              }
              if (state is AccountEditingFailed) {
                showDialog(
                  context: context,
                  builder: (context) => Dialog(
                    child: Text(
                      state.error,
                    ),
                  ),
                );
              }
              if (state is AccountEditingSuccess) {
                showDialog(
                  context: context,
                  builder: (context) => const Dialog(
                    child: Text('Complimenti'),
                  ),
                );
              }
            },
            builder: (BuildContext context, AccountState state) {
              if (state is AccountLoading) {
                return const Center(child: CircularProgressIndicator());
              }
              return Fetched(context);
            },
          );
        }),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Container Fetched(BuildContext context) {
    return Container(
      color: kprimaryColor,
      child: Column(
        children: [
          Expanded(
            flex: 50,
            child: Row(
              children: [
                const Spacer(),
                CircleAvatar(
                  backgroundColor: kbackgroundColor,
                  radius: 100,
                  child: badges.Badge(
                    position: badges.BadgePosition.topEnd(),
                    badgeContent: const Icon(
                      Icons.edit,
                    ),
                    badgeStyle: const badges.BadgeStyle(
                      badgeColor: Colors.white,
                    ),
                    onTap: () async {
                      context.read<AccountBloc>().add(AccountEdit());
                    },
                    child: Image.asset(
                      'assets/images/arsenal.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
          const Expanded(
            flex: 50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Spacer(),
                      Text(
                        style: TextStyle(
                          color: Colors.brown,
                          fontSize: 24,
                        ),
                        'Nome',
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                        'Lorenzo',
                      ),
                      Spacer(),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Spacer(),
                      Text(
                        style: TextStyle(
                          color: Colors.brown,
                          fontSize: 24,
                        ),
                        'Cognome',
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                        'Cassese',
                      ),
                      Spacer(),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Spacer(),
                      Text(
                        style: TextStyle(
                          color: Colors.brown,
                          fontSize: 24,
                        ),
                        'Ruolo',
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                        'Difensore',
                      ),
                      Spacer(),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Spacer(),
                      Text(
                        style: TextStyle(
                          color: Colors.brown,
                          fontSize: 24,
                        ),
                        'Squadra',
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                        'Raimon Nola',
                      ),
                      Spacer(),
                    ],
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
