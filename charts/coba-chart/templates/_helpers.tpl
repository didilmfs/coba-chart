{{/*
Chart name and version
*/}}
{{- define "coba-chart.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels  
*/}}
{{- define "coba-chart.labels" -}}
helm.sh/chart: {{ include "coba-chart.chart" . }}
{{ include "coba-chart.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels   
*/}}
{{- define "coba-chart.selectorLabels" -}}
app.kubernetes.io/name: {{ .Release.Name }}
{{- end }}
