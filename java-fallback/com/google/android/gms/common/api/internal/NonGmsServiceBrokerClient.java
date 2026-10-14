package com.google.android.gms.common.api.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.GmsClientSupervisor;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.Preconditions;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public final class NonGmsServiceBrokerClient implements Api.Client, ServiceConnection {
    private static final String zaa = null;
    private final String zab;
    private final String zac;
    private final ComponentName zad;
    private final Context zae;
    private final ConnectionCallbacks zaf;
    private final Handler zag;
    private final OnConnectionFailedListener zah;
    private IBinder zai;
    private boolean zaj;
    private String zak;
    private String zal;

    static {
        zaa = NonGmsServiceBrokerClient.class.getSimpleName();
    }

    @KeepForSdk
    public NonGmsServiceBrokerClient(Context r9, Looper r10, ComponentName r11, ConnectionCallbacks r12, OnConnectionFailedListener r13) {
        this(r9, r10, null, null, r11, r12, r13);
    }

    private final void zad() {
        if (Thread.currentThread() != this.zag.getLooper().getThread()) goto L6;
        return;
    L6:
        throw new IllegalStateException("This method should only run on the NonGmsServiceBrokerClient's handler thread.");
    }

    private final void zae(String r1) {
        String.valueOf(String.valueOf(this.zai)).length();
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final void connect(BaseGmsClient.ConnectionProgressReportCallbacks r4) {
        zad();
        zae("Connect started.");
        if (isConnected() == false) goto L19;
        disconnect("connect() called when already connected");     // Catch: Exception -> L18
    L19:
        Intent r0 = new Intent();     // Catch: SecurityException -> L15
        ComponentName r1 = this.zad;     // Catch: SecurityException -> L15
        if (r1 == null) goto L9;
        r0.setComponent(r1);     // Catch: SecurityException -> L15
    L10:
        boolean r2 = this.zae.bindService(r0, this, GmsClientSupervisor.getDefaultBindFlags());     // Catch: SecurityException -> L15
        this.zaj = r2;     // Catch: SecurityException -> L15
        if (r2 == true) goto L13;
        this.zai = null;
        this.zah.onConnectionFailed(new ConnectionResult(16));
    L13:
        zae("Finished connect.");
        return;
    L9:
        r0.setPackage(this.zab).setAction(this.zac);     // Catch: SecurityException -> L15
    L15:
        e = move-exception;
        this.zaj = false;
        this.zai = null;
        throw e;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final void disconnect() {
        zad();
        zae("Disconnect called.");
        this.zae.unbindService(this);     // Catch: IllegalArgumentException -> L6
    L4:
        this.zaj = false;
        this.zai = null;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final void dump(String r1, FileDescriptor r2, PrintWriter r3, String[] r4) {
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final Feature[] getAvailableFeatures() {
        return new Feature[0];
    }

    @KeepForSdk
    public IBinder getBinder() {
        zad();
        return this.zai;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final String getEndpointPackageName() {
        String r0 = this.zab;
        if (r0 == null) goto L5;
        return r0;
    L5:
        Preconditions.checkNotNull(this.zad);
        return this.zad.getPackageName();
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final String getLastDisconnectMessage() {
        return this.zak;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final int getMinApkVersion() {
        return 0;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final void getRemoteService(IAccountAccessor r1, Set<Scope> r2) {
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final Feature[] getRequiredFeatures() {
        return new Feature[0];
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final Set<Scope> getScopesForConnectionlessNonSignIn() {
        return Collections.emptySet();
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final IBinder getServiceBrokerBinder() {
        return null;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final Intent getSignInIntent() {
        return new Intent();
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final boolean isConnected() {
        zad();
        if (this.zai == null) goto L6;
        return true;
    L6:
        return false;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final boolean isConnecting() {
        zad();
        return this.zaj;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName r2, final IBinder r3) {
        this.zag.post(new zacg(this, r3));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName r2) {
        this.zag.post(new zacf(this));
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final void onUserSignOut(BaseGmsClient.SignOutCallbacks r1) {
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final boolean providesSignIn() {
        return false;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final boolean requiresAccount() {
        return false;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final boolean requiresGooglePlayServices() {
        return false;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final boolean requiresSignIn() {
        return false;
    }

    final /* synthetic */ void zaa(IBinder r2) {
        this.zaj = false;
        this.zai = r2;
        zae("Connected.");
        this.zaf.onConnected(new Bundle());
    }

    final /* synthetic */ void zab() {
        this.zaj = false;
        this.zai = null;
        zae("Disconnected.");
        this.zaf.onConnectionSuspended(1);
    }

    public final void zac(String r1) {
        this.zal = r1;
    }

    private NonGmsServiceBrokerClient(Context r2, Looper r3, String r4, String r5, ComponentName r6, ConnectionCallbacks r7, OnConnectionFailedListener r8) {
        this.zaj = false;
        this.zak = null;
        this.zae = r2;
        this.zag = new com.google.android.gms.internal.base.zaq(r3);
        this.zaf = r7;
        this.zah = r8;
        if (r4 == null) goto L7;
        if (r5 == null) goto L7;
        if (r6 != null) goto L11;
        r6 = null;
    L8:
        this.zab = r4;
        this.zac = r5;
        this.zad = r6;
        return;
    L11:
        throw new AssertionError("Must specify either package or component, but not both");
    L7:
        if (r6 == null) goto L11;
        goto L8
    }

    @KeepForSdk
    public NonGmsServiceBrokerClient(Context r9, Looper r10, String r11, String r12, ConnectionCallbacks r13, OnConnectionFailedListener r14) {
        this(r9, r10, r11, r12, null, r13, r14);
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final void disconnect(String r1) {
        zad();
        this.zak = r1;
        disconnect();
    }
}
