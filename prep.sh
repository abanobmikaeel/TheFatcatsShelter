variable=$false

while read line
do
    if [ "$line" = "#------------------------------------------------" ] && [ !"$variable" ]; then
        variable=!$variable
        line=""
    fi
    if [ "!$variable" ]; then
        echo "$line" > ~/.bash_profile
    fi
done < ~/.bash_profile



echo "#------------------------------------------------" >> ~/.bash_profile
echo "alias fcsnarf='curl -Ls https://raw.githubusercontent.com/abanobmikaeel/TheFatcatsShelter/develop/snarf.sh | bash'" >> ~/.bash_profile
echo "alias fcswat='curl -Ls https://raw.githubusercontent.com/abanobmikaeel/TheFatcatsShelter/develop/SWATcat.sh | bash'" >> ~/.bash_profile
echo "alias fcgardfiel='curl -Ls https://raw.githubusercontent.com/abanobmikaeel/TheFatcatsShelter/develop/gardfiel.sh | bash'" >> ~/.bash_profile
echo "alias fccheshire='curl -Ls https://raw.githubusercontent.com/abanobmikaeel/TheFatcatsShelter/develop/cheshire.sh | bash'" >> ~/.bash_profile
echo "alias fctigger='curl -Ls https://raw.githubusercontent.com/abanobmikaeel/TheFatcatsShelter/develop/tigger.sh | bash'" >> ~/.bash_profile
echo "alias fcupdate='curl -Ls https://raw.githubusercontent.com/abanobmikaeel/TheFatcatsShelter/fcTerminal/prep.sh | bash'" >> ~/.bash_profile
echo "#------------------------------------------------" >> ~/.bash_profile
echo "source ~/.bash_profile"
source ~/.bash_profile
echo "updated"
