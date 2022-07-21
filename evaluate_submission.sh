# Enter folder for subtask 1
if [ -d subtask1 ]; then

  # Check number of sub-folders (submissions)
  N_DIR=`ls -d */ | wc -w`
  echo $N_DIR
  if [ $N_DIR -eq 3 ]; then

    for d in */ ; do
      cd $d

      # Check if `evaluate.sh` exists
      if [ -f "evaluate.sh" ]; then
        chmod u+x evaluate.sh

        # Copy test data into the submission sub-folder
        cp ~/test.txt ./

        # Your script should set up necessary environment, evaluate the model on `./test.txt`,
        # and print the micro-averaged F1 score to stdout (e.g. 0.839)
        ./evaluate.sh > task1_results.txt
      fi

      cd ../

    done
  fi
fi


# Enter folder for subtask 2
if [ -d subtask2 ]; then

  # Check number of sub-folders (submissions)
  N_DIR=`ls -d */ | wc -w`
  echo $N_DIR
  if [ $N_DIR -eq 3 ]; then

    for d in */ ; do
      cd $d

      # Check if `evaluate.sh` exists
      if [ -f "evaluate.sh" ]; then
        chmod u+x evaluate.sh

        # Copy test data into the submission sub-folder
        cp ~/test.jsonl ./

        # Your script should set up necessary environment, evaluate the model on `./test.jsonl`,
        # and print the accuracy to stdout (e.g. 0.60)
        ./evaluate.sh > task2_results.txt
      fi

      cd ../

    done
  fi
fi

