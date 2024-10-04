#!/bin/bash

# Create the main directory and subdirectories
mkdir -p submission_reminder_app_Hassan-Adelani-Luqman/{app,modules,assets,config}

# Create reminder.sh file with the specified content
echo -e '#!/bin/bash\necho "Reminder: Please submit your assignments!"' > submission_reminder_app_Hassan-Adelani-Luqman/app/reminder.sh

# Create functions.sh file with the specified content
echo -e '#!/bin/bash\nfunction add_student {\n  echo "$1" >> ../assets/submissions.txt\n}' > submission_reminder_app_Hassan-Adelani-Luqman/modules/functions.sh

# Create config.env file with the specified content
echo -e 'DATABASE_URL=your_database_url\nAPI_KEY=your_api_key' > submission_reminder_app_Hassan-Adelani-Luqman/config/config.env

# Create submissions.txt file with initial records
echo -e 'John Doe\nJane Smith\nAlice Johnson\nBob Brown\nCharlie White' > submission_reminder_app_Hassan-Adelani-Luqman/assets/submissions.txt

# Create startup.sh file that starts the reminder app
echo -e '#!/bin/bash\nbash app/reminder.sh' > submission_reminder_app_Hassan-Adelani-Luqman/startup.sh

# Make all scripts executable
chmod +x submission_reminder_app_Hassan-Adelani-Luqman/app/reminder.sh submission_reminder_app_Hassan-Adelani-Luqman/modules/functions.sh submission_reminder_app_Hassan-Adelani-Luqman/startup.sh

