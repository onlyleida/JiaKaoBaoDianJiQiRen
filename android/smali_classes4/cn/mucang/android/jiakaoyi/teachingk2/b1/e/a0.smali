.class public Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/unity/c/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/unity/c/c<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityPageModel;",
        ">;"
    }
.end annotation


# static fields
.field public static a:Lcn/mucang/android/jiakaoyi/engine/model/KeMu; = null

.field public static b:Z = false

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0;->c:Ljava/util/Map;

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0;-><init>()V

    const-string v2, "BaseOperatePanel"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;-><init>()V

    const-string v2, "TrainPanel"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/w0;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/w0;-><init>()V

    const-string v2, "ExamPanel"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/y0;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/y0;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V

    const-string v2, "MainPanel"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/x0;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/x0;-><init>()V

    const-string v2, "PartIdentityPanel"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;-><init>()V

    const-string v2, "AutoTeachPanel"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/y0;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K3:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/y0;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V

    const-string v2, "K3MainPanel"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j;-><init>()V

    const-string v2, "K3LightTrainPanel"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/k;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/k;-><init>()V

    const-string v2, "K3ReadyPanel"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/l;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/l;-><init>()V

    const-string v2, "K3TrainPanel"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;-><init>()V

    const-string v2, "K3ExamPanel"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;-><init>()V

    const-string v2, "FirstTrainPanel"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;-><init>()V

    const-string v2, "HelpTeachPanel"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0;->c:Ljava/util/Map;

    const-string v1, "ExamPanel"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/w0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/w0;->b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static c()Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0;->c:Ljava/util/Map;

    const-string v1, "AutoTeachPanel"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;

    return-object v0
.end method

.method public static d()Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0;->c:Ljava/util/Map;

    const-string v1, "HelpTeachPanel"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;

    return-object v0
.end method

.method public static e()Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0;->c:Ljava/util/Map;

    const-string v1, "K3ExamPanel"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;

    return-object v0
.end method

.method public static f()Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j;
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0;->c:Ljava/util/Map;

    const-string v1, "K3LightTrainPanel"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j;

    return-object v0
.end method

.method public static g()Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/l;
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0;->c:Ljava/util/Map;

    const-string v1, "K3TrainPanel"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/l;

    return-object v0
.end method

.method public static h()Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0;->c:Ljava/util/Map;

    const-string v1, "TrainPanel"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;

    return-object v0
.end method

.method public static i()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0;->b:Z

    return v0
.end method

.method private synthetic j(Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityPageModel;

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0;->l(Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityPageModel;)V

    return-void
.end method

.method private l(Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityPageModel;)V
    .locals 6

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0$a;

    if-nez v4, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    iget-object v5, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityPageModel;->state:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityPageModel;->action:I

    if-ne v1, v3, :cond_2

    .line 6
    invoke-interface {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0$a;->g()V

    goto :goto_0

    :cond_2
    if-ne v1, v2, :cond_0

    .line 7
    invoke-interface {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0$a;->o()V

    goto :goto_0

    .line 8
    :cond_3
    iget v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityPageModel;->action:I

    const-string v1, "VideoPanel"

    if-ne v0, v3, :cond_5

    .line 9
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityPageModel;->state:Ljava/lang/String;

    const-string v2, "TrainInfoPanel"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointHandler;->f()V

    .line 11
    :cond_4
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->a:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityPageModel;->state:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->Q(Ljava/lang/String;)V

    .line 12
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityPageModel;->state:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 13
    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/error/GlobalChecker;->i(Z)V

    goto :goto_1

    :cond_5
    if-ne v0, v2, :cond_6

    .line 14
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->a:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityPageModel;->state:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->S(Ljava/lang/String;)V

    .line 15
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityPageModel;->state:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    .line 16
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/error/GlobalChecker;->i(Z)V

    :cond_6
    :goto_1
    return-void
.end method

.method public static m()V
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0$a;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/c;

    invoke-direct {v2, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/c;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0$a;)V

    invoke-static {v2}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static n()Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0;->h()Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/TrainPage;->b()Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;Landroid/app/Activity;)Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityPageModel;",
            ">;",
            "Landroid/app/Activity;",
            ")",
            "Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityPageModel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    move-object v0, p2

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityPageModel;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityPageModel;->type:I

    if-eqz v0, :cond_0

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityPageModel;

    iget p2, p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityPageModel;->type:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 2
    :cond_0
    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/g;

    invoke-direct {p2, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/g;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0;Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;)V

    invoke-static {p2}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    .line 3
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/socket/u;->q(Ljava/lang/String;)Z

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic k(Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0;->j(Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;)V

    return-void
.end method
