#!/bin/bash

# This script to automatically create all the necessary files
# UPD: Yep, I was unable to multi-line write to a file:(

# simple stateless template
function statelessPage {
    echo "" >> ./$snake_case.dart
    echo "class $camel_case extends StatelessWidget {" >> ./$snake_case.dart
    echo "  const $camel_case({Key? key}) : super(key: key);" >> ./$snake_case.dart
    echo "" >> ./$snake_case.dart
    echo "  @override" >> ./$snake_case.dart
    echo "  Widget build(BuildContext context) {" >> ./$snake_case.dart
    echo "    return Container();" >> ./$snake_case.dart
    echo "  }" >> ./$snake_case.dart
    echo "}" >> ./$snake_case.dart
}

# layout_builder template
function builderPage {
    echo "" >> ./$snake_case.dart
    echo "class $camel_case extends StatelessWidget {" >> ./$snake_case.dart
    echo "  const $camel_case({Key? key}) : super(key: key);" >> ./$snake_case.dart
    echo "" >> ./$snake_case.dart
    echo "  @override" >> ./$snake_case.dart
    echo "  Widget build(BuildContext context) {" >> ./$snake_case.dart
    echo "    return const Scaffold(" >> ./$snake_case.dart
    echo "      body: ResponsiveBuilder(" >> ./$snake_case.dart
    echo "        desktop: desktop.$camel_case()," >> ./$snake_case.dart
    echo "        mobile: mobile.$camel_case()," >> ./$snake_case.dart
    echo "      )," >> ./$snake_case.dart
    echo "    );" >> ./$snake_case.dart
    echo "  }" >> ./$snake_case.dart
    echo "}" >> ./$snake_case.dart
}

echo "Enter page name (snake_case): "
read snake_case

camel_case=$(sed -E 's/(^|_)([a-z])/\U\2/g' <<< $snake_case)

cd ./lib/presentation

# create in ./builders folder
cd ./builders

echo part \'$snake_case.dart\'\; >> ./builder.dart
echo part of \'builder.dart\'\; > ./$snake_case.dart
builderPage

cd ../

# create in ./desktop folder
cd ./desktop

echo part \'pages/$snake_case.dart\'\; >> ./desktop.dart
cd ./pages
echo part of \'../desktop.dart\'\; > ./$snake_case.dart
statelessPage

cd ../../

# create in ./mobile folder
cd ./mobile

echo part \'pages/$snake_case.dart\'\; >> ./mobile.dart
cd ./pages
echo part of \'../mobile.dart\'\; > ./$snake_case.dart
statelessPage

cd ../../