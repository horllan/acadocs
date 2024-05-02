import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/authentication_bloc.dart';
import '../features/upload/view/upload_view.dart';

class HomeScreen extends StatelessWidget {
  static String id = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.purple,
          leading: IconButton.outlined(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white60,
              ))),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            'Hello User',
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: Colors.green, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 100,
          ),
          ElevatedButton.icon(
            onPressed: () {Navigator.push(
                context, MaterialPageRoute(builder: (context) => UploadDocument()));},
            icon: Icon(Icons.cloud_upload_outlined),
            label: Text(
              "Upload Documents",
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Colors.purple.shade900, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.history_outlined),
            label: Text(
              "View Documents",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.local_print_shop),
            label: Text(
              "Search Vendor",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: Colors.redAccent, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          BlocConsumer<AuthenticationBloc, AuthenticationState>(
            listener: (context, state) {
              if (state is AuthenticationLoadingState) {
                const CircularProgressIndicator();
              } else if (state is AuthenticationFailureState) {
                showDialog(
                    context: context,
                    builder: (context) {
                      return const AlertDialog(
                        content: Text('error'),
                      );
                    });
              }
            },
            builder: (context, state) {
              return ElevatedButton(
                  onPressed: () {
                    BlocProvider.of<AuthenticationBloc>(context).add(SignOut());
                  },
                  child: const Text('logOut'));
            },
          ),
        ],
      ),
    );
  }
}
