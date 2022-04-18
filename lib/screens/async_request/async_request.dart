import 'package:first_bootcamp/assets/strings/strings_app.dart';
import 'package:first_bootcamp/screens/async_request/model/placeholder_model.dart';
import 'package:first_bootcamp/screens/async_request/service/http_service.dart';
import 'package:first_bootcamp/theme/colors_app.dart';
import 'package:first_bootcamp/theme/text_styles_app.dart';
import 'package:flutter/material.dart';

class AsyncRequestPage extends StatefulWidget {
  const AsyncRequestPage({Key? key}) : super(key: key);

  @override
  State<AsyncRequestPage> createState() => _AsyncRequestPageState();
}

class _AsyncRequestPageState extends State<AsyncRequestPage> {
  final _service = HttpService();
  List<PlaceholderModel> _placeholderModelList = [];
  Widget _body = Container();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(StringsApp.mainScreenTaskItemFourthText),
      ),
      body: _body,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          setState(() {
            _body = const Center(
              child: CircularProgressIndicator(),
            );
          });
          _placeholderModelList = await _service.getPosts();
          setState(() {
            _body = _BodyList(modelList: _placeholderModelList);
          });
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: const Icon(
          Icons.edit,
          color: ColorsApp.black,
        ),
      ),
    );
  }
}

class _BodyList extends StatelessWidget {
  const _BodyList({
    Key? key,
    required this.modelList,
  }) : super(key: key);

  final List<PlaceholderModel> modelList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemCount: modelList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(8.0),
              ),
              child: SizedBox(
                height: 271.0,
                width: double.infinity,
                child: Column(
                  children: [
                    Image.network(
                      modelList[index].url,
                      height: 207.0,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      height: 64.0,
                      width: double.infinity,
                      color: Colors.blue,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          modelList[index].title,
                          style: TextStylesApp.normalTextStyle.andHeight(1.7),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
