{{- define "oci-push-smoke.name" -}}
{{- .Chart.Name -}}
{{- end -}}

{{- define "oci-push-smoke.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "oci-push-smoke.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" -}}
{{- end -}}

{{- define "oci-push-smoke.selectorLabels" -}}
app.kubernetes.io/name: {{ include "oci-push-smoke.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}

{{- define "oci-push-smoke.labels" -}}
helm.sh/chart: {{ include "oci-push-smoke.chart" . }}
{{ include "oci-push-smoke.selectorLabels" . }}
app.kubernetes.io/version: {{ .Values.image.tag | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}
