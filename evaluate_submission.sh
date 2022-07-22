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
        # and output the micro-averaged F1 score to a text file named `results.out`
        ./evaluate.sh
        
        # File `results.out` should have a single line with the micro F1 score (e.g. "0.839")
        echo results.out
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
        # and output the accuracy to a text file named `results.out`
        ./evaluate.sh
        
        # File `results.out` should have a single line with the accuracy (e.g. "0.60")
        echo results.out
      fi

      cd ../

    done
  fi
fi

