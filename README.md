```bash
digdag run -a workflow.dig \
  -p copied_library_xml_path='/path/to/iTunes Library/iTunes Library.xml' \
  -p prepare_library_copy_cmd=/path/to/some/script.sh \
  -p do_file_backup_cmd=/path/to/another/script.sh \
  -p bq_keyfile=/path/to/keyfile.json \
  -p bq_project_name=*** \
  -p bq_dataset_name=itunes_library_xml
```
