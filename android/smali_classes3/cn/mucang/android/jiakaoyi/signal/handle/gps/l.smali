.class public Lcn/mucang/android/jiakaoyi/signal/handle/gps/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/signal/handle/gps/l$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcn/mucang/android/jiakaoyi/signal/handle/gps/l$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcn/mucang/android/jiakaoyi/signal/handle/gps/l$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcn/mucang/android/jiakaoyi/signal/i/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/l;->a:Ljava/lang/ThreadLocal;

    .line 2
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/l;->b:Ljava/lang/ThreadLocal;

    .line 3
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/l;->c:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 7

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/l;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/handle/gps/l$b;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/handle/gps/l$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/l$b;-><init>(Lcn/mucang/android/jiakaoyi/signal/handle/gps/l$a;)V

    .line 3
    :cond_0
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/signal/handle/gps/l$b;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v2, :cond_1

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v4, v1, Lcn/mucang/android/jiakaoyi/signal/handle/gps/l$b;->a:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    .line 4
    :cond_1
    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;->c(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    iput-object p1, v1, Lcn/mucang/android/jiakaoyi/signal/handle/gps/l$b;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 5
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p0

    iget-wide p0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide p0, v1, Lcn/mucang/android/jiakaoyi/signal/handle/gps/l$b;->a:J

    .line 6
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 7
    iget-object p0, v1, Lcn/mucang/android/jiakaoyi/signal/handle/gps/l$b;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-object p0
.end method

.method public static b(Landroid/location/Location;)Lcn/mucang/android/jiakaoyi/signal/i/a;
    .locals 7

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/l;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/i/a;

    if-eqz v1, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpl-double v6, v2, v4

    if-lez v6, :cond_1

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    cmpl-double v6, v2, v4

    if-lez v6, :cond_1

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/i/b;

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->from(Landroid/location/Location;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object p0

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/signal/i/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1
    return-object v1
.end method

.method public static c(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 7

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/l;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/handle/gps/l$b;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/handle/gps/l$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/l$b;-><init>(Lcn/mucang/android/jiakaoyi/signal/handle/gps/l$a;)V

    .line 3
    :cond_0
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/signal/handle/gps/l$b;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v2, :cond_1

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v4, v1, Lcn/mucang/android/jiakaoyi/signal/handle/gps/l$b;->a:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;->b()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    iput-object p1, v1, Lcn/mucang/android/jiakaoyi/signal/handle/gps/l$b;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 5
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p0

    iget-wide p0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide p0, v1, Lcn/mucang/android/jiakaoyi/signal/handle/gps/l$b;->a:J

    .line 6
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 7
    iget-object p0, v1, Lcn/mucang/android/jiakaoyi/signal/handle/gps/l$b;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-object p0
.end method
