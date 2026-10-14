.class public abstract Lcom/iflytek/speech/aidl/IWakeuper$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/speech/aidl/IWakeuper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/speech/aidl/IWakeuper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/speech/aidl/IWakeuper$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.iflytek.speech.aidl.IWakeuper"

.field static final TRANSACTION_cancel:I = 0x3

.field static final TRANSACTION_destroy:I = 0x5

.field static final TRANSACTION_isListening:I = 0x4

.field static final TRANSACTION_startListening:I = 0x1

.field static final TRANSACTION_stopListening:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.iflytek.speech.aidl.IWakeuper"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/iflytek/speech/aidl/IWakeuper;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.iflytek.speech.aidl.IWakeuper"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/iflytek/speech/aidl/IWakeuper;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/iflytek/speech/aidl/IWakeuper;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/iflytek/speech/aidl/IWakeuper$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/iflytek/speech/aidl/IWakeuper$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/iflytek/speech/aidl/IWakeuper;
    .locals 1

    .line 1
    sget-object v0, Lcom/iflytek/speech/aidl/IWakeuper$Stub$Proxy;->sDefaultImpl:Lcom/iflytek/speech/aidl/IWakeuper;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/iflytek/speech/aidl/IWakeuper;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/iflytek/speech/aidl/IWakeuper$Stub$Proxy;->sDefaultImpl:Lcom/iflytek/speech/aidl/IWakeuper;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 2
    sput-object p0, Lcom/iflytek/speech/aidl/IWakeuper$Stub$Proxy;->sDefaultImpl:Lcom/iflytek/speech/aidl/IWakeuper;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.iflytek.speech.aidl.IWakeuper"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_6

    if-eq p1, v0, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3
    invoke-interface {p0}, Lcom/iflytek/speech/aidl/IWakeuper;->destroy()V

    .line 4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 5
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6
    invoke-interface {p0}, Lcom/iflytek/speech/aidl/IWakeuper;->isListening()Z

    move-result p1

    .line 7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 9
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/speech/WakeuperListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/iflytek/speech/WakeuperListener;

    move-result-object p1

    .line 11
    invoke-interface {p0, p1}, Lcom/iflytek/speech/aidl/IWakeuper;->cancel(Lcom/iflytek/speech/WakeuperListener;)V

    .line 12
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 13
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/speech/WakeuperListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/iflytek/speech/WakeuperListener;

    move-result-object p1

    .line 15
    invoke-interface {p0, p1}, Lcom/iflytek/speech/aidl/IWakeuper;->stopListening(Lcom/iflytek/speech/WakeuperListener;)V

    .line 16
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 17
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    .line 19
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    .line 20
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/iflytek/speech/WakeuperListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/iflytek/speech/WakeuperListener;

    move-result-object p2

    .line 21
    invoke-interface {p0, p1, p2}, Lcom/iflytek/speech/aidl/IWakeuper;->startListening(Landroid/content/Intent;Lcom/iflytek/speech/WakeuperListener;)V

    .line 22
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 23
    :cond_6
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
