.class public abstract Lcom/iflytek/speech/RecognizerListener$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/speech/RecognizerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/speech/RecognizerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/speech/RecognizerListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.iflytek.speech.RecognizerListener"

.field static final TRANSACTION_onBeginOfSpeech:I = 0x2

.field static final TRANSACTION_onEndOfSpeech:I = 0x3

.field static final TRANSACTION_onError:I = 0x5

.field static final TRANSACTION_onEvent:I = 0x6

.field static final TRANSACTION_onResult:I = 0x4

.field static final TRANSACTION_onVolumeChanged:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.iflytek.speech.RecognizerListener"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/iflytek/speech/RecognizerListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.iflytek.speech.RecognizerListener"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/iflytek/speech/RecognizerListener;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/iflytek/speech/RecognizerListener;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/iflytek/speech/RecognizerListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/iflytek/speech/RecognizerListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/iflytek/speech/RecognizerListener;
    .locals 1

    .line 1
    sget-object v0, Lcom/iflytek/speech/RecognizerListener$Stub$Proxy;->sDefaultImpl:Lcom/iflytek/speech/RecognizerListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/iflytek/speech/RecognizerListener;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/iflytek/speech/RecognizerListener$Stub$Proxy;->sDefaultImpl:Lcom/iflytek/speech/RecognizerListener;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 2
    sput-object p0, Lcom/iflytek/speech/RecognizerListener$Stub$Proxy;->sDefaultImpl:Lcom/iflytek/speech/RecognizerListener;

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

    const-string v1, "com.iflytek.speech.RecognizerListener"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_3

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

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroid/os/Bundle;

    .line 8
    :cond_0
    invoke-interface {p0, p1, p3, p4, v2}, Lcom/iflytek/speech/RecognizerListener;->onEvent(IIILandroid/os/Bundle;)V

    return v0

    .line 9
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 11
    invoke-interface {p0, p1}, Lcom/iflytek/speech/RecognizerListener;->onError(I)V

    return v0

    .line 12
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 14
    sget-object p1, Lcom/iflytek/speech/RecognizerResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/iflytek/speech/RecognizerResult;

    .line 15
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 16
    :goto_0
    invoke-interface {p0, v2, p1}, Lcom/iflytek/speech/RecognizerListener;->onResult(Lcom/iflytek/speech/RecognizerResult;Z)V

    return v0

    .line 17
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 18
    invoke-interface {p0}, Lcom/iflytek/speech/RecognizerListener;->onEndOfSpeech()V

    return v0

    .line 19
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 20
    invoke-interface {p0}, Lcom/iflytek/speech/RecognizerListener;->onBeginOfSpeech()V

    return v0

    .line 21
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 23
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 24
    invoke-interface {p0, p1, p2}, Lcom/iflytek/speech/RecognizerListener;->onVolumeChanged(I[B)V

    return v0

    .line 25
    :cond_3
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
