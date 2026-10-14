.class public Lf/a/a/c/a/c/f;
.super Lcn/mucang/android/jiakaoyi/engine/init/a;
.source "SourceFile"


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/mapcollect/c/h;

.field private final b:Lcn/mucang/android/jiakaoyi/engine/f/b;

.field private final c:Lcn/mucang/android/jiakaoyi/engine/f/a;

.field private final d:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private h:Lf/a/a/c/a/c/g;

.field private i:Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;

.field private final j:Lcn/mucang/android/jiakaoyi/engine/i/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/engine/f/b;Lcn/mucang/android/jiakaoyi/engine/f/a;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/mucang/android/jiakaoyi/engine/f/b;",
            "Lcn/mucang/android/jiakaoyi/engine/f/a;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/engine/init/EngineState;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;",
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            ">;>;",
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p4}, Lcn/mucang/android/jiakaoyi/engine/init/a;-><init>(Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    .line 2
    new-instance p4, Lf/a/a/c/a/c/f$a;

    invoke-direct {p4, p0}, Lf/a/a/c/a/c/f$a;-><init>(Lf/a/a/c/a/c/f;)V

    iput-object p4, p0, Lf/a/a/c/a/c/f;->j:Lcn/mucang/android/jiakaoyi/engine/i/a;

    .line 3
    iput-object p2, p0, Lf/a/a/c/a/c/f;->b:Lcn/mucang/android/jiakaoyi/engine/f/b;

    .line 4
    iput-object p3, p0, Lf/a/a/c/a/c/f;->c:Lcn/mucang/android/jiakaoyi/engine/f/a;

    .line 5
    iput-object p5, p0, Lf/a/a/c/a/c/f;->d:Lcn/mucang/android/jiakaoyi/framework/h/b;

    .line 6
    iput-object p6, p0, Lf/a/a/c/a/c/f;->e:Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;

    .line 7
    iput-object p7, p0, Lf/a/a/c/a/c/f;->f:Ljava/util/Map;

    .line 8
    iput-object p8, p0, Lf/a/a/c/a/c/f;->g:Ljava/util/Map;

    .line 9
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    const-wide/16 p4, 0x0

    invoke-static {p4, p5}, Lcn/mucang/jiakaoyi/uilib/s/j;->f(J)J

    move-result-wide p4

    long-to-int p5, p4

    invoke-static {p2, p3, p5}, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->k(JI)Z

    .line 10
    sget-object p2, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/x0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/x0$a;

    invoke-interface {p2, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/x0$a;->a(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/mapcollect/render/f;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/mapcollect/c/h;

    iput-object p1, p0, Lf/a/a/c/a/c/f;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/h;

    .line 11
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/b/b/c;->a(Lcn/mucang/android/jiakaoyi/mapcollect/c/h;)V

    .line 12
    invoke-virtual {p0}, Lf/a/a/c/a/c/f;->initEngine()V

    return-void
.end method

.method static synthetic a(Lf/a/a/c/a/c/f;)Lf/a/a/c/a/c/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lf/a/a/c/a/c/f;->h:Lf/a/a/c/a/c/g;

    return-object p0
.end method


# virtual methods
.method protected createEngine()Lcn/mucang/android/jiakaoyi/engine/c;
    .locals 5

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/c;

    iget-object v1, p0, Lf/a/a/c/a/c/f;->i:Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;

    iget-object v2, p0, Lf/a/a/c/a/c/f;->b:Lcn/mucang/android/jiakaoyi/engine/f/b;

    iget-object v3, p0, Lf/a/a/c/a/c/f;->c:Lcn/mucang/android/jiakaoyi/engine/f/a;

    iget-object v4, p0, Lf/a/a/c/a/c/f;->j:Lcn/mucang/android/jiakaoyi/engine/i/a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/engine/c;-><init>(Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;Lcn/mucang/android/jiakaoyi/engine/f/b;Lcn/mucang/android/jiakaoyi/engine/f/a;Lcn/mucang/android/jiakaoyi/engine/i/a;)V

    return-object v0
.end method

.method public initEngine()V
    .locals 15

    .line 1
    new-instance v6, Lf/a/a/c/a/c/g;

    iget-object v1, p0, Lf/a/a/c/a/c/f;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/h;

    iget-object v2, p0, Lf/a/a/c/a/c/f;->f:Ljava/util/Map;

    iget-object v3, p0, Lf/a/a/c/a/c/f;->d:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iget-object v4, p0, Lf/a/a/c/a/c/f;->e:Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;

    iget-object v5, p0, Lf/a/a/c/a/c/f;->g:Ljava/util/Map;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lf/a/a/c/a/c/g;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/c/h;Ljava/util/Map;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;Ljava/util/Map;)V

    iput-object v6, p0, Lf/a/a/c/a/c/f;->h:Lf/a/a/c/a/c/g;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;

    sget-object v8, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->B2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/d;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;

    move-result-object v9

    iget-object v10, p0, Lf/a/a/c/a/c/f;->h:Lf/a/a/c/a/c/g;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lf/a/a/c/a/c/b;

    invoke-interface {v1}, Lf/a/a/c/a/c/b;->b()Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;

    move-result-object v14

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v14}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;Lcn/mucang/android/jiakaoyi/engine/i/c;ZZZLcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;)V

    iput-object v0, p0, Lf/a/a/c/a/c/f;->i:Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;

    .line 3
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->initEngine()V

    return-void
.end method
