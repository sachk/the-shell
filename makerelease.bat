start cmd /K "scss --no-cache --unix-newlines --sourcemap=none --style compressed --force --update assets\scss\screen.scss:assets\css\screen.css && exit"
timeout 5
del release.zip
7z a -tzip release.zip .\assets\ .\partials\ .\*.hbs .\package.json .\LICENSE.txt -x!assets\scss\ -r