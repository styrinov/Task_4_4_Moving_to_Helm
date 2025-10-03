{{- define "backend.name" -}}
{{- default .Chart.Name .Chart.Name -}}
{{- end -}}

{{- define "backend.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "backend.name" .) -}}
{{- end -}}
