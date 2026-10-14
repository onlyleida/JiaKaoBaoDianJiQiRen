.class public Lcom/autonavi/amap/mapcore/MsgProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mDelegate:Lcom/amap/api/mapcore/util/o6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/amap/api/mapcore/util/o6;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/o6;-><init>()V

    sput-object v0, Lcom/autonavi/amap/mapcore/MsgProcessor;->mDelegate:Lcom/amap/api/mapcore/util/o6;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native nativeInit(Landroid/content/Context;)I
.end method

.method public static nativeInitInfo(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/autonavi/amap/mapcore/MsgProcessor;->mDelegate:Lcom/amap/api/mapcore/util/o6;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/amap/api/mapcore/util/o6;->a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/autonavi/amap/mapcore/MsgProcessor;->nativeInit(Landroid/content/Context;)I

    return-void
.end method

.method public static nativeMsgProcessor(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/amap/mapcore/MsgProcessor;->mDelegate:Lcom/amap/api/mapcore/util/o6;

    invoke-virtual {v0, p0, p1}, Lcom/amap/api/mapcore/util/o6;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
