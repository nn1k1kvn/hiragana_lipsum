#устанавливаем виртуальную среду
curl -O https://pypi.python.org/packages/source/v/virtualenv/virtualenv-15.0.1.tar.gz
tar xvfz virtualenv-15.0.1.tar.gz
cd virtualenv-15.0.1
python virtualenv.py myVE
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

