python -m rasa_nlu.train -c nlu_model_config.json -o models --data data/nlu.md --fixed_model_name nlu  --project current --verbose

python -m rasa_core.train -s data/stories.md -d domain.yml -o models/dialogue

python -m rasa_core.run -d models/dialogue -u models/current/nlu
