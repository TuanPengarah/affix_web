import 'package:affix_web/config/app_localizations.dart';
import 'package:affix_web/config/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RepairFormMobile extends StatefulWidget {
  @override
  _RepairFormMobileState createState() => _RepairFormMobileState();
}

class _RepairFormMobileState extends State<RepairFormMobile> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _name = TextEditingController();
  TextEditingController _phoneNmber = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _model = TextEditingController();
  TextEditingController _kerosakkan = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        width: MediaQuery.of(context).size.width - 10,
        height: 850,
        decoration: BoxDecoration(
          color: kColorGrey,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: SelectableText(
                  '${AppLocalizations.of(context).translate('start')}',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  width: 100,
                  child: Divider(
                    thickness: 1,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  controller: _name,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  textCapitalization: TextCapitalization.words,
                  keyboardType: TextInputType.name,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '${AppLocalizations.of(context).translate('emptyfield')}';
                    }
                    return null;
                  },
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    filled: true,
                    labelStyle: TextStyle(color: Colors.white),
                    labelText:
                        '${AppLocalizations.of(context).translate('name')}',
                    hintText: 'Abdullah',
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  controller: _phoneNmber,
                  textInputAction: TextInputAction.next,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '${AppLocalizations.of(context).translate('emptyfield')}';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    filled: true,
                    labelStyle: TextStyle(color: Colors.white),
                    labelText:
                        '${AppLocalizations.of(context).translate('phonenumber')}',
                    hintText: '012-3456789',
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  controller: _email,
                  textInputAction: TextInputAction.next,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '${AppLocalizations.of(context).translate('emptyfield')}';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    filled: true,
                    labelStyle: TextStyle(color: Colors.white),
                    labelText: 'Email',
                    hintText: 'abdullah@mail.com',
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  controller: _model,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.name,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  textCapitalization: TextCapitalization.words,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '${AppLocalizations.of(context).translate('emptyfield')}';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    filled: true,
                    labelStyle: TextStyle(color: Colors.white),
                    labelText: 'Model',
                    hintText: 'Huawei Nova 3i, iPhone 8...',
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  // maxLines: 3,
                  controller: _kerosakkan,
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.done,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  textCapitalization: TextCapitalization.words,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '${AppLocalizations.of(context).translate('emptyfield')}';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    filled: true,
                    labelStyle: TextStyle(color: Colors.white),
                    labelText:
                        '${AppLocalizations.of(context).translate('damage')}',
                    hintText: '${AppLocalizations.of(context).translate('eg')}',
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: ElevatedButton.icon(
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          _email.clear();
                          _kerosakkan.clear();
                          _model.clear();
                          _name.clear();
                          _phoneNmber.clear();
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Processing Data')));
                        }
                      },
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      icon: Icon(Icons.email),
                      label: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 30),
                        child: Text(
                          '${AppLocalizations.of(context).translate('send')}',
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
