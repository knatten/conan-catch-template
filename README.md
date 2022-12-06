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

### Install Catch2
```shell
mkdir build
conan install ../src
```