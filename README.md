# flutter_application_20

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# Navigation Widget

navigation merupakan sebuah proses menavigasi halaman menuju page yang ingin dituju contoh dari page 1 → page 2 routing aplikasi menjadi multi page. konsep navigation sepeti tumpukan.

![Capture4](https://github.com/appworkspaceRM/widget-navigation/assets/135511281/c48f4584-56b5-4e9e-b804-5b00a824434f)

terdapat 2 konsep yaitu push untuk menumpuk sebuah layar dan pop untuk memcahkan layar atau mencabut layer paling atas. push terdapat 2 konsep yaitu push atau push replacement.

- Konsep Push
    
    konsep ini akan menambahkan atau menumpuk sebauh layar. hati - hati terdapat konsep push, karena konsep push akan selalu menumpuk layer atau layar tampilan sehingga dapat memakan sebuah memori terlalu banyak.
    
    ```dart
    Navigator.of(context).push(MaterialPageRoute(builder: (context){return PageClass()})
    ```

    ```dart
    import 'package:flutter/material.dart';
    import 'package:flutter_application_20/pages/page_two.dart';

    class PageOne extends StatelessWidget {
      const PageOne({super.key});

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('PAGE 1'),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const PageTwo(),
              ));
            },
            child: Icon(Icons.keyboard_arrow_right),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        );
      }
    }
    ```
    ![konsep push](https://github.com/appworkspaceRM/widget-navigation/assets/135511281/d0183b77-f58a-4da2-8fa3-201ab135c54e)

    - Push Replacement
    
    ```dart
    Navigator.of(context).push(MaterialPageRoute(builder: (context){
    return PageClass()})
    ```
    
    push replacement merupakan fungsi yang akan menggantikan layer yang melakukan navigation.

- Konsep Pop
    
    Konsep navigator ini akan terjadi jika suatu tumpukan terjadi, konsep ini akan melepas sebuah layar keluar dari tumpukan sehingga menghapus layar akan menghapus jumlah memori yang terpakai.
    
    ```dart
    Navigator.of(context).pop()
    ```

    ```dart
    import 'package:flutter/material.dart';

    class PageTwo extends StatelessWidget {
      const PageTwo({super.key});

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('PAGE 2'),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Icon(Icons.keyboard_arrow_left),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        );
      }
    }
    ```
    ![konep pop](https://github.com/appworkspaceRM/widget-navigation/assets/135511281/4236fa33-33eb-4e1c-a361-8065adac2dcd)


```dart
import 'package:flutter/material.dart';
import 'package:flutter_application_20/pages/page_one.dart';

class MyNavigation extends StatelessWidget {
  const MyNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Navigation',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const PageOne(),
          ));
        },
        child: Icon(Icons.keyboard_arrow_right),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

```

![navigation](https://github.com/appworkspaceRM/widget-navigation/assets/135511281/88a273c0-476a-4784-a4d2-9eb0bf5b09d3)
