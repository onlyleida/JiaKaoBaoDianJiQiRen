.class public Lcn/mucang/android/jiakaoyi/k3setting/exam/h1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;

.field private final b:Lcn/mucang/android/jiakaoyi/framework/h/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/c<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcn/mucang/android/jiakaoyi/engine/model/Deduct;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;

.field private g:Z

.field private final h:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/d;Ljava/util/List;Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;Ljava/util/Map;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;Lcn/mucang/android/jiakaoyi/framework/h/c;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/d;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcn/mucang/android/jiakaoyi/engine/model/Deduct;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;",
            "Lcn/mucang/android/jiakaoyi/framework/h/c<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/k3setting/exam/h1$a;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/h1$a;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/exam/h1;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/h1;->h:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;

    .line 3
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/h1;->a:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;

    .line 4
    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/h1;->b:Lcn/mucang/android/jiakaoyi/framework/h/c;

    .line 5
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/h1;->c:Ljava/util/List;

    .line 6
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/h1;->d:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    .line 7
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/h1;->e:Ljava/util/Map;

    .line 8
    iput-boolean p7, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/h1;->g:Z

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/k3setting/exam/h1;)Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/h1;->a:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;

    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/h1;->f:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/h1;->c:Ljava/util/List;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/h1;->d:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/h1;->h:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/h1;->e:Ljava/util/Map;

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/h1;->b:Lcn/mucang/android/jiakaoyi/framework/h/c;

    iget-boolean v7, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/h1;->g:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;Ljava/util/Map;Lcn/mucang/android/jiakaoyi/framework/h/c;Z)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/h1;->f:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/h1;->a:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/h1;->c:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;->onStart(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/h1;->f:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->start()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/h1;->f:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;->stop()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/h1;->f:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam;

    :cond_0
    return-void
.end method
