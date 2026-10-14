.class public final enum Lcn/mucang/sundial/android/tcp/message/training/receive/VoiceBroadcastResponse$Result;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/sundial/android/tcp/message/training/receive/VoiceBroadcastResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/sundial/android/tcp/message/training/receive/VoiceBroadcastResponse$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/sundial/android/tcp/message/training/receive/VoiceBroadcastResponse$Result;

.field public static final enum TEXT_BROADCAST:Lcn/mucang/sundial/android/tcp/message/training/receive/VoiceBroadcastResponse$Result;

.field public static final enum TEXT_DIALOG:Lcn/mucang/sundial/android/tcp/message/training/receive/VoiceBroadcastResponse$Result;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/training/receive/VoiceBroadcastResponse$Result;

    const-string v1, "TEXT_BROADCAST"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcn/mucang/sundial/android/tcp/message/training/receive/VoiceBroadcastResponse$Result;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/mucang/sundial/android/tcp/message/training/receive/VoiceBroadcastResponse$Result;->TEXT_BROADCAST:Lcn/mucang/sundial/android/tcp/message/training/receive/VoiceBroadcastResponse$Result;

    .line 2
    new-instance v1, Lcn/mucang/sundial/android/tcp/message/training/receive/VoiceBroadcastResponse$Result;

    const-string v4, "TEXT_DIALOG"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcn/mucang/sundial/android/tcp/message/training/receive/VoiceBroadcastResponse$Result;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcn/mucang/sundial/android/tcp/message/training/receive/VoiceBroadcastResponse$Result;->TEXT_DIALOG:Lcn/mucang/sundial/android/tcp/message/training/receive/VoiceBroadcastResponse$Result;

    new-array v4, v5, [Lcn/mucang/sundial/android/tcp/message/training/receive/VoiceBroadcastResponse$Result;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    .line 3
    sput-object v4, Lcn/mucang/sundial/android/tcp/message/training/receive/VoiceBroadcastResponse$Result;->$VALUES:[Lcn/mucang/sundial/android/tcp/message/training/receive/VoiceBroadcastResponse$Result;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/VoiceBroadcastResponse$Result;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/sundial/android/tcp/message/training/receive/VoiceBroadcastResponse$Result;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/sundial/android/tcp/message/training/receive/VoiceBroadcastResponse$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/sundial/android/tcp/message/training/receive/VoiceBroadcastResponse$Result;

    return-object p0
.end method

.method public static values()[Lcn/mucang/sundial/android/tcp/message/training/receive/VoiceBroadcastResponse$Result;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/sundial/android/tcp/message/training/receive/VoiceBroadcastResponse$Result;->$VALUES:[Lcn/mucang/sundial/android/tcp/message/training/receive/VoiceBroadcastResponse$Result;

    invoke-virtual {v0}, [Lcn/mucang/sundial/android/tcp/message/training/receive/VoiceBroadcastResponse$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/sundial/android/tcp/message/training/receive/VoiceBroadcastResponse$Result;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/VoiceBroadcastResponse$Result;->value:I

    return v0
.end method
