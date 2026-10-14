.class public final Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u000f\u001a\u00020\nJ\u0006\u0010\u0010\u001a\u00020\nJ\u0006\u0010\u0011\u001a\u00020\nJ\u0006\u0010\u0012\u001a\u00020\nJ\u0006\u0010\u0013\u001a\u00020\nJ\u0006\u0010\u0014\u001a\u00020\nJ\u0018\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachController;",
        "",
        "()V",
        "preChecker",
        "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AssistTeachPreChecker;",
        "routeManager",
        "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/TeachRouteManager;",
        "teachManager",
        "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;",
        "exit",
        "",
        "handleEvent",
        "",
        "event",
        "Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;",
        "sendPath",
        "showLastTeach",
        "start",
        "startEngine",
        "stop",
        "stopEngine",
        "unitySetStatus",
        "state",
        "",
        "data",
        "",
        "teachbase_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/z;

.field private final b:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;

.field private final c:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/z;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachController$preChecker$1;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachController$preChecker$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachController;)V

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/z;-><init>(ZLkotlin/jvm/b/l;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachController;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/z;

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/y;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/y;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/y;->c()Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachController;->b:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;

    .line 4
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachController$teachManager$1;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachController$teachManager$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachController;)V

    invoke-direct {v1, v0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;Lkotlin/jvm/b/a;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachController;->c:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;

    return-void
.end method

.method public static final synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachController;)Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachController;->c:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;

    return-object p0
.end method


# virtual methods
.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachController;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/z;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/z;->e()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachController;->c:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->e()V

    return-void
.end method

.method public final c(Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachController;->c:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->m(Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;)Z

    move-result p1

    return p1
.end method

.method public final d()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/y;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/y;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/y;->b()Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/f;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/f;->e()Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachController;->c:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/y;->b()Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/f;->e()Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->O(Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)V

    return-void
.end method

.method public final e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachController;->c:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->T()V

    return-void
.end method

.method public final f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachController;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/z;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/z;->d()V

    return-void
.end method

.method public final g()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachController;->h()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachController;->c:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->N()V

    return-void
.end method

.method public final h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachController;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/z;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/z;->e()V

    return-void
.end method

.method public final i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachController;->c:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->X()V

    return-void
.end method

.method public final j(ILjava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->CheckRoute:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->getType()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 2
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    const-string v1, "index"

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v0, :cond_1

    const/4 p2, 0x1

    :cond_1
    :goto_0
    if-eqz p2, :cond_4

    .line 4
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result p1

    .line 5
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachController;->b:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->h(I)V

    goto :goto_1

    .line 6
    :cond_2
    sget-object p2, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->CheckType:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->getType()I

    move-result p2

    if-ne p1, p2, :cond_3

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachController;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/z;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/z;->c()V

    goto :goto_1

    .line 8
    :cond_3
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachController;->c:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->Y(I)V

    :cond_4
    :goto_1
    return-void
.end method
