.class public abstract Lcom/iflytek/speech/aidl/ISpeechRecognizer$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/speech/aidl/ISpeechRecognizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/speech/aidl/ISpeechRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/speech/aidl/ISpeechRecognizer$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.iflytek.speech.aidl.ISpeechRecognizer"

.field static final TRANSACTION_buildGrammar:I = 0x5

.field static final TRANSACTION_cancel:I = 0x3

.field static final TRANSACTION_isListening:I = 0x4

.field static final TRANSACTION_startListening:I = 0x1

.field static final TRANSACTION_stopListening:I = 0x2

.field static final TRANSACTION_updateLexicon:I = 0x6

.field static final TRANSACTION_writeAudio:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.iflytek.speech.aidl.ISpeechRecognizer"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/iflytek/speech/aidl/ISpeechRecognizer;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.iflytek.speech.aidl.ISpeechRecognizer"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/iflytek/speech/aidl/ISpeechRecognizer;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/iflytek/speech/aidl/ISpeechRecognizer;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/iflytek/speech/aidl/ISpeechRecognizer$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/iflytek/speech/aidl/ISpeechRecognizer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/iflytek/speech/aidl/ISpeechRecognizer;
    .locals 1

    .line 1
    sget-object v0, Lcom/iflytek/speech/aidl/ISpeechRecognizer$Stub$Proxy;->sDefaultImpl:Lcom/iflytek/speech/aidl/ISpeechRecognizer;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/iflytek/speech/aidl/ISpeechRecognizer;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/iflytek/speech/aidl/ISpeechRecognizer$Stub$Proxy;->sDefaultImpl:Lcom/iflytek/speech/aidl/ISpeechRecognizer;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 2
    sput-object p0, Lcom/iflytek/speech/aidl/ISpeechRecognizer$Stub$Proxy;->sDefaultImpl:Lcom/iflytek/speech/aidl/ISpeechRecognizer;

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

    const-string v1, "com.iflytek.speech.aidl.ISpeechRecognizer"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_4

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/content/Intent;

    .line 5
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 8
    invoke-interface {p0, v2, p1, p4, p2}, Lcom/iflytek/speech/aidl/ISpeechRecognizer;->writeAudio(Landroid/content/Intent;[BII)V

    .line 9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 10
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 12
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/content/Intent;

    .line 13
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/speech/LexiconListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/iflytek/speech/LexiconListener;

    move-result-object p1

    .line 14
    invoke-interface {p0, v2, p1}, Lcom/iflytek/speech/aidl/ISpeechRecognizer;->updateLexicon(Landroid/content/Intent;Lcom/iflytek/speech/LexiconListener;)V

    .line 15
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 16
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 18
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/content/Intent;

    .line 19
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/speech/GrammarListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/iflytek/speech/GrammarListener;

    move-result-object p1

    .line 20
    invoke-interface {p0, v2, p1}, Lcom/iflytek/speech/aidl/ISpeechRecognizer;->buildGrammar(Landroid/content/Intent;Lcom/iflytek/speech/GrammarListener;)V

    .line 21
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 22
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 23
    invoke-interface {p0}, Lcom/iflytek/speech/aidl/ISpeechRecognizer;->isListening()Z

    move-result p1

    .line 24
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 25
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 26
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/speech/RecognizerListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/iflytek/speech/RecognizerListener;

    move-result-object p1

    .line 28
    invoke-interface {p0, p1}, Lcom/iflytek/speech/aidl/ISpeechRecognizer;->cancel(Lcom/iflytek/speech/RecognizerListener;)V

    .line 29
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 30
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/speech/RecognizerListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/iflytek/speech/RecognizerListener;

    move-result-object p1

    .line 32
    invoke-interface {p0, p1}, Lcom/iflytek/speech/aidl/ISpeechRecognizer;->stopListening(Lcom/iflytek/speech/RecognizerListener;)V

    .line 33
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 34
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 36
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/content/Intent;

    .line 37
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/speech/RecognizerListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/iflytek/speech/RecognizerListener;

    move-result-object p1

    .line 38
    invoke-interface {p0, v2, p1}, Lcom/iflytek/speech/aidl/ISpeechRecognizer;->startListening(Landroid/content/Intent;Lcom/iflytek/speech/RecognizerListener;)V

    .line 39
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 40
    :cond_4
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
