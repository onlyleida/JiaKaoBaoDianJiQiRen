.class public Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;
.super Lcn/mucang/android/jiakaoyi/engine/init/a;
.source "SourceFile"


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

.field private b:Lcn/mucang/android/jiakaoyi/teachingk2/t0/c;

.field private final c:Lcn/mucang/android/jiakaoyi/engine/f/b;

.field private final d:Lcn/mucang/android/jiakaoyi/engine/f/a;

.field private e:Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;

.field private final f:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;

.field private final h:Ljava/util/Map;
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

.field private final i:Ljava/util/Map;
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

.field private final j:I

.field private final k:Lcn/mucang/android/jiakaoyi/engine/i/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/engine/f/b;Lcn/mucang/android/jiakaoyi/engine/f/a;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;Ljava/util/Map;Ljava/util/Map;I)V
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
            ">;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p4}, Lcn/mucang/android/jiakaoyi/engine/init/a;-><init>(Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    .line 2
    new-instance p4, Lcn/mucang/android/jiakaoyi/teachingk2/t0/b$a;

    invoke-direct {p4, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/t0/b$a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;)V

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;->k:Lcn/mucang/android/jiakaoyi/engine/i/a;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;->c:Lcn/mucang/android/jiakaoyi/engine/f/b;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;->d:Lcn/mucang/android/jiakaoyi/engine/f/a;

    .line 5
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;->f:Lcn/mucang/android/jiakaoyi/framework/h/b;

    .line 6
    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;->g:Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;

    .line 7
    iput-object p7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;->h:Ljava/util/Map;

    .line 8
    iput-object p8, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;->i:Ljava/util/Map;

    .line 9
    iput p9, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;->j:I

    .line 10
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    const-wide/16 p4, 0x0

    invoke-static {p4, p5}, Lcn/mucang/jiakaoyi/uilib/s/j;->f(J)J

    move-result-wide p4

    long-to-int p5, p4

    invoke-static {p2, p3, p5}, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->k(JI)Z

    .line 11
    sget-object p2, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/x0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/x0$a;

    invoke-interface {p2, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/x0$a;->a(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/mapcollect/render/f;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    .line 12
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/b/b/e;->a(Lcn/mucang/android/jiakaoyi/mapcollect/c/j;)V

    .line 13
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;->initEngine()V

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;)Lcn/mucang/android/jiakaoyi/teachingk2/t0/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;->b:Lcn/mucang/android/jiakaoyi/teachingk2/t0/c;

    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;->b:Lcn/mucang/android/jiakaoyi/teachingk2/t0/c;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;->h:Ljava/util/Map;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;->i:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/t0/c;->b(Lcn/mucang/android/jiakaoyi/mapcollect/c/j;Ljava/util/Map;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method protected createEngine()Lcn/mucang/android/jiakaoyi/engine/c;
    .locals 5

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/c;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;->e:Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;->c:Lcn/mucang/android/jiakaoyi/engine/f/b;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;->d:Lcn/mucang/android/jiakaoyi/engine/f/a;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;->k:Lcn/mucang/android/jiakaoyi/engine/i/a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/engine/c;-><init>(Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;Lcn/mucang/android/jiakaoyi/engine/f/b;Lcn/mucang/android/jiakaoyi/engine/f/a;Lcn/mucang/android/jiakaoyi/engine/i/a;)V

    return-object v0
.end method

.method public initEngine()V
    .locals 9

    .line 1
    new-instance v8, Lcn/mucang/android/jiakaoyi/teachingk2/t0/c;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/api/citycode/c;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;->h:Ljava/util/Map;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;->f:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;->g:Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;->i:Ljava/util/Map;

    iget v7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;->j:I

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/t0/c;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/c/j;Ljava/lang/String;Ljava/util/Map;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;Ljava/util/Map;I)V

    iput-object v8, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;->b:Lcn/mucang/android/jiakaoyi/teachingk2/t0/c;

    .line 2
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;->j:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    const/4 v5, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/d;->a()Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;->getDeductVoice()Z

    move-result v0

    move v5, v0

    .line 4
    :goto_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/d;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;

    move-result-object v3

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;->b:Lcn/mucang/android/jiakaoyi/teachingk2/t0/c;

    const/4 v6, 0x1

    const/4 v7, 0x1

    new-instance v8, Lcn/mucang/android/jiakaoyi/examk2/param/K2ExamParam;

    invoke-direct {v8}, Lcn/mucang/android/jiakaoyi/examk2/param/K2ExamParam;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;Lcn/mucang/android/jiakaoyi/engine/i/c;ZZZLcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;->e:Lcn/mucang/android/jiakaoyi/engine/processor/exam/c;

    .line 5
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->initEngine()V

    return-void
.end method
