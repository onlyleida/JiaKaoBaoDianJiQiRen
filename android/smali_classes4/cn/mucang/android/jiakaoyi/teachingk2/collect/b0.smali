.class public Lcn/mucang/android/jiakaoyi/teachingk2/collect/b0;
.super Lcn/mucang/android/jiakaoyi/engine/init/a;
.source "SourceFile"


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

.field private b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/c0;

.field private final c:Lcn/mucang/android/jiakaoyi/engine/f/b;

.field private final d:Lcn/mucang/android/jiakaoyi/engine/f/a;

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
    new-instance p3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/b0$a;

    invoke-direct {p3, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/b0$a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/b0;)V

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/b0;->f:Lcn/mucang/android/jiakaoyi/engine/i/a;

    .line 3
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/b0;->c:Lcn/mucang/android/jiakaoyi/engine/f/b;

    .line 4
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/b0;->d:Lcn/mucang/android/jiakaoyi/engine/f/a;

    .line 5
    sget-object p1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/x0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/x0$a;

    const-wide/16 p2, 0x0

    invoke-static {p2, p3}, Lcn/mucang/jiakaoyi/uilib/s/j;->e(J)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/x0$a;->a(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/mapcollect/render/f;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/b0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    .line 6
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->j()V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/b0;->initEngine()V

    .line 8
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/c;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/b0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->v:Lcn/mucang/android/jiakaoyi/signal/i/a;

    check-cast p2, Lcn/mucang/android/jiakaoyi/signal/i/b;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/i/b;->c()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object p2

    invoke-direct {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/collect/b0;)Lcn/mucang/android/jiakaoyi/teachingk2/collect/c0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/b0;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/c0;

    return-object p0
.end method


# virtual methods
.method protected createEngine()Lcn/mucang/android/jiakaoyi/engine/c;
    .locals 5

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/c;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/b0;->e:Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/b0;->c:Lcn/mucang/android/jiakaoyi/engine/f/b;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/b0;->d:Lcn/mucang/android/jiakaoyi/engine/f/a;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/b0;->f:Lcn/mucang/android/jiakaoyi/engine/i/a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/engine/c;-><init>(Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;Lcn/mucang/android/jiakaoyi/engine/f/b;Lcn/mucang/android/jiakaoyi/engine/f/a;Lcn/mucang/android/jiakaoyi/engine/i/a;)V

    return-object v0
.end method

.method public destroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->destroy()V

    return-void
.end method

.method public initEngine()V
    .locals 10

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/c0;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/b0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/api/citycode/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/c0;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/c/j;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/b0;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/c0;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;

    sget-object v4, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/d;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;

    move-result-object v5

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/b0;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/c0;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;Lcn/mucang/android/jiakaoyi/engine/i/c;ZZZ)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/b0;->e:Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;

    .line 3
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->initEngine()V

    return-void
.end method
