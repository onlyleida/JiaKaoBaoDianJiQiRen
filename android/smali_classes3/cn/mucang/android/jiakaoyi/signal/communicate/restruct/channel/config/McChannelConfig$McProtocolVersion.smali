.class public final enum Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "McProtocolVersion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;

.field public static final enum AI:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;

.field public static final enum Both:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;

.field public static final enum Transparent:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;

.field public static final enum V1:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;

.field public static final enum V2:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;

    const-string v1, "V1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;->V1:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;

    const-string v3, "V2"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;->V2:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;

    .line 3
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;

    const-string v5, "Both"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;->Both:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;

    .line 4
    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;

    const-string v7, "Transparent"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;->Transparent:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;

    .line 5
    new-instance v7, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;

    const-string v9, "AI"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;->AI:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;

    const/4 v9, 0x5

    new-array v9, v9, [Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;->$VALUES:[Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;->$VALUES:[Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;

    return-object v0
.end method
