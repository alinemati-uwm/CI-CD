ansible-playbook ./mainplay.yml --limit evetesters
python -m pytest ./Test/testospf.py --disable-warnings -s --verbose