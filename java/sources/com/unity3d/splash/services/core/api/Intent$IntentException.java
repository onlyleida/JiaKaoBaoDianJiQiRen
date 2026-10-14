package com.unity3d.splash.services.core.api;

/* JADX INFO: loaded from: classes6.dex */
class Intent$IntentException extends Exception {
    private Intent$IntentError error;
    private Object field;

    public Intent$IntentException(Intent$IntentError intent$IntentError, Object obj) {
        this.error = intent$IntentError;
        this.field = obj;
    }

    public Intent$IntentError getError() {
        return this.error;
    }

    public Object getField() {
        return this.field;
    }
}
