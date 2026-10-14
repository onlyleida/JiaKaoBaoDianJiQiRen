.class public Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest;
.super Lcn/mucang/sundial/android/tcp/message/receive/BaseReceiveMessage;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/android/tcp/message/ReceiveMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$UpdateControl;,
        Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$ConnectControl;,
        Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$PowerOffControl;,
        Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$ResetControl;,
        Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$RecoverControl;,
        Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$TurnOffConnectivityControl;,
        Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$FlightModeControl;,
        Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$DeviceControl;
    }
.end annotation


# static fields
.field private static final MESSAGE_ID:I = 0x8105


# instance fields
.field private control:Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$DeviceControl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/android/tcp/message/receive/BaseReceiveMessage;-><init>()V

    return-void
.end method

.method private static appendIfNotNull(Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, v0}, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest;->appendIfNotNull(Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;Ljava/lang/Object;Z)V

    return-void
.end method

.method private static appendIfNotNull(Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;Ljava/lang/Object;Z)V
    .locals 1

    if-eqz p1, :cond_2

    .line 2
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendString(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendString(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    instance-of v0, p1, [B

    if-eqz v0, :cond_2

    .line 7
    new-instance v0, Ljava/lang/String;

    check-cast p1, [B

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v0}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendString(Ljava/lang/String;)V

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    const/16 p1, 0x3b

    .line 8
    invoke-virtual {p0, p1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBYTE(I)V

    :cond_3
    return-void
.end method

.method private static appendIfNotNull(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 9
    invoke-static {p0, p1, v0}, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest;->appendIfNotNull(Ljava/lang/StringBuilder;Ljava/lang/Object;Z)V

    return-void
.end method

.method private static appendIfNotNull(Ljava/lang/StringBuilder;Ljava/lang/Object;Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 10
    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    .line 11
    new-instance v0, Ljava/lang/String;

    check-cast p1, [B

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    const/16 p1, 0x3b

    .line 13
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    return-void
.end method


# virtual methods
.method public getControl()Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$DeviceControl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest;->control:Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$DeviceControl;

    return-object v0
.end method

.method public getId()I
    .locals 1

    const v0, 0x8105

    return v0
.end method

.method public init([B)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    aget-byte v0, p1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    new-instance p1, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$FlightModeControl;

    invoke-direct {p1}, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$FlightModeControl;-><init>()V

    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest;->control:Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$DeviceControl;

    goto :goto_0

    .line 3
    :pswitch_1
    new-instance p1, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$TurnOffConnectivityControl;

    invoke-direct {p1}, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$TurnOffConnectivityControl;-><init>()V

    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest;->control:Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$DeviceControl;

    goto :goto_0

    .line 4
    :pswitch_2
    new-instance p1, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$RecoverControl;

    invoke-direct {p1}, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$RecoverControl;-><init>()V

    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest;->control:Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$DeviceControl;

    goto :goto_0

    .line 5
    :pswitch_3
    new-instance p1, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$ResetControl;

    invoke-direct {p1}, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$ResetControl;-><init>()V

    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest;->control:Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$DeviceControl;

    goto :goto_0

    .line 6
    :pswitch_4
    new-instance p1, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$PowerOffControl;

    invoke-direct {p1}, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$PowerOffControl;-><init>()V

    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest;->control:Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$DeviceControl;

    goto :goto_0

    .line 7
    :pswitch_5
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$ConnectControl;

    invoke-direct {v0, p1}, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$ConnectControl;-><init>([B)V

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest;->control:Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$DeviceControl;

    goto :goto_0

    .line 8
    :pswitch_6
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$UpdateControl;

    invoke-direct {v0, p1}, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$UpdateControl;-><init>([B)V

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest;->control:Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest$DeviceControl;

    :goto_0
    return-void

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
