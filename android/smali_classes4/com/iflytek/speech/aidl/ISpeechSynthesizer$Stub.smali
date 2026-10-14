.class public abstract Lcom/iflytek/speech/aidl/ISpeechSynthesizer$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/speech/aidl/ISpeechSynthesizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/speech/aidl/ISpeechSynthesizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/speech/aidl/ISpeechSynthesizer$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.iflytek.speech.aidl.ISpeechSynthesizer"

.field static final TRANSACTION_getLocalSpeakerList:I = 0x7

.field static final TRANSACTION_isSpeaking:I = 0x6

.field static final TRANSACTION_pauseSpeaking:I = 0x3

.field static final TRANSACTION_resumeSpeaking:I = 0x4

.field static final TRANSACTION_startSpeaking:I = 0x2

.field static final TRANSACTION_stopSpeaking:I = 0x5

.field static final TRANSACTION_synthesizeToUrl:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.iflytek.speech.aidl.ISpeechSynthesizer"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/iflytek/speech/aidl/ISpeechSynthesizer;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.iflytek.speech.aidl.ISpeechSynthesizer"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/iflytek/speech/aidl/ISpeechSynthesizer;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/iflytek/speech/aidl/ISpeechSynthesizer;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/iflytek/speech/aidl/ISpeechSynthesizer$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/iflytek/speech/aidl/ISpeechSynthesizer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/iflytek/speech/aidl/ISpeechSynthesizer;
    .locals 1

    .line 1
    sget-object v0, Lcom/iflytek/speech/aidl/ISpeechSynthesizer$Stub$Proxy;->sDefaultImpl:Lcom/iflytek/speech/aidl/ISpeechSynthesizer;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/iflytek/speech/aidl/ISpeechSynthesizer;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/iflytek/speech/aidl/ISpeechSynthesizer$Stub$Proxy;->sDefaultImpl:Lcom/iflytek/speech/aidl/ISpeechSynthesizer;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 2
    sput-object p0, Lcom/iflytek/speech/aidl/ISpeechSynthesizer$Stub$Proxy;->sDefaultImpl:Lcom/iflytek/speech/aidl/ISpeechSynthesizer;

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

    const-string v1, "com.iflytek.speech.aidl.ISpeechSynthesizer"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_2

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 2
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3
    invoke-interface {p0}, Lcom/iflytek/speech/aidl/ISpeechSynthesizer;->getLocalSpeakerList()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 6
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 7
    invoke-interface {p0}, Lcom/iflytek/speech/aidl/ISpeechSynthesizer;->isSpeaking()Z

    move-result p1

    .line 8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 9
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 10
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/speech/SynthesizerListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/iflytek/speech/SynthesizerListener;

    move-result-object p1

    .line 12
    invoke-interface {p0, p1}, Lcom/iflytek/speech/aidl/ISpeechSynthesizer;->stopSpeaking(Lcom/iflytek/speech/SynthesizerListener;)I

    move-result p1

    .line 13
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 14
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 15
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/speech/SynthesizerListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/iflytek/speech/SynthesizerListener;

    move-result-object p1

    .line 17
    invoke-interface {p0, p1}, Lcom/iflytek/speech/aidl/ISpeechSynthesizer;->resumeSpeaking(Lcom/iflytek/speech/SynthesizerListener;)I

    move-result p1

    .line 18
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 19
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 20
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/speech/SynthesizerListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/iflytek/speech/SynthesizerListener;

    move-result-object p1

    .line 22
    invoke-interface {p0, p1}, Lcom/iflytek/speech/aidl/ISpeechSynthesizer;->pauseSpeaking(Lcom/iflytek/speech/SynthesizerListener;)I

    move-result p1

    .line 23
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 24
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 25
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 27
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/content/Intent;

    .line 28
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/speech/SynthesizerListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/iflytek/speech/SynthesizerListener;

    move-result-object p1

    .line 29
    invoke-interface {p0, v2, p1}, Lcom/iflytek/speech/aidl/ISpeechSynthesizer;->startSpeaking(Landroid/content/Intent;Lcom/iflytek/speech/SynthesizerListener;)I

    move-result p1

    .line 30
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 31
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 32
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 34
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/content/Intent;

    .line 35
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/speech/SynthesizerListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/iflytek/speech/SynthesizerListener;

    move-result-object p1

    .line 36
    invoke-interface {p0, v2, p1}, Lcom/iflytek/speech/aidl/ISpeechSynthesizer;->synthesizeToUrl(Landroid/content/Intent;Lcom/iflytek/speech/SynthesizerListener;)I

    move-result p1

    .line 37
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 38
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 39
    :cond_2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
