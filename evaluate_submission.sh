# Installing conda
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh
bash ~/miniconda.sh -b -p
rm ~/miniconda.sh
export PATH="$HOME/miniconda3/bin:$PATH"

# Installing docker
apt-get update
apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
apt-get update
apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin


# Install command line tool `gdrive` to interface with Google Drive
wget -P ~/ https://github.com/prasmussen/gdrive/releases/download/2.1.1/gdrive_2.1.1_linux_386.tar.gz
tar -xf ~/gdrive_2.1.1_linux_386.tar.gz
mv ~/gdrive ~/.local/bin
rm ~/gdrive_2.1.1_linux_386.tar.gz


##
## Here we will download test data files (test.txt and test.jsonl) into the home directory
##

# This CSV file contains the Google Drive ID for all registered teams
input="RegistrationFolders.csv"

# Read CSV file line-by-line
sed 1d $input | while IFS=, read -r email folder_id
do
  # Copy GDrive directory to local
  DIRNAME=$(gdrive info $folder_id | grep Name | cut -d ":" -f2 )
  gdrive download -f -r $folder_id
  cd $DIRNAME
  echo $DIRNAME

  ######## Subtask-1 ########

  # Enter subtask folder if exists
  if [ -d subtask1 ]; then
    cd subtask1
    echo subtask1

    TASK_FOLDER_ID=`gdrive list --query "name contains 'subtask1' and '$folder_id' in parents" -m 1 | sed -n '2 p' | cut -d " " -f1`

    # Check number of sub-folders (submissions)
    N_DIR=`ls -d */ | wc -w`
    echo $N_DIR
    if [ $N_DIR -le 3 ]; then

      for d in */ ; do
        cd $d

        SUBMISSION_FOLDER_ID=`gdrive list --query "name contains '$d' and '$TASK_FOLDER_ID' in parents" -m 1 | sed -n '2 p' | cut -d " " -f1`

        # Check if `evaluate.sh` exists
        if [ -f "evaluate.sh" ]; then
          chmod u+x evaluate.sh

          # Copy test data into the submission sub-folder
          cp ~/test.txt ./

          # Your script should set up necessary environment, evaluate the model on `./test.txt`,
          # and output the micro-averaged F1 score to a text file named `results.out`
          ./evaluate.sh &> evaluation.out
          gdrive upload -p $SUBMISSION_FOLDER_ID evaluation.out
          
          # File `results.out` should have a single line with the micro F1 score (e.g. "0.839")
          cat results.out
        fi

        cd ../

      done
    fi

    cd ../

  fi

  ######## Subtask-2 ########

  # Enter subtask folder if exists
  if [ -d subtask2 ]; then
    cd subtask2
    echo subtask2

    TASK_FOLDER_ID=`gdrive list --query "name contains 'subtask2' and '$folder_id' in parents" -m 1 | sed -n '2 p' | cut -d " " -f1`

    # Check number of sub-folders (submissions)
    N_DIR=`ls -d */ | wc -w`
    echo $N_DIR
    if [ $N_DIR -le 3 ]; then

      for d in */ ; do
        cd $d

        SUBMISSION_FOLDER_ID=`gdrive list --query "name contains '$d' and '$TASK_FOLDER_ID' in parents" -m 1 | sed -n '2 p' | cut -d " " -f1`

        # Check if `evaluate.sh` exists
        if [ -f "evaluate.sh" ]; then
          chmod u+x evaluate.sh

          # Copy test data into the submission sub-folder
          cp ~/test.jsonl ./

          # Your script should set up necessary environment, evaluate the model on `./test.jsonl`,
          # and output the accuracy to a text file named `results.out`
          ./evaluate.sh &> evaluation.out
          gdrive upload -p $SUBMISSION_FOLDER_ID evaluation.out
          
          # File `results.out` should have a single line with the accuracy (e.g. "0.60")
          cat results.out
        fi

        cd ../

      done
    fi

    cd ../

  fi

  ######## Clean-up ########

  # Remove submission directory
  rm -rf $DIRNAME

  # Recurively deactivate and remove all conda environments 
  for i in $(seq ${CONDA_SHLVL}); do
    conda deactivate
  done
  rm -rf ~/miniconda3/envs/*

  # Stop and remove all docker containers & images
  docker stop $(docker ps -aq)
  docker rm $(docker ps -aq)
  docker rmi $(docker images -q)

done
