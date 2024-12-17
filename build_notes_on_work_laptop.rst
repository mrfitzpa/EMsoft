Build notes on work laptop
==========================

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
  sudo cmake -DCMAKE_BUILD_TYPE=Release -DEMsoft_SDK=/opt/EMsoft_SDK ../../EMsoft
  sudo make -j
  cd ../
  mkdir Debug
  cd Debug
  sudo cmake -DCMAKE_BUILD_TYPE=Debug -DEMsoft_SDK=/opt/EMsoft_SDK ../../EMsoft
  sudo make -j

Update PATH variable
--------------------

Add the following lines to your ``~/.bashrc`` file::

  # Add path to EMsoft.
  export PATH="/home/matthew/research/uvic/git-repos/EMsoftBuild/Release/Bin:$PATH"
