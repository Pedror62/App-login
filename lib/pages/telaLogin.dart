import 'package:flutter/material.dart';
import 'package:triapp/pages/main_pages.dart';



class loginPagesteste extends StatefulWidget {
  const loginPagesteste({Key? key}) : super(key: key);

  @override
  State<loginPagesteste> createState() => _LoginPageState();
}

class _LoginPageState extends State<loginPagesteste> {
  var emailController = TextEditingController(text: "");
  var senhaController = TextEditingController(text: "");
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 200, 200, 200),
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 70,
                ),
                Row(
                  children: [
                    Expanded(child: Container()),
                    Expanded(
                      flex: 8,
                      child: Image.network(
                    "https://static.vecteezy.com/system/resources/thumbnails/019/872/884/small_2x/3d-minimal-user-login-page-user-authentication-concept-user-verification-concept-login-page-with-a-fingerprint-padlock-3d-illustration-free-png.png"), ),                         
                    Expanded(child: Container()),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Ja tem cadastro?",
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Faça seu login e make the change_",
                  style: TextStyle(fontSize: 18,
                   color: Colors.green,
                   fontWeight: FontWeight.w700,)


                  ),
                
                const SizedBox(
                  height: 40,
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  height: 30,
                  alignment: Alignment.center,
                  child: TextField(
                    controller: emailController,
                    onChanged: (value) {
                      debugPrint(value);
                    },
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(top: 0),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                            color: Colors.cyan,)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 75, 142, 239))),
                        hintText: "E-mail",
                        hintStyle: TextStyle(color: Colors.white, fontSize: 18),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Color.fromARGB(255, 75, 142, 239),
                        )),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  height: 30,
                  alignment: Alignment.center,
                  child: TextField(
                    controller: senhaController,
                    obscureText: isObscureText,
                    onChanged: (value) {
                      debugPrint(value);
                    },
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(top: 0),
                        enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 75, 142, 239))),
                        focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 75, 142, 239))),
                        hintText: "Senha",
                        hintStyle: const TextStyle(color: Colors.white, fontSize: 18),
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Color.fromARGB(255, 75, 142, 239),
                        ),
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              isObscureText = !isObscureText;
                            });
                          },
                          child: Icon(
                            isObscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: const Color.fromARGB(255, 75, 142, 239),
                          ),
                        )),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: double.infinity,
                    child: TextButton(
                        onPressed: () {
                          if (emailController.text.trim() ==
                                  "email@email.com" &&
                              senhaController.text.trim() == "123") {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MainPage()));
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text("Erro ao efetuar o login")));
                          }
                        }, 
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            backgroundColor: MaterialStateProperty.all(
                                const Color.fromARGB(255, 75, 142, 239))),
                        child: const Text(
                          "ENTRAR",
                           textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              height: 2.0,
                              fontWeight: FontWeight.w800), 
                            
                        )), 
                  ),
                ),
                Expanded(child: Container()),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  height: 30,
                  alignment: Alignment.center,
                  child: const Text(
                    "Esqueci minha senha",
                    style: TextStyle(
                       color: const Color.fromARGB(255, 75, 142, 239),
                         fontWeight: FontWeight.w400, fontSize: 20),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  height: 30,
                  alignment: Alignment.center,
                  child: const Text(
                    "Criar conta",
                    style: TextStyle(
                        color: Colors.green, 
                        fontWeight: FontWeight.w700, 
                        fontSize: 19),
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}













// // ignore: camel_case_types
// class loginPagesteste extends StatefulWidget {
//   const loginPagesteste({Key? key}) : super(key: key);

//   @override
//   State<loginPagesteste> createState() => _loginPagesState();
// }

// class _loginPagesState extends State<loginPagesteste> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: const Color.fromARGB(255, 109, 91, 91),
//         appBar: AppBar(
//           title: const Text('Minha Tela'),
//         ),
//         body: SingleChildScrollView(
//           child: Column(
//            crossAxisAlignment: CrossAxisAlignment.center,
//            children: [
//               const SizedBox(
//                 height: 100,
//               ),
//               Container(
//                 width: 175,
//                 height: 157,
//                 color: Colors.amber,
//                 child: Row(
//                   children: [
//                     Expanded(child: Container()),
//                     Expanded(
//                       flex: 5,
//                       child: Image.network(
//                         "https://www.google.com/url?sa=i&url=https%3A%2F%2Flp.dio.me%2F&psig=AOvVaw2HRdTiNf4cn7TIeznKX2oN&ust=1697376806391000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCICv_73T9YEDFQAAAAAdAAAAABAE",
//                         height: 120,
//                       ),
//                     ),
//                     Expanded(child: Container()),
//                   ],
//                 ),
//               ),
//               const SizedBox(
//                 height: 50,
//               ),
//               const Text("ja tem cadsotro?",
//                   style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700)),
//               const SizedBox(
//                 height: 20,
//               ),
//               const Text("faça seu login e make the change",
//                   style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.w300,
//                       color: Colors.green)),
//               const SizedBox(
//                 height: 50,
//               ),
//               Container(
               
//                 width: double.infinity,
//                 margin: const EdgeInsets.symmetric(
//                   horizontal: 20,
//                 ),
//                 color: Colors.green,
//                 height: 55,
//                 alignment: Alignment.center,
//                 child: const Row(
//                   children: [
//                     Expanded(flex: 2, child: Text("infome seu email:")),
//                     Expanded(flex: 3, child: Text("email")),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//                 child: Container(
                 
//                   width: double.infinity,
//                   margin: const EdgeInsets.symmetric(
//                     horizontal: 30,
//                   ),
//                   color: Colors.green,
//                   height: 55,
//                   alignment: Alignment.center,
//                   child: const Row(
//                     children: [
//                       Expanded(flex: 2, child: Text("infome a senha:")),
//                       Expanded(flex: 3, child: Text("senha")),
//                     ],
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 30,
//               ),
//               Container(
//                 width: double.infinity,
//                 margin: EdgeInsets.symmetric(
//                   horizontal: 30,
//                 ),
//                 alignment: Alignment.center,
//                 child: TextButton(
//                   onPressed: () {
//                     // Sua ação a ser executada quando o botão for pressionado
//                   },
//                   style: ButtonStyle(
//                     shape: MaterialStateProperty.all(
//                       RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular((20)),
//                       )
//                     ),
//                     backgroundColor: MaterialStateProperty.all(
//                       Color.fromARGB(255, 96, 0, 137),
//                     ),
//                   ),
//                   child: const Text(
//                     "entrar",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ),
//               Expanded(child: Container()),
//               const SizedBox(
//                 height: 30,
//               ),
//               Container(
//                 margin: EdgeInsets.symmetric(
//                   horizontal: 30,
//                 ),
//                 color: Colors.green,
//                 height: 55,
//                 alignment: Alignment.center,
//                 child: const Text("esqueci a senha"),
//               ),
//               Container(
//                 margin: EdgeInsets.symmetric(
//                   horizontal: 30,
//                 ),
//                 color: Colors.green,
//                 height: 55,
//                 alignment: Alignment.center,
//                 child: const Text("criar conta"),
//               ),
//               const SizedBox(
//                 height: 30,
//               ),
//             ]),
//         ),
//         ),
      
//     );
//   }
// }
