{{- define "oci-push-smoke.name" -}}
{{- .Chart.Name -}}
{{- end -}}

{{- define "oci-push-smoke.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
