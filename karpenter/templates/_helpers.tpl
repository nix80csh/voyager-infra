{{- define "hello-chart.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 -}}
{{- end -}}

{{- define "hello-chart.fullname" -}}
{{- printf "%s-%s" (include "hello-chart.name" .) .Release.Name | trunc 63 -}}
{{- end -}}