Build notes on pastorale
========================

Install dependencies
--------------------

Run::

  sudo apt-get install libblas-dev liblapack-dev
  sudo apt install opencl-headers ocl-icd-opencl-dev

Building the binaries
---------------------

Run::

  cd EMsoft
  cd ../
  mkdir EMsoftBuild
  cd EMsoftBuild
  mkdir Release
  cd Release
  sudo cmake -DCMAKE_BUILD_TYPE=Release -DEMsoft_SDK=/mnt/opt/EMsoft/EMsoft_SDK ../../EMsoft
  sudo make -j
  cd ../
  mkdir Debug
  cd Debug
  sudo cmake -DCMAKE_BUILD_TYPE=Debug -DEMsoft_SDK=/mnt/opt/EMsoft/EMsoft_SDK ../../EMsoft
  sudo make -j

Update PATH variable
--------------------

For each user ``<user>``, add the following lines to the file at
``/home/<user>/.bashrc``::

  # Add path to EMsoft.
  export PATH="/mnt/opt/EMsoft/EMsoftBuild/Release/Bin:$PATH"
