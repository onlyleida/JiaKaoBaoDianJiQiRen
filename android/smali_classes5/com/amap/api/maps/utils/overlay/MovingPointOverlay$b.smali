.class Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;


# direct methods
.method private constructor <init>(Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$b;->a:Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$b;-><init>(Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;)V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "MoveSmoothThread"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method
