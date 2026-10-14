.class public final enum Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;

.field public static final enum BltClient:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;

.field public static final enum BltServer:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;

.field public static final enum Net:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;

.field public static final enum Serial:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;

.field public static final enum TypeC:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;


# instance fields
.field public final id:I

.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;

    const-string v1, "Serial"

    const/4 v2, 0x0

    const-string v3, "\u4e32\u53e3"

    invoke-direct {v0, v1, v2, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;->Serial:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;

    const-string v3, "Net"

    const/4 v4, 0x1

    const-string v5, "\u7f51\u53e3"

    invoke-direct {v1, v3, v4, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;->Net:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;

    .line 3
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;

    const-string v5, "BltServer"

    const/4 v6, 0x2

    const-string v7, "\u84dd\u7259\u6a21\u62df"

    invoke-direct {v3, v5, v6, v6, v7}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;->BltServer:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;

    .line 4
    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;

    const-string v7, "BltClient"

    const/4 v8, 0x3

    const-string v9, "\u84dd\u7259-\u4e32\u53e3"

    invoke-direct {v5, v7, v8, v8, v9}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;->BltClient:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;

    .line 5
    new-instance v7, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;

    const-string v9, "TypeC"

    const/4 v10, 0x4

    const-string v11, "TypeC-\u4e32\u53e3"

    invoke-direct {v7, v9, v10, v10, v11}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;->TypeC:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;

    const/4 v9, 0x5

    new-array v9, v9, [Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;->$VALUES:[Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;->id:I

    .line 3
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;->$VALUES:[Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;

    return-object v0
.end method
