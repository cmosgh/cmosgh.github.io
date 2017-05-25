{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "fullname" -}}
{{- printf "%s-%s-%s" .Chart.Name .Release.Name .Values.Id | quote | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}


{{- define "server-fullname" -}}
{{- printf "%s-%s-%s" .Values.Server.Name .Release.Name .Values.Id | trunc 63 | trimSuffix "-" -}}
{{- end -}}


{{- define "worker-fullname" -}}
{{- printf "%s-%s-%s" .Values.Worker.Name .Release.Name .Values.Id | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "mongo-fullname" -}}
{{- printf "%s-%s-%s" .Values.Mongo.Name .Release.Name .Values.Id | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "mongo-controller-port" -}}
{{- printf "%s%s" "mcp" .Values.Id -}}
{{- end -}}

{{- define "mongo-service" -}}
{{- printf "%s%s" "ms" .Values.Id | trunc 15 | trimSuffix "-" -}}
{{- end -}}

{{- define "mongo-uri" -}}
{{- printf "mongodb://%s%s/kf_%s" "ms" .Values.Id .Values.Id | trimSuffix "-" -}}
{{- end -}}

{{- define "mongo-hostpath" -}}
{{- printf "%s/%s-%s" .Values.Mongo.Volumes.HostPath .Chart.Name .Values.Id | trimSuffix "-" -}}
{{- end -}}

{{- define "mongo-nfspath" -}}
{{- printf "%s/%s-%s" .Values.Mongo.Volumes.HostPath .Chart.Name .Values.Id | trimSuffix "-" -}}
{{- end -}}

{{- define "host-fullname" -}}
{{- printf "%s.knowledgeflow.io" .Values.Branch -}}
{{- end -}}