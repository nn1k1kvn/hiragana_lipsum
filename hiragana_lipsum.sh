# устанавливаем xclip  
dpkg-query -W --showformat='${Status}\n' xclip 2>/dev/null | grep  'install ok installed'  > /dev/null 2>&1 ; [[ $? -eq 0  ]] || sudo apt-get install xclip > /dev/null 2>&1 && export DISPLAY=:0
# устанавливаем изолированную среду Python. 
curl -Os https://pypi.python.org/packages/source/v/virtualenv/virtualenv-15.0.1.tar.gz
tar xzf virtualenv-15.0.1.tar.gz
cd virtualenv-15.0.1
virtualenv myVE  #python virtualenv.py myVE
. myVE/bin/activate
#инсталируем romkan
pip install romkan
#запускаем
temp=$(pwgen -c -B -s 20000 -A -0 | sed -r 's/\<wa\>/ha/g' ) &&  python -c "import sys; import romkan; print( romkan.to_hiragana(sys.argv[1]).encode('utf8'))" "$temp" | sed -e 's/[a-z]\+//g'|  sed 's/\(.\)\1\+/\1/g'| grep -Eo '.{1000}$' |  xclip -i
#деактивируем
deactivate
cd ..
rm -r virtualenv-15.0.1
rm virtualenv-15.0.1.tar.gz

