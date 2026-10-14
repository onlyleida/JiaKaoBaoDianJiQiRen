.class public Lf/a/a/c/a/c/c;
.super Lcn/mucang/android/jiakaoyi/engine/init/a;
.source "SourceFile"


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/mapcollect/c/h;

.field private final b:Lcn/mucang/android/jiakaoyi/engine/f/b;

.field private final c:Lcn/mucang/android/jiakaoyi/engine/f/a;

.field private d:Lf/a/a/c/a/c/d;

.field private e:Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;

.field private final f:Lcn/mucang/android/jiakaoyi/engine/i/a;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/engine/f/b;Lcn/mucang/android/jiakaoyi/engine/f/a;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/engine/f/b;",
            "Lcn/mucang/android/jiakaoyi/engine/f/a;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/engine/init/EngineState;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lcn/mucang/android/jiakaoyi/engine/init/a;-><init>(Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    .line 2
    new-instance p3, Lf/a/a/c/a/c/c$a;

    invoke-direct {p3, p0}, Lf/a/a/c/a/c/c$a;-><init>(Lf/a/a/c/a/c/c;)V

    iput-object p3, p0, Lf/a/a/c/a/c/c;->f:Lcn/mucang/android/jiakaoyi/engine/i/a;

    .line 3
    iput-object p1, p0, Lf/a/a/c/a/c/c;->b:Lcn/mucang/android/jiakaoyi/engine/f/b;

    .line 4
    iput-object p2, p0, Lf/a/a/c/a/c/c;->c:Lcn/mucang/android/jiakaoyi/engine/f/a;

    .line 5
    sget-object p1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/x0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/x0$a;

    const-wide/16 p2, 0x0

    invoke-static {p2, p3}, Lcn/mucang/jiakaoyi/uilib/s/j;->e(J)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/x0$a;->a(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/mapcollect/render/f;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/mapcollect/c/h;

    iput-object p1, p0, Lf/a/a/c/a/c/c;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/h;

    .line 6
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->j()V

    .line 7
    invoke-virtual {p0}, Lf/a/a/c/a/c/c;->initEngine()V

    .line 8
    new-instance p2, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/c;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/c/h;->x:Lcn/mucang/android/jiakaoyi/signal/i/a;

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/i/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/i/b;->c()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object p1

    invoke-direct {p2, p1}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lf/a/a/c/a/c/c;)Lf/a/a/c/a/c/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lf/a/a/c/a/c/c;->d:Lf/a/a/c/a/c/d;

    return-object p0
.end method


# virtual methods
.method protected createEngine()Lcn/mucang/android/jiakaoyi/engine/c;
    .locals 5

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/c;

    iget-object v1, p0, Lf/a/a/c/a/c/c;->e:Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;

    iget-object v2, p0, Lf/a/a/c/a/c/c;->b:Lcn/mucang/android/jiakaoyi/engine/f/b;

    iget-object v3, p0, Lf/a/a/c/a/c/c;->c:Lcn/mucang/android/jiakaoyi/engine/f/a;

    iget-object v4, p0, Lf/a/a/c/a/c/c;->f:Lcn/mucang/android/jiakaoyi/engine/i/a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/engine/c;-><init>(Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;Lcn/mucang/android/jiakaoyi/engine/f/b;Lcn/mucang/android/jiakaoyi/engine/f/a;Lcn/mucang/android/jiakaoyi/engine/i/a;)V

    return-object v0
.end method

.method public initEngine()V
    .locals 9

    .line 1
    new-instance v0, Lf/a/a/c/a/c/d;

    iget-object v1, p0, Lf/a/a/c/a/c/c;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/h;

    invoke-direct {v0, v1}, Lf/a/a/c/a/c/d;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/c/h;)V

    iput-object v0, p0, Lf/a/a/c/a/c/c;->d:Lf/a/a/c/a/c/d;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;

    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->B2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/d;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;

    move-result-object v4

    iget-object v5, p0, Lf/a/a/c/a/c/c;->d:Lf/a/a/c/a/c/d;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;Lcn/mucang/android/jiakaoyi/engine/i/c;ZZZ)V

    iput-object v0, p0, Lf/a/a/c/a/c/c;->e:Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;

    .line 3
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->initEngine()V

    return-void
.end method
