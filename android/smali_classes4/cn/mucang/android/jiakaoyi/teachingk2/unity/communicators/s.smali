.class public Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/s$b;
    }
.end annotation


# instance fields
.field public final a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/x;

.field public final b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/x;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/x;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/s;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/x;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/s;->b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;

    .line 5
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->s:Landroidx/lifecycle/z;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/o;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/o;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/a0;)V

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/s$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/s;-><init>()V

    return-void
.end method

.method public static b()Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/s;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/s$b;->a()Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/s;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne p0, v0, :cond_0

    .line 2
    new-instance p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TraceUploadModel;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TraceUploadModel;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TraceUploadModel;->state:I

    .line 4
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0;->b()Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0;->n()Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/s;->b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;

    return-object v0
.end method

.method public f()V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0;->m()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/s;->b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;->h()V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;->All:Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/a;->b(Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;)V

    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/r;->c()V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/y;->f()V

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager;->j()V

    .line 4
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v0

    .line 5
    instance-of v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity;

    if-nez v1, :cond_0

    instance-of v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/s;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/x;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/x;->a()V

    return-void
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/s;->b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;->g()V

    return-void
.end method
