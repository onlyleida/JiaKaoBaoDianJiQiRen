.class public Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0$a;,
        Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0$b;
    }
.end annotation


# static fields
.field private static final d:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0$b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0;->d:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0;->a:Ljava/util/Map;

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/r;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/r;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    .line 4
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/a1/a;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/a1/a;-><init>()V

    const-string v2, "212"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/a1/a;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/a1/a;-><init>()V

    const-string v2, "210"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/e1/a;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/e1/a;-><init>()V

    const-string v2, "213"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/z0/a;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/z0/a;-><init>()V

    const-string v2, "214"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;-><init>()V

    const-string v2, "215"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0$b;

    invoke-interface {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0$b;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0$b;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, p1, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0$b;->b(Lcn/mucang/android/jiakaoyi/signal/c/e;Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/OperateResultModel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b(Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;)V
    .locals 8

    .line 1
    iget v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;->c:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xfa0

    if-ne v0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0xfa1

    if-ne v0, v4, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 2
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u57fa\u7840\u64cd\u4f5c\u4e8b\u4ef6:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    if-eqz v3, :cond_3

    .line 3
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0;->a:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0$b;

    invoke-interface {v6}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0$b;->isValid()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 5
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0$b;

    invoke-interface {v5, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0$b;->a(Z)V

    goto :goto_2

    .line 6
    :cond_3
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0;->a:Ljava/util/Map;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;->id:Ljava/lang/String;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0$b;

    if-eqz p1, :cond_5

    if-eqz v3, :cond_4

    .line 7
    invoke-interface {p1, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0$b;->a(Z)V

    goto :goto_3

    :cond_4
    if-eqz v0, :cond_5

    .line 8
    invoke-interface {p1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0$b;->a(Z)V

    :cond_5
    :goto_3
    return-void
.end method

.method public static synthetic c(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0;Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0;->b(Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;)V

    return-void
.end method

.method private synthetic d(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    return-void
.end method

.method private synthetic f(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/t;

    invoke-direct {v1, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/t;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0;Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0$b;

    invoke-interface {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0$b;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0$b;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0$b;->a(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public synthetic e(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0;->d(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0;->c:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/error/GlobalChecker;->h(Z)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    const-class v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->j(Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0;->c:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/s;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/s;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0;)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;->e(Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    .line 5
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->e:Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->g()V

    return-void
.end method

.method public synthetic h(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0;->f(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    return-void
.end method

.method public synthetic n()V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/z;->a(Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0$a;)V

    return-void
.end method

.method public o()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/error/GlobalChecker;->h(Z)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0;->c:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;->f()V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    const-class v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->l(Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;)V

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0;->i()V

    .line 5
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->e:Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->o()V

    return-void
.end method
