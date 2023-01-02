### Install Conan
```shell
python -m venv ~/.virtualenvs/template-project
source ~/.virtualenvs/template-project/bin/activate
pip install conan
```

If you don't already have a default profile, or it uses the old ABI
```shell
conan profile new default --detect
conan profile update settings.compiler.libcxx=libstdc++11 default
```

If you want custom compilers in the Conan profile, edit the settings `compiler` and `compiler.version`. Remember to
also and set the environment variables `CC` and `CXX`.

### Install Conan dependencies
```shell
mkdir build
conan install ../src
```

### Build
Use the same compilers as in your default profile
```shell
cmake ../../src/ -GNinja -DCMAKE_C_COMPILER=... -DCMAKE_CXX_COMPILER=...
```