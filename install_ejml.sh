echo "Install EJML Library For Working with Matrix"
cd $HOME
mkdir -p lib/java
cd $HOME/lib/java
# Site :: https://github.com/lessthanoptimal/ejml
#      :: https://ejml.org/wiki/index.php?title=Main_Page
git clone git@github.com:lessthanoptimal/ejml.git
cd ejml
git checkout  v0.44.0
chmod u+x gradlew
./gradlew autogenerate
./gradlew publishToMavenLocal
./gradlew createLibraryDirectory
./gradlew oneJar
