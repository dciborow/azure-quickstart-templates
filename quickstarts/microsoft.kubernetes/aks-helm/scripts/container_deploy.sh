AGREEMENT_URL="https://management.azure.com/subscriptions/edf507a2-6235-46c5-b560-fd463ba2e771/providers/Microsoft.Marketplace/offerTypes/microsoft-container/publishers/bitnami/offers/airflow-container/plans/image/agreements/current?api-version=2018-03-01-beta"
CONFIG_URL="https://management.azure.com/subscriptions/edf507a2-6235-46c5-b560-fd463ba2e771/providers/Microsoft.Marketplace/offerTypes/microsoft-container/publishers/bitnami/offers/airflow-container/plans/image/configs/config8e95c8db-f45f-42e6-8d9b-8bfe67378d7b"
IMPORT_URL="https://management.azure.com/subscriptions/edf507a2-6235-46c5-b560-fd463ba2e771/providers/Microsoft.Marketplace/offerTypes/microsoft-container/publishers/bitnami/offers/airflow-container/plans/image/configs/config8e95c8db-f45f-42e6-8d9b-8bfe67378d7b/importImage"

az rest --uri $CONFIG_URL --method put \
  --body "{\"targetAcr\":\"$ACR_TARGET\",\"autoUpdate\":$ACR_AUTO_UPDATE,\"resourceGroup\":\"$ACR_RG\",\"tagOrDigest\":\"$ACR_TAG\"}"
